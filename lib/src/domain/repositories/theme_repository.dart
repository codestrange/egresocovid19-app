import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:flutter/material.dart';

abstract class IThemeRepository {
  ThemeMode getThemeMode();
  Future<Either<void, ErrorEntity>> setThemeMode(ThemeMode themeMode);
}
