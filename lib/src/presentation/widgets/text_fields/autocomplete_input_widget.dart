import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

typedef Widget AutoCompleteOverlayItemBuilder(
    BuildContext context, dynamic suggestion);

typedef InputEventCallback<T>(T data);

typedef StringCallback(String data);

class AutoCompleteTextField<T> extends StatefulWidget {
  AutoCompleteTextField({
    Key? key,
    required this.suggestionsStream,
    this.onTextChanged,
    this.onTextSubmitted,
    this.onFocusChanged,
    required this.onItemSelected,
    required this.itemBuilder,
    this.suggestionsAmountToShow = 5,
    this.decoration = const InputDecoration(),
    this.style,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.none,
    this.textCapitalization = TextCapitalization.sentences,
    this.minInputLengthToShowSuggestions = 1,
    this.unfocusOnSuggestionTap = true,
    this.controller,
    this.focusNode,
    this.initalInput,
    this.onTextFieldTapped,
    this.textFromSuggestion,
    // required this.suggestionFromName,
  }) : super(key: key) {
    if (controller != null && initalInput != null) {
      controller!.text = initalInput!;
      //Fixme...
    }
  }

  final Stream<List<T>> suggestionsStream;
  final StringCallback? onTextChanged;
  final StringCallback? onTextSubmitted;
  final Function? onTextFieldTapped;
  final String Function(T)? textFromSuggestion;
  // final T Function(String) suggestionFromName;
  final ValueSetter<bool>? onFocusChanged;
  final Function(dynamic) onItemSelected;
  final AutoCompleteOverlayItemBuilder itemBuilder;
  final int suggestionsAmountToShow;
  final bool unfocusOnSuggestionTap;
  final int minInputLengthToShowSuggestions;
  //
  final InputDecoration decoration;
  final TextStyle? style;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;
  final String? initalInput;
  //
  final FocusNode? focusNode;

  @override
  _AutoCompleteTextFieldState<T> createState() =>
      _AutoCompleteTextFieldState<T>();
}

class _AutoCompleteTextFieldState<T> extends State<AutoCompleteTextField> {
  late LayerLink layerLink;
  late TextEditingController controller;
  late FocusNode focusNode;
  late bool hideOverlay;
  List<T> currentSuggestions = [];
  OverlayEntry? listSuggestionsEntry;
  late StreamSubscription<List<T>> _subscription;

  @override
  void initState() {
    hideOverlay = true;
    layerLink = LayerLink();
    controller = widget.controller ??
        TextEditingController(text: widget.initalInput ?? '');
    focusNode = widget.focusNode ?? FocusNode();
    focusNode.addListener(() {
      if (widget.onFocusChanged != null) {
        widget.onFocusChanged!(focusNode.hasFocus);
      }

      if (!focusNode.hasFocus) {
        hideOverlay = true;
        handleSuggestionsChange(
          currentSuggestions,
        );
      } else if (controller.text != '') {
        hideOverlay = false;
        handleSuggestionsChange(
          currentSuggestions,
        );
      }
    });
    _subscription = (widget.suggestionsStream as Stream<List<T>>)
        .listen(handleSuggestionsChange);
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    listSuggestionsEntry?.remove();
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textField = _textField(context);
    return CompositedTransformTarget(link: layerLink, child: textField);
  }

  TextField _textField(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      textCapitalization: widget.textCapitalization,
      decoration: widget.decoration,
      style: widget.style,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      onChanged: (newText) {
        hideOverlay = false;
        handleSuggestionsChange(currentSuggestions);

        if (widget.onTextChanged != null) {
          widget.onTextChanged!(newText);
        }
      },
      onTap: () {
        if (widget.onTextFieldTapped != null) {
          widget.onTextFieldTapped!();
        }
        // hideOverlay = false;
        handleSuggestionsChange(currentSuggestions);
      },
      onSubmitted: (submittedText) {
        if (widget.onTextSubmitted != null) {
          widget.onTextSubmitted!(submittedText);
        }
        hideOverlay = true;
        handleSuggestionsChange(currentSuggestions);
      },
    );
  }

  void handleSuggestionsChange(List<T> suggestions) {
    currentSuggestions = suggestions;
    if (hideOverlay) currentSuggestions = [];

    if (listSuggestionsEntry == null) {
      final Size textFieldSize =
          (context.findRenderObject() as RenderBox?)!.size;
      final width = textFieldSize.width;
      final height = textFieldSize.height;
      listSuggestionsEntry = OverlayEntry(builder: (context) {
        return Positioned(
            width: width,
            child: CompositedTransformFollower(
                link: layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, height),
                child: SizedBox(
                    width: width,
                    child: Card(
                        child: Column(
                      children: currentSuggestions.map((suggestion) {
                        return Row(children: [
                          Expanded(
                              child: InkWell(
                            onTap: () {
                              setState(() {
                                final String newText =
                                    widget.textFromSuggestion != null
                                        ? widget.textFromSuggestion!(suggestion)
                                        : suggestion.toString();
                                controller.text = newText;
                                if (widget.unfocusOnSuggestionTap) {
                                  focusNode.unfocus();
                                  widget.onItemSelected(suggestion);
                                } else {
                                  if (widget.onTextChanged != null) {
                                    widget.onTextChanged!(newText);
                                  }
                                }
                              });
                            },
                            child: widget.itemBuilder(context, suggestion),
                          ))
                        ]);
                      }).toList(),
                    )))));
      });
      Overlay.of(context)?.insert(listSuggestionsEntry!);
    }
    listSuggestionsEntry!.markNeedsBuild();
  }
}

class SimpleAutoCompleteTextField extends StatelessWidget {
  const SimpleAutoCompleteTextField({
    Key? key,
    required this.suggestionsStream,
    this.onTextChanged,
    this.onTextSubmitted,
    this.onFocusChanged,
    required this.onItemSelected,
    required this.itemBuilder,
    this.suggestionsAmountToShow = 5,
    this.decoration = const InputDecoration(),
    this.style,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.none,
    this.textCapitalization = TextCapitalization.sentences,
    this.minInputLengthToShowSuggestions = 1,
    this.unfocusOnSuggestionTap = true,
    this.controller,
    this.focusNode,
    this.initalInput,
    this.onTextFieldTapped,
  }) : super(key: key);

  final Stream<List<String>> suggestionsStream;
  final StringCallback? onTextChanged;
  final StringCallback? onTextSubmitted;
  final Function? onTextFieldTapped;
  final ValueSetter<bool>? onFocusChanged;
  final Function(dynamic) onItemSelected;
  final AutoCompleteOverlayItemBuilder itemBuilder;
  final int suggestionsAmountToShow;
  final bool unfocusOnSuggestionTap;
  final int minInputLengthToShowSuggestions;
  //
  final InputDecoration decoration;
  final TextStyle? style;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;
  final String? initalInput;
  //
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return AutoCompleteTextField<String>(
      key: key,
      suggestionsStream: suggestionsStream,
      onTextChanged: onTextChanged,
      onTextSubmitted: onTextSubmitted,
      onFocusChanged: onFocusChanged,
      onItemSelected: onItemSelected,
      itemBuilder: itemBuilder,
      suggestionsAmountToShow: suggestionsAmountToShow,
      decoration: decoration,
      style: style,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      minInputLengthToShowSuggestions: minInputLengthToShowSuggestions,
      unfocusOnSuggestionTap: unfocusOnSuggestionTap,
      controller: controller,
      focusNode: focusNode,
      initalInput: initalInput,
      onTextFieldTapped: onTextFieldTapped,
    );
  }
}
