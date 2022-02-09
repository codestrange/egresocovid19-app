import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';
import 'package:translator/translator.dart';

Future<Left<ErrorEntity, T>> catchMethod<T>(Object e) async {
  var errorCode = '0';
  var message = e.toString();
  switch (e.runtimeType) {
    case DioError:
      final resp = (e as DioError).response;
      if (resp != null &&
          resp.statusCode != null &&
          resp.statusMessage != null) {
        try {
          errorCode = resp.statusCode.toString();
          message = (resp.data as Map<String, dynamic>)['detail'] as String;
        } catch (_) {
          errorCode = resp.statusCode.toString();
          message = resp.statusMessage!;
        }
      }
  }
  log('errorCode: $errorCode, message: $message');
  final messageTranslated = (await message.translate(to: 'es')).text;
  return Left(
    ErrorEntity(
      errorCode: errorCode,
      message: messageTranslated,
    ),
  );
}
