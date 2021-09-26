import 'dart:developer';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class IThemeService {
  ThemeMode getThemeMode();
  Future<Either<ErrorEntity, Unit>> setThemeMode(ThemeMode themeMode);
}

@Injectable(as: IThemeService)
class ThemeService implements IThemeService {
  ThemeService(this.themeRepository);

  final IThemeRepository themeRepository;

  @override
  ThemeMode getThemeMode() {
    try {
      return themeRepository.getThemeMode();
    } catch (e) {
      log(e.toString());
      return ThemeMode.system;
    }
  }

  @override
  Future<Either<ErrorEntity, Unit>> setThemeMode(ThemeMode themeMode) {
    return themeRepository.setThemeMode(themeMode);
  }
}
