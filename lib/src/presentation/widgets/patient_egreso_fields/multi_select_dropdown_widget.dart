import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class MultiSelectDropDown<T> extends StatefulWidget {
  const MultiSelectDropDown({
    Key? key,
    required this.labelText,
    required this.items,
    required this.onSelect,
    required this.onRemove,
    required this.itemToString,
    this.initialValues,
  }) : super(key: key);

  final String labelText;
  final List<T> items;
  final String Function(T) itemToString;

  final List<T>? initialValues;

  final ValueChanged<List<T>> onSelect;
  final ValueChanged<T> onRemove;

  @override
  State<MultiSelectDropDown> createState() => _MultiSelectDropDownState<T>();
}

class _MultiSelectDropDownState<T> extends State<MultiSelectDropDown<T>> {
  _MultiSelectDropDownState();
  late List<T> _selectedValues;

  @override
  void initState() {
    _selectedValues = [];
    _selectedValues.addAll(widget.initialValues ?? []);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(width: 0.65),
          ),
          child: MultiSelectDialogField<T?>(
            items: widget.items
                .map(
                  (e) => MultiSelectItem(
                    e,
                    widget.itemToString(e),
                  ),
                )
                .toList(),
            initialValue: _selectedValues,
            listType: MultiSelectListType.LIST,
            onConfirm: selectAll,
            buttonText: Text(
              widget.labelText,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.grey[600],
                  ),
            ),
            buttonIcon: const Icon(
              Icons.arrow_drop_down,
              size: 24,
            ),
            selectedColor: Colors.black,
            chipDisplay: MultiSelectChipDisplay.none(),
            decoration: const BoxDecoration(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 3,
          children: _selectedValues
              .map(
                (e) => Chip(
                  padding: const EdgeInsets.all(3),
                  label: Text(
                    widget.itemToString(e),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  void selectAll(List<T?> values) {
    final List<T> newValues = [];
    for (final element in values) {
      if (element != null) newValues.add(element);
    }
    widget.onSelect(newValues);
    setState(() {
      _selectedValues = newValues;
    });
  }

  void remove(T? value) {
    if (value == null) return;
    widget.onRemove(value);
    setState(() {
      _selectedValues.remove(value);
    });
  }
}
