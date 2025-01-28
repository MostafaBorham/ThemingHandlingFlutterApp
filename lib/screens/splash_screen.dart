import 'package:flutter/material.dart';
import 'package:handling_theming_flutter_app/app_text_styles.dart';
import 'package:handling_theming_flutter_app/theme_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        leading: IconButton(onPressed: () {
          ThemeCubit.appMode== ThemeMode.light? ThemeCubit.get(context).setDarkMode() : ThemeCubit.get(context).setLightMode();
        }, icon: Icon(Icons.switch_left)),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, 'home');
          }, icon: Icon(Icons.arrow_circle_right_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            FlutterLogo(
              size: 50,
              textColor: Colors.red,
            ),
            Text(
              'Flutter App',
              style: AppTextStyles.font40PrimaryBold(context),
            )
          ],
        ),
      ),
    );
  }
}