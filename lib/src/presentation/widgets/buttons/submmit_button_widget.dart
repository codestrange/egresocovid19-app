import 'package:egresocovid19/src/presentation/widgets/buttons/main_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

class SubmmitButton<T extends FormBloc> extends StatelessWidget {
  const SubmmitButton({required this.label}) : super();

  final String label;

  @override
  Widget build(BuildContext context) {
    return FormBlocBuilder<T>(
      onValid: () => MainButton(
        onPressed: context.read<T>().submit,
        text: label,
      ),
      onLoading: () => const MainButton.loading(),
      onInvalid: () => MainButton(
        onPressed: context.read<T>().submit,
        text: label,
        side: BorderSide(width: 1.5, color: Colors.red.withOpacity(6)),
      ),
      orElse: () => MainButton(
        onPressed: null,
        text: label,
      ),
    );
  }
}
