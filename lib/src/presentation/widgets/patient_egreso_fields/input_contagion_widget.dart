import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';

class ContagionInputWidget extends StatelessWidget {
  const ContagionInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.hintText,
    this.labelText,
    this.value,
  }) : super(key: key);

  final ValueChanged<Contagion?>? onChanged;
  final ValueChanged<Contagion?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final Contagion? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Contagion>(
      items: Contagion.values.map((Contagion contagion) {
        return DropdownMenuItem(
          value: contagion,
          child: Row(
            children: <Widget>[
              Text(contagion.visualName(context)),
            ],
          ),
        );
      }).toList(),
      value: value,
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
