import 'package:flutter/widgets.dart';

class MunicipalityInputWidget extends StatelessWidget {
  const MunicipalityInputWidget({
    Key? key,
    this.onChanged,
    this.labelProvinceText,
    this.labelMunicipalityText,
    this.errorText,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final String? labelProvinceText;
  final String? labelMunicipalityText;
  final String? errorText;
  @override
  Widget build(BuildContext context) {
    return Container(); //TODO: IMPLEMENT
  }
}
