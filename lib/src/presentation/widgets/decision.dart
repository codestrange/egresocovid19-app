import 'package:flutter/material.dart';

class Decision {
  static T when<T>({
    required bool condition,
    required T Function() isTrue,
    required T Function() isFalse,
  }) {
    if (condition) {
      return isTrue();
    }
    return isFalse();
  }

  static T? maybeWhen<T>({
    required bool condition,
    T? Function()? isTrue,
    T? Function()? isFalse,
  }) {
    if (condition) {
      return isTrue?.call();
    }
    return isFalse?.call();
  }
}

class FutureDecision extends StatefulWidget {
  const FutureDecision({
    Key? key,
    required this.future,
    required this.ifTrue,
    required this.ifFalse,
  }) : super(key: key);

  final Future<bool> future;
  final Widget ifTrue;
  final Widget ifFalse;

  @override
  _FutureDecisionState createState() => _FutureDecisionState();
}

class _FutureDecisionState extends State<FutureDecision> {
  bool _loading = true;
  bool _decision = false;

  @override
  void initState() {
    super.initState();
    runFuture();
  }

  Future<void> runFuture() async {
    final result = await widget.future;
    setState(() {
      _loading = false;
      _decision = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return Decision.when(
          condition: _loading,
          isTrue: () => const Center(
            child: CircularProgressIndicator(),
          ),
          isFalse: () => Decision.when(
            condition: _decision,
            isTrue: () => widget.ifTrue,
            isFalse: () => widget.ifFalse,
          ),
        );
      },
    );
  }
}
