import 'dart:io';
import 'package:dio/dio.dart';
import 'package:uzel_bilisim_task/app/detail/model/detail_request_model.dart';
import 'package:uzel_bilisim_task/app/detail/model/detail_response_model.dart';


abstract class IDetailService {
  IDetailService(this.dio);

  Future<DetailResponseModel?> getUserDevicesLog(DetailRequestModel model);
  final Dio dio;
}

class DetailService extends IDetailService {
  DetailService(Dio dio) : super(dio);

  @override
  Future<DetailResponseModel?> getUserDevicesLog(
      DetailRequestModel? model) async {
    final response = await dio.post(
      LogPath.PATH.rawValue,
      data: model,
      options: Options(contentType: Headers.jsonContentType),
    );

    if (response.statusCode == HttpStatus.ok) {
      return DetailResponseModel.fromJson(response.data);
    }

    return null;
  }
}

enum LogPath { PATH }

extension ServicePathExtension on LogPath {
  String get rawValue {
    switch (this) {
      case LogPath.PATH:
        return '/api/userdevicesloglist';
    }
  }
}
