import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yinni_mobile/features/main/presentation/blocs/home_cubit.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return BlocProvider<HomeCubit>(
      create: (_) => HomeCubit.create(context),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              color: Colors.white,
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Stack(
                children: [
                  SafeArea(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: BlocListener<HomeCubit, HomeState>(
                        listener: (context, state) {
                          if (state is LoadedHomeState) {
                            //do something
                          }
                          if (state is ErrorHomeState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(state.error.message ?? "Something went wrong")),
                            );
                          }
                        },
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            SizedBox(
                              height: 40,
                              width: constraints.maxWidth,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: constraints.maxWidth - 100,
                                    child: _inputField(
                                      t: t, 
                                      hint: "Search"
                                    ),
                                  )
                                ],
                              )
                            )
                          ],
                        )
                      ),
                    )
                  )
                ],
              )
            );
          },
        ),
      )
    );
  }


  Widget _inputField({
      required ThemeData t,
      required String hint,
      TextInputType? keyboardType,
      FormFieldValidator<String>? validator,
      FormFieldSetter<String>? onSaved,
      Iterable<String>? autofillHints,
      TextEditingController? controller
    }) {
  
      return TextFormField(
        style: t.textTheme.bodyLarge?.copyWith(
          color: Colors.grey.shade800,
        ),
        obscureText: false,
        keyboardType: keyboardType,
        validator: validator,
        onSaved: onSaved,
        autofillHints: autofillHints,
        enableSuggestions: true,
        autocorrect: true,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          filled: true,
          fillColor: Colors.white,
  
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 2,
          ),
  
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey, width: 0.7),
          ),
  
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: t.primaryColor, width: 1.2),
          ),
  
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent),
          ),
  
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.redAccent, width: 1.2),
          )
        ),
      );
    }
}

