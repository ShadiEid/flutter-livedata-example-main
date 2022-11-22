/// Generated By XFlutter Cli.
///

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:livedata_app/models/responses/base_response/base_response.dart';
import 'package:livedata_app/network/config/logger.dart';
import 'package:livedata_app/events/bus_events.dart';

abstract class BaseRepository {
  /// calling request only if device connected to internet, else return null data response
  Future<BaseResponse<T>> getResponse<T>(Future<BaseResponse<T>> Function() request) async {
    bool isOnline = await isConnectingToInternet();
    if (isOnline) {
      final response = await request.call();
      if (response.statusCode == 401) {
        // handle Unauthorized Event
        eventBus.fire(const UnauthorizedEvent());
      }
      return response;
    } else {
      return BaseResponse<T>(
        success: false,
        message: "check_internet_connection".tr(),
        data: null,
      );
    }
  }

  /// handle request exceptions.
  Future<BaseResponse<T>> catchError<T>(e) async {
    Map<String, dynamic>? response;
    String? message;
    if (kDebugMode) logger(e.toString());
    try {
      if (e is DioError) {
        if (e.response != null && e.response!.data is Map) {
          response = e.response!.data as Map<String, dynamic>;
        }
        if (response != null) message = response['message'];
        message ??= e.message;
      } else {
        message = e.toString();
      }
    } catch (error) {
      if (kDebugMode) {
        logger(error.toString());
      }
    }
    return BaseResponse<T>(message: message, data: null, success: false);
  }
}

/// check if device connecting to internet (wifi or mobile-data)
Future<bool> isConnectingToInternet() async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi;
}