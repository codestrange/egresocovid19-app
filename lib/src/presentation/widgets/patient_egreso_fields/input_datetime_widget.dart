import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class DateTimeInputWidget extends StatefulWidget {
  DateTimeInputWidget({
    Key? key,
    this.initialDate,
    this.onChanged,
    this.errorText,
    this.hintText,
  })  : controller = TextEditing.fromValue(
          initialDate != null
              ? DateFormat('dd/MM/yyyy').format(
                  initialDate,
                )
              : '',
        ),
        super(key: key);

  final DateTime? initialDate;
  final ValueChanged<DateTime>? onChanged;
  final String? errorText;
  late final TextEditingController? controller;
  final String? hintText;

  @override
  _DateTimeInputWidgetState createState() => _DateTimeInputWidgetState();
}

class _DateTimeInputWidgetState extends State<DateTimeInputWidget> {
  @override
  Widget build(BuildContext context) {
    final isWrong = widget.errorText != null;
    return TextField(
      controller: widget.controller,
      readOnly: true,
      decoration: TextFieldDecorations.decoration(
        suffixIcon: IconButton(
          icon: Icon(
            Icons.edit,
            color: isWrong ? Colors.red : null,
          ),
          onPressed: () {
            DatePicker.showDatePicker(
              context,
              locale: LocaleType.values.firstWhere(
                (localeType) =>
                    localeType.code ==
                    Localizations.localeOf(context).scriptCode,
                orElse: () => LocaleType.es,
              ),
              onConfirm: (time) {
                widget.controller?.text = DateFormat('dd/MM/yyyy').format(time);
                widget.onChanged?.call(time);
              },
            );
          },
        ),
        prefixIcon: Icons.calendar_today,
        hintText: widget.hintText,
        errorText: widget.errorText,
      ),
    );
  }
}

extension LocaleTypeCodeExtension on LocaleType {
  String get code {
    return toString().split('').last;
  }
}
