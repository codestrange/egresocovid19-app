import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
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
    this.initialValue,
  }) : super(key: key);

  final ValueChanged<Sex?>? onChanged;
  final ValueChanged<Sex?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final Sex? initialValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Sex>(
      items: Sex.values.map((Sex sex) {
        return DropdownMenuItem(
          value: sex,
          child: Row(
            children: <Widget>[
              Text(sex.visualName(context)),
            ],
          ),
        );
      }).toList(),
      onChanged: onChanged,
      onSaved: onSubmitted,
      value: initialValue,
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText,
      ),
    );
  }
}
