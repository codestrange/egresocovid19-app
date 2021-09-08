import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
    required this.onRemove,
    required this.onAdd,
    required this.onDelete,
    required this.value,
  }) : super(key: key);

  final void Function() onRemove;
  final void Function() onDelete;
  final void Function() onAdd;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (value <= 1)
          IconButton(
            icon: const Icon(
              Icons.delete_rounded,
            ),
            color: Colors.red,
            onPressed: onDelete,
          )
        else
          IconButton(
            onPressed: onRemove,
            icon: const Icon(
              Icons.remove_circle_rounded,
            ),
          ),
        Expanded(
          child: Center(
            child: Text(
              '$value',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        IconButton(
          onPressed: onAdd,
          icon: const Icon(
            Icons.add_circle_rounded,
          ),
        ),
      ],
    );
  }
}
