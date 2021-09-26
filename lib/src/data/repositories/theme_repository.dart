import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IThemeRepository)
class ThemeRepository implements IThemeRepository {
  const ThemeRepository(@Named('theme') this.box);

  final Box<int> box;

  @override
  ThemeMode getThemeMode() {
    switch (box.get('mode')) {
      case 1:
        return ThemeMode.light;
      case 2:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  @override
  Future<Either<ErrorEntity, Unit>> setThemeMode(ThemeMode themeMode) async {
    await box.put('mode', themeMode.index);
    return const Right(unit);
  }
}
