import 'package:flutter/material.dart';

class PlaceholderOfIllustration extends StatelessWidget {
  const PlaceholderOfIllustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Placeholder(
        color: Colors.blue,
        strokeWidth: 0.5,
      ),
    );
  }
}
