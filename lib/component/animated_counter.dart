










import 'package:flutter/material.dart';

import '../constant.dart';


class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    super.key,
    required this.value,
    required this.text,
  });

  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(
          begin: 0,
          end: value,
        ),
        duration: Duration(seconds: 3),
        builder: (context, value, child) => Text(
          '$value$text',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: primarycolor),
        ));
  }
}
