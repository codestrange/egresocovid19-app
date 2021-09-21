import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    this.child,
    this.text,
    required this.onPressed,
    this.color,
    this.side,
  })  : assert(child != null || text != null),
        super(key: key);

  const MainButton.danger({
    Key? key,
    this.child,
    this.text,
    required this.onPressed,
    this.side,
  })  : color = Colors.red,
        assert(child != null || text != null),
        super(key: key);

  const MainButton.loading({Key? key})
      : onPressed = null,
        text = null,
        color = null,
        child = const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 1,
        ),
        side = null,
        super(key: key);

  final Widget? child;
  final String? text;
  final Function()? onPressed;
  final Color? color;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightForFinite(
        height: 60,
        width: MediaQuery.of(context).size.width,
      ),
      child: ElevatedButton(
        key: key,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: side ?? BorderSide.none,
          ),
        ),
        child: child ??
            Text(
              text!,
              style: Theme.of(context).primaryTextTheme.button,
            ),
      ),
    );
  }
}
