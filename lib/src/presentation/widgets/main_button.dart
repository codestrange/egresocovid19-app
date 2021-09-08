import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    this.text,
    this.child,
    required this.onPressed,
  })  : assert(text != null || child != null),
        super(key: key);

  final Widget? child;
  final String? text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _child = child ??
        Text(
          text!,
        );
    return MaterialButton(
      animationDuration: const Duration(milliseconds: 100),
      elevation: 0,
      highlightElevation: 0,
      color: theme.primaryColor,
      textColor: Theme.of(context).primaryTextTheme.button!.color,
      highlightColor: theme.accentColor,
      splashColor: theme.accentColor,
      disabledColor: theme.disabledColor,
      disabledTextColor: theme.canvasColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: onPressed,
      child: Center(child: _child),
    );
  }
}
