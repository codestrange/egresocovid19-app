import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FullNameInputWidget extends TextInputWidget {
  const FullNameInputWidget({
    Key? key,
    TextEditingController? controller,
    TextInputType keyboardType = TextInputType.name,
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
          hintText: hintText ?? 'Ej: Antonio Maceo Grajales',
          labelText: labelText ?? 'Nombre Completo',
        );
}
