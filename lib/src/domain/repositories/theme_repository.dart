import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

abstract class IThemeRepository {
  ThemeMode getThemeMode();
  Future<Either<ErrorEntity, Unit>> setThemeMode(ThemeMode themeMode);
}
