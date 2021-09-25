import 'package:dartz/dartz.dart' show id;
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PathologyNameInputWidget extends StatefulWidget {
  const PathologyNameInputWidget({
    Key? key,
    required this.suggestionsStream,
    this.initialInput,
    this.onSubmitted,
    this.onSelected,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.errorText,
  }) : super(key: key);

  final String? initialInput;

  final Stream<List<String>> suggestionsStream;

  ///on suggestion selected or submit
  final dynamic Function(String)? onSubmitted;

  ///on suggestion selected
  final dynamic Function(dynamic)? onSelected;

  ///on text changed
  final dynamic Function(String)? onChanged;

  final String? labelText;

  final String? hintText;

  final String? errorText;

  @override
  _PathologyNameInputWidgetState createState() =>
      _PathologyNameInputWidgetState();
}

class _PathologyNameInputWidgetState extends State<PathologyNameInputWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  TextEditingController withValue(String? value) {
    if (value != null) {
      _controller.text = value;
    }
    return _controller;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleAutoCompleteTextField(
      controller: withValue(widget.initialInput),
      suggestionsStream: widget.suggestionsStream,
      onTextChanged: widget.onChanged,
      onTextSubmitted: widget.onSubmitted,
      onItemSelected: widget.onSelected ?? id,
      itemBuilder: (context, suggestion) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(suggestion.toString()),
      ),
      decoration: TextFieldDecorations.decoration(
        hintText: widget.hintText,
        errorText: widget.errorText,
        labelText: widget.labelText ?? 'Patología', // TODO
      ),
    );
  }
}
