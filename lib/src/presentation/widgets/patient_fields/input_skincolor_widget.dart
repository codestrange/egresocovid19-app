import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkinColorInputWidget extends StatelessWidget {
  const SkinColorInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.hintText,
    this.labelText,
  }) : super(key: key);

  final ValueChanged<SkinColor?>? onChanged;
  final ValueChanged<SkinColor?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<SkinColor>(
      items: SkinColor.values.map((SkinColor skinColor) {
        return DropdownMenuItem(
          value: skinColor,
          child: Row(
            children: <Widget>[
              Text(_getTextByEnum(context, skinColor)),
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

  String _getTextByEnum(BuildContext context, SkinColor skinColor) {
    switch (skinColor) {
      case SkinColor.Black:
        return Messages.of(context)!.enumSkinColorBlack;
      case SkinColor.White:
        return Messages.of(context)!.enumSkinColorWhite;
      case SkinColor.Other:
        return Messages.of(context)!.enumSkinColorOther;
      default:
        return skinColor.toString();
    }
  }
}
