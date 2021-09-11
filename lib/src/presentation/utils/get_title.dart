import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:flutter/material.dart';

String getTitle(BuildContext context, String sufix) {
  return '${Messages.of(context)!.helloWorld} - $sufix';
}
