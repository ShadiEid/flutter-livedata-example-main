/// Generated By XFlutter Cli.
///
/// Crud For User model

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:livedata_app/network/config/env.dart';
import 'package:livedata_app/models/data_models.dart';
import 'package:livedata_app/models/responses/base_response/base_response.dart';
part 'user_rest_client.g.dart';

@RestApi(baseUrl: "${Env.apiUrl}/users")
abstract class UserRestClient {
  factory UserRestClient(Dio dio) = _UserRestClient;

  @POST("")
  Future<BaseResponse<User>> create({
    @Body() required User user,
  });

  @PUT("/{id}")
  Future<BaseResponse<User>> update({
    @Path() required String id,
    @Body() required User user,
  });

  @GET("")
  Future<BaseResponse<ListResponse<User>>> findAll({
    @Query("page") required int page,
    @Query("limit") int perPage = Env.perPage,
    @Query("search") String? query,
  });

  @GET("/{id}")
  Future<BaseResponse<User>> findOne({@Path() required String id});

  @DELETE("/{id}")
  Future<BaseResponse<dynamic>> delete({@Path() required String id});
}
