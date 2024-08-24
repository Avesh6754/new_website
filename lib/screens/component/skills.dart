import 'package:flutter/material.dart';

import '../../component/Animated_circular_indicater.dart';
import '../../constant.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: defalutpadding),
          child: Text(
            "Skill",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Row(
          children: [
            Expanded(child: Animatedcircularindicater(label: "Flutter",percentage: 0.9,),),
            SizedBox(width: defalutpadding,),
            Expanded(child: Animatedcircularindicater(label: "C++",percentage: 0.72,),),
            SizedBox(width: defalutpadding,),
            Expanded(child: Animatedcircularindicater(label: "C#",percentage: 0.75,),),
          ],
        ),
      ],
    );
  }
}
