import 'package:flutter/material.dart';

import '../../../constant.dart';

class Headingtext extends StatelessWidget {
  const Headingtext({
    super.key,
    required this.counter,
    required this.name,
  });

  final Widget counter;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defalutpadding / 2,
        ),
        Text(
          '$name',
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
