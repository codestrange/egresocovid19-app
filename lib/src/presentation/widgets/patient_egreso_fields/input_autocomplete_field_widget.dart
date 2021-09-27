import 'package:egresocovid19/src/presentation/utils/extensions.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' show id;

class AutoCompleteInputWidget extends StatefulWidget {
  const AutoCompleteInputWidget({
    Key? key,
    required this.suggestionsStream,
    this.initialInput,
    this.onSubmitted,
    this.onSelected,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.errorText,
    this.onAdd,
  }) : super(key: key);

  final String? initialInput;

  final Stream<List<String>> suggestionsStream;

  ///on suggestion selected or submit
  final dynamic Function(String)? onSubmitted;

  ///on suggestion selected
  final dynamic Function(dynamic)? onSelected;

  ///on text changed
  final dynamic Function(String)? onChanged;

  ///on add touched
  final void Function(String)? onAdd;

  final String? labelText;

  final String? hintText;

  final String? errorText;

  @override
  _AutoCompleteInputWidgetState createState() =>
      _AutoCompleteInputWidgetState();
}

class _AutoCompleteInputWidgetState extends State<AutoCompleteInputWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditing.fromValue(widget.initialInput ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleAutoCompleteTextField(
      controller: _controller,
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
        labelText: widget.labelText,
        suffixIcon: widget.onAdd != null
            ? IconButton(
                icon: const Icon(
                  Icons.add,
                ),
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    widget.onAdd?.call(
                      _controller.text,
                    );
                  }
                },
              )
            : null,
      ),
    );
  }
}
