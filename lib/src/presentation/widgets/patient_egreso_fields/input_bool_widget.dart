import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoolInputWidget extends StatefulWidget {
  const BoolInputWidget({
    Key? key,
    required this.labelText,
    this.initialValue,
    this.onChanged,
  }) : super(key: key);

  final bool? initialValue;
  final String labelText;
  final ValueChanged<bool>? onChanged;

  @override
  State<BoolInputWidget> createState() => _BoolInputWidgetState();
}

class _BoolInputWidgetState extends State<BoolInputWidget> {
  _BoolInputWidgetState({
    this.value,
  });
  bool? value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.labelText,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Switch(
          value: value ?? false,
          onChanged: (value) {
            widget.onChanged?.call(value);
            setState(() {
              this.value = value;
            });
          },
        ),
      ],
    );
  }
}
