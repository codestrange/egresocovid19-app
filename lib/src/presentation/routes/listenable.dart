import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RoutesListenable extends ChangeNotifier {
  RoutesListenable(this.bloc) {
    bloc.stream.listen((_) => notifyListeners());
  }

  final IAuthBloc bloc;
}
