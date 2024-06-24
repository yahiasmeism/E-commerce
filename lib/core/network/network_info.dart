import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract interface class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnection _connection = InternetConnection();

  @override
  Future<bool> get isConnected async {
    return _connection.hasInternetAccess;
  }
}
