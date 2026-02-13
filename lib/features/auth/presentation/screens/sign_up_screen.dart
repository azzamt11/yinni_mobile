import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yinni_mobile/core/base/router/app_router.dart';
import 'package:yinni_mobile/core/common/widgets/app_input_field.dart';
import 'package:yinni_mobile/features/auth/presentation/blocs/auth_cubit.dart';


@RoutePage()
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  late AuthCubit _authCubit;
  bool _isCubitInitialized = false;

  String _name = '';
  String _email = '';
  String? _password = '';
  String _passwordConf = '';

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isCubitInitialized) {
      _authCubit = AuthCubit.create(context);
      _isCubitInitialized = true;
    }
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _passwordConfController.dispose();
    if (_isCubitInitialized) {
      _authCubit.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return BlocProvider<AuthCubit>.value(
      value: _authCubit,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/features/auth/bg_splash.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.white.withOpacity(0.3),
                          Colors.white.withOpacity(0.6),
                          Colors.white.withOpacity(0.9),
                          Colors.white,
                        ],
                        stops: const [0.0, 0.3, 0.55, 0.75, 1.0],
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: BlocListener<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (!mounted) return;
                        if (state is LoadedAuthState) {
                          ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                            SnackBar(content: Text("Please, sign in again")),
                          );
                          context.router.replaceAll([const SignInRoute()]);
                          return;
                        }
                        if (state is ErrorAuthState) {
                          ScaffoldMessenger.maybeOf(context)?.showSnackBar(
                            SnackBar(content: Text(state.error?.message ?? "Seomthing went wrong")),
                          );
                        }
                      },
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 50),
                            SizedBox(
                              height: max(constraints.maxHeight - 770, 170),
                              child: Center(
                                child: Image.asset(
                                  "assets/features/auth/ic_splash.png",
                                  height: 200,
                                  width: 200,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            _label("Name", t),
                            const SizedBox(height: 8),
                            AppInputField(
                              hint: "Name",
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (v) => _name = v!,
                              validator: (v) =>
                                  v == null || v.isEmpty ? "Name is required" : null,
                            ),
                            const SizedBox(height: 24),
                            _label("Email", t),
                            const SizedBox(height: 8),
                            AppInputField(
                              hint: "Email",
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (v) => _email = v!,
                              validator: (v) =>
                                  v == null || v.isEmpty ? "Email is required" : null,
                            ),
                            const SizedBox(height: 24),
                            _label("Password", t),
                            const SizedBox(height: 8),
                            AppInputField(
                              hint: "Password",
                              obscureText: true,
                              onSaved: (v) => _password = v!,
                              controller: _passwordController,
                              validator: (v) => v == null || v.length < 6
                                  ? "Minimum 6 characters"
                                  : v != _passwordConfController.text
                                  ? "Password does not match" 
                                  : null
                            ),
                            const SizedBox(height: 24),
                            _label("Password Confirmation", t),
                            const SizedBox(height: 8),
                            AppInputField(
                              hint: "Confirm Password",
                              obscureText: true,
                              onSaved: (v) => _passwordConf = v!,
                              controller: _passwordConfController,
                              validator: (v) => v == null || v.length < 6
                                  ? "Minimum 6 characters"
                                  : v != _passwordController.text
                                  ? "Password does not match" 
                                  : null
                            ),
                            const SizedBox(height: 36),
                            BlocBuilder<AuthCubit, AuthState>(
                              builder: (context, state) {
                                final isLoading = state is LoadingAuthState;
                                return SizedBox(
                                  width: double.infinity,
                                  height: 45,
                                  child: ElevatedButton(
                                    onPressed: isLoading ? null
                                    : () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        context.read<AuthCubit>().signUp(_email, _password ?? _passwordConf, _name);
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context).primaryColor,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                    ),
                                    child: isLoading ? Center(
                                      child: SizedBox(
                                        height: 25,
                                        width: 25,
                                        child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                                      )
                                    ) :
                                    Text(
                                      "Sign Up",
                                      style: t.textTheme.titleMedium
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 32),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "New to Yinni? ",
                                  style: t.textTheme.bodyLarge?.copyWith(color: Colors.black87),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.router.replace(SignInRoute());
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: t.textTheme.bodyLarge?.copyWith(color: t.primaryColor),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),
                    ),
                  )
                )
              ],
            );
          },
        ),
      )
    );
  }

  Widget _label(String text, ThemeData t) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: t.textTheme.bodyMedium?.copyWith(color: Colors.grey.shade800)
      ),
    );
  }

}
