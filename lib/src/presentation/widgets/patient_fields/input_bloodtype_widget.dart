import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';

class BloodTypeInputWidget extends StatelessWidget {
  const BloodTypeInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.hintText,
    this.labelText,
    this.initialValue,
  }) : super(key: key);

  final ValueChanged<BloodType?>? onChanged;
  final ValueChanged<BloodType?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final BloodType? initialValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<BloodType>(
      items: BloodType.values.map((BloodType bloodType) {
        return DropdownMenuItem(
          value: bloodType,
          child: Row(
            children: <Widget>[
              Text(bloodType.visualName(context)),
            ],
          ),
        );
      }).toList(),
      value: initialValue,
      onChanged: onChanged,
      onSaved: onSubmitted,
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText,
      ),
    );
  }
}
