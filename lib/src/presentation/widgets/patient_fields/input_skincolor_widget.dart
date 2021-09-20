import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';

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
                Text(skinColor.toString()), //TODO: Localization
              ],
            ));
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
}
