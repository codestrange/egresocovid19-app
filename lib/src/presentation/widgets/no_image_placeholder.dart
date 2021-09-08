import 'package:flutter/material.dart';

class NoImagePlaceholder extends StatelessWidget {
  const NoImagePlaceholder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Icon(
          Icons.image_not_supported_rounded,
          size: 40,
          color: Theme.of(context).primaryIconTheme.color,
        ),
      ),
    );
  }
}
