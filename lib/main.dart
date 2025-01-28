import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handling_theming_flutter_app/app_init.dart';
import 'package:handling_theming_flutter_app/theme_cubit.dart';

import 'cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await ThemeCubit.initMode();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit(),child: MyApp(),),
      ));
}
