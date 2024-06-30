import 'package:app/core/api/api_consumer.dart';
import 'package:app/core/api/dio_consumer.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Featurs - Home

  //Bloc

  //Use cases

  // Repository

  // Data sources

  //! ***************  Featurs - Authentication ***************

  //Bloc

  //Use cases

  // Repository

  // Data sources

  //! ***************  Featurs - Products ***************

  //Bloc

  //Use cases

  // Repository

  // Data sources

  //! ***************  Featurs - Cart ***************

  //Bloc

  //Use cases

  // Repository

  // Data sources

  //! ***************  Featurs - Orders ***************

  //Bloc

  //Use cases

  // Repository

  // Data sources

  ///****************************************************
  ///! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl()));

  ///! External
  sl.registerLazySingleton<Dio>(() => Dio());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );
}
