import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofitapp/modal/usermodal.dart';
part 'service.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/users")
  Future<userModal> getUser();
}
