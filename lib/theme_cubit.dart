import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handling_theming_flutter_app/cache_helper.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  static ThemeCubit get(BuildContext context) =>
      BlocProvider.of<ThemeCubit>(context);
  static late ThemeMode appMode;

  static Future<void> initMode()async{
    appMode = await CacheHelper.getAppMode();
  }
  setLightMode() async {
    appMode = ThemeMode.light;
    await CacheHelper.saveAppMode(mode: appMode).then((value) {
      emit(LightModeState());
    });
  }

  setDarkMode() async {
    appMode = ThemeMode.dark;
    await CacheHelper.saveAppMode(mode: appMode);
    emit(DarkModeState());
  }
}
