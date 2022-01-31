import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';

class TestDiagnosisInputWidget extends StatelessWidget {
  const TestDiagnosisInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.hintText,
    this.labelText,
    this.value,
  }) : super(key: key);

  final ValueChanged<TestDiagnosis?>? onChanged;
  final ValueChanged<TestDiagnosis?>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final TestDiagnosis? value;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<TestDiagnosis>(
      items: TestDiagnosis.values.map((TestDiagnosis testDiagnosis) {
        return DropdownMenuItem(
          value: testDiagnosis,
          child: Row(
            children: <Widget>[
              Text(testDiagnosis.visualName(context)),
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
      value: value,
    );
  }
}
