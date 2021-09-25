import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StringListInputWidget extends StatefulWidget {
  const StringListInputWidget({
    Key? key,
    required this.addString,
    required this.removeString,
    required this.clearList,
    this.stringList = const [],
    required this.labelText,
    this.errorText,
    this.autoCompleteBloc,
  }) : super(key: key);

  final Function(String)? addString;
  final Function(String)? removeString;
  final Function()? clearList;

  final List<String> stringList;

  final String labelText;
  final String? errorText;

  final AutoCompleteBloc<String>? autoCompleteBloc;

  @override
  _StringListInputState createState() => _StringListInputState();
}

class _StringListInputState extends State<StringListInputWidget> {
  _StringListInputState();

  List<String>? actualList;

  @override
  void initState() {
    super.initState();
    actualList = [];
    actualList!.addAll(widget.stringList);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AutoCompleteInputWidget(
          suggestionsStream: widget.autoCompleteBloc?.suggestionsStream ??
              const Stream.empty(),
          initialInput: '',
          onChanged: (input) => widget.autoCompleteBloc?.changed(input.trim()),
          onSelected: (input) =>
              widget.autoCompleteBloc?.selected(input as String),
          onAdd: (input) {
            if (actualList != null && !actualList!.contains(input)) {
              addItem(input);
            }
          },
          labelText: widget.labelText,
          errorText: widget.errorText,
        ),
        Wrap(
          spacing: 3,
          children: widget.stringList
              .map(
                (e) => Chip(
                  padding: const EdgeInsets.all(3),
                  label: Text(e),
                  onDeleted: () {
                    if (actualList != null && actualList!.contains(e)) {
                      removeItem(e);
                    }
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }

  void addItem(String value) {
    widget.addString?.call(value);
    setState(() {
      actualList!.add(value);
    });
  }

  void removeItem(String value) {
    widget.removeString?.call(value);
    setState(() {
      actualList!.remove(value);
    });
  }

  void clearList() {
    widget.clearList?.call();
    setState(() {
      actualList!.clear();
    });
  }
}
