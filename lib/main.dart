import 'package:app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/service_locator.dart' as di;
import 'core/utils/app_routes.dart';
import 'core/utils/hive_init.dart';
import 'core/utils/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initial dependancy injection
  await di.init();

  // initail hive DB
  await hiveInit();

  // State Observer
  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: const [
        // write your bloc providor
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: const Placeholder(),
        routes: appRoutes(),
        initialRoute: 'home',
      ),
    );
  }
}
