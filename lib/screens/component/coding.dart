import 'package:flutter/material.dart';

import '../../component/Animated_circular_indicater.dart';
import '../../constant.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defalutpadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Animated_linear_indicator(percentage: 0.98,label: 'C',),
        Animated_linear_indicator(percentage: 0.45,label: 'Python',),
        Animated_linear_indicator(percentage: 0.75,label: 'Java',),
        Animated_linear_indicator(percentage: 0.55,label: 'Dart',),
        Animated_linear_indicator(percentage: 0.88,label: 'C++',),
      ],
    );
  }
}
