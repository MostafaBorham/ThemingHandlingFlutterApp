import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handling_theming_flutter_app/theme_cubit.dart';
import 'package:handling_theming_flutter_app/themes.dart';
import 'screens/home_screen.dart';
import 'screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'My App',
          debugShowCheckedModeBanner: false,
          theme: AppThemes.getLightModeTheme(),
          darkTheme: AppThemes.getDarkModeTheme(),
          themeMode: ThemeCubit.appMode,
          initialRoute: 'splash',
          routes: {
            'splash': (context) => SplashScreen(),
            'home': (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
