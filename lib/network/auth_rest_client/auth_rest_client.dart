import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:livedata_app/network/config/env.dart';
import 'package:livedata_app/models/data_models.dart';
import 'package:livedata_app/models/responses/base_response/base_response.dart';
part 'auth_rest_client.g.dart';

@RestApi(baseUrl: Env.apiUrl)
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio) = _AuthRestClient;

  @POST("/login")
  Future<BaseResponse<LoginResponse>> login({
    @Body() required LoginRequest loginRequest,
  });

  @POST("/register")
  Future<BaseResponse<LoginResponse>> register({
    @Body() required RegisterRequest registerRequest,
  });
}
