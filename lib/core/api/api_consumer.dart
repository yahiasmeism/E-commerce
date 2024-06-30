abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? query,
    String? token,
  });

  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
    String? token,
  });

  Future<dynamic> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
    String? token,
  });

  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
    String? token,
  });

  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? query,
    String? token,
  });
}
