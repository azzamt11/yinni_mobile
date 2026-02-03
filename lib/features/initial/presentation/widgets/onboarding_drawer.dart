import 'package:flutter/material.dart';

class OnboardingDrawer extends StatelessWidget {
  final Animation<double> animation;
  final double height;

  const OnboardingDrawer({
    super.key,
    required this.animation,
    this.height = 330,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData t = Theme.of(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, _) {
          return Transform.translate(
            offset: Offset(
              0,
              height * (1 - animation.value),
            ),
            child: Container(
              height: height,
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 40,
                      height: 2,
                      margin: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Let\'s Shopping with Yinni...',
                    style: t.textTheme.titleLarge?.copyWith(color: t.primaryColor),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'assets/features/initial/shopping_basket.png',
                    height: 190,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        backgroundColor: Theme.of(context).primaryColor,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ),
                      child: Text(
                        "Get Started",
                        style: t.textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
