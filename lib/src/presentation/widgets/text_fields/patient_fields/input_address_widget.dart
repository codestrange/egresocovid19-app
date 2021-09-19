import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddressInputWidget extends TextInputWidget {
  const AddressInputWidget({
    Key? key,
    TextEditingController? controller,
    TextInputType keyboardType = TextInputType.streetAddress,
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
          hintText: hintText ??
              'Ej: #666, Calle Ayestarán entre Villa Nueva y Magnolia',
          labelText: labelText ?? 'Dirección',
        );
}
