import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SexInputWidget extends StatelessWidget {
  const SexInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.hintText,
    this.labelText,
  }) : super(key: key);

  final ValueChanged<Sex?>? onChanged;
  final ValueChanged<Sex?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Sex>(
      items: Sex.values.map((Sex sex) {
        return DropdownMenuItem(
          value: sex,
          child: Row(
            children: <Widget>[
              Text(_getTextByEnum(context, sex)),
            ],
          ),
        );
      }).toList(),
      onChanged: onChanged,
      onSaved: onSubmitted,
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText,
      ),
    );
  }

  String _getTextByEnum(BuildContext context, Sex sex) {
    switch (sex) {
      case Sex.Female:
        return Messages.of(context)!.enumSexFemale;
      case Sex.Male:
        return Messages.of(context)!.enumSexMale;
      case Sex.Other:
        return Messages.of(context)!.enumSexOther;
      default:
        return sex.toString();
    }
  }
}
