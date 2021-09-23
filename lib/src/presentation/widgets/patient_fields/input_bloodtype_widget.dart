import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BloodTypeInputWidget extends StatelessWidget {
  const BloodTypeInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.hintText,
    this.labelText,
  }) : super(key: key);

  final ValueChanged<BloodType?>? onChanged;
  final ValueChanged<BloodType?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<BloodType>(
      items: BloodType.values.map((BloodType bloodType) {
        return DropdownMenuItem(
          value: bloodType,
          child: Row(
            children: <Widget>[
              Text(_getTextByEnum(context, bloodType)),
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

  String _getTextByEnum(BuildContext context, BloodType bloodType) {
    switch (bloodType) {
      case BloodType.ABminus:
        return Messages.of(context)!.enumBloodTypeABminus;
      case BloodType.ABplus:
        return Messages.of(context)!.enumBloodTypeABplus;
      case BloodType.Aplus:
        return Messages.of(context)!.enumBloodTypeAplus;
      case BloodType.Aminus:
        return Messages.of(context)!.enumBloodTypeAminus;
      case BloodType.Bplus:
        return Messages.of(context)!.enumBloodTypeBplus;
      case BloodType.Bminus:
        return Messages.of(context)!.enumBloodTypeBminus;
      case BloodType.Oplus:
        return Messages.of(context)!.enumBloodTypeOplus;
      case BloodType.Ominus:
        return Messages.of(context)!.enumBloodTypeOminus;
      default:
        return bloodType.toString();
    }
  }
}
