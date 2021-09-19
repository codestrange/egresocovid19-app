import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IdentityNumberInputWidget extends TextInputWidget {
  const IdentityNumberInputWidget({
    Key? key,
    TextEditingController? controller,
    TextInputType keyboardType = TextInputType.number,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onSubmitted,
    String? errorText,
    String? hintText,
    String? labelText,
  }) : super(
          key: key,
          controller: controller,
          keyboardType: keyboardType,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          errorText: errorText,
          hintText: hintText,
          labelText: labelText ?? 'Carnet de Identidad',
        );
}
