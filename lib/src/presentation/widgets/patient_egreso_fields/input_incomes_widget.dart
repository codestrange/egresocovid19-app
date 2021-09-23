import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class IncomesInputWidget extends StatefulWidget {
  const IncomesInputWidget({
    Key? key,
    this.addIncomeEntity,
    this.removeIncomeEntity,
    this.clearIncomes,
    this.incomes = const [],
    required this.headerText,
    this.errorText,
  }) : super(key: key);

  final Function(IncomeEntity)? addIncomeEntity;
  final Function(Income)? removeIncomeEntity;
  final Function()? clearIncomes;

  //
  final List<IncomeEntity> incomes;

  final String headerText;

  final String? errorText;

  @override
  State<IncomesInputWidget> createState() => _IncomeInputWidgetState();
}

class _IncomeInputWidgetState extends State<IncomesInputWidget> {
  @override
  Widget build(BuildContext context) {
    final incomeInputBloc = GetIt.I<IncomeBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.headerText),
        const SizedBox(
          height: 10,
        ),

        // new Income Input
        BlocBuilder<IncomeBloc, IncomeState>(
          bloc: incomeInputBloc,
          builder: (context, state) {
            return DropdownButtonFormField<Income>(
              items: Income.values.map((income) {
                return DropdownMenuItem(
                  value: income,
                  child: Row(
                    children: <Widget>[
                      Text(income.visualName()),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) return;
                incomeInputBloc.add(
                  IncomeEvent.incomeChanged(value!),
                );
              },
              decoration: TextFieldDecorations.decoration(
                errorText: widget.errorText,
                labelText: 'Ingreso en',
              ),
            );
          },
        ),
        const SizedBox(
          height: 4,
        ),
        BlocBuilder<IncomeBloc, IncomeState>(
          bloc: incomeInputBloc,
          builder: (context, state) {
            return _IncomeTreatmentInputWidget(
              initialValue: state.days != 0 ? state.days.toString() : null,
              onChanged: (input) =>
                  incomeInputBloc.add(IncomeEvent.daysChanged(input)),
            );
          },
        ),

        // Add Button
        BlocBuilder<IncomeBloc, IncomeState>(
          bloc: incomeInputBloc,
          builder: (context, state) {
            return ElevatedButton(
              onPressed: state.income != null
                  ? () {
                      final income = IncomeEntity(
                        income: state.income!,
                        days: state.days,
                      );
                      widget.addIncomeEntity?.call(income);
                      incomeInputBloc.add(const IncomeEvent.cleared());
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Icon(Icons.add),
            );
          },
        ),
        Wrap(
          spacing: 3,
          children: widget.incomes
              .map(
                (e) => Chip(
                  padding: const EdgeInsets.all(3),
                  label: Text(e.income.toString()),
                  onDeleted: () => widget.removeIncomeEntity?.call(e.income),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _IncomeTreatmentInputWidget extends StatefulWidget {
  const _IncomeTreatmentInputWidget({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  final String? initialValue;
  final ValueChanged<int>? onChanged;
  final String? labelText;
  final String? hintText;

  @override
  State<_IncomeTreatmentInputWidget> createState() =>
      _IncomeTreatmentInputWidgetState();
}

class _IncomeTreatmentInputWidgetState
    extends State<_IncomeTreatmentInputWidget> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextInputWidget(
      controller: widget.initialValue != null
          ? TextEditing.fromValue(widget.initialValue!)
          : null,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        final int? number = int.tryParse(value);
        if (number == null) {
          setState(() {
            errorText = 'La cantidad de días debe ser un entero';
          });
        } else {
          widget.onChanged?.call(number);
        }
      },
      hintText: widget.hintText,
      errorText: errorText,
      labelText: widget.labelText ?? 'Cant. de días',
    );
  }
}