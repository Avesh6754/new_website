import 'package:flutter/material.dart';
import 'package:portfoliowebsite/responsive.dart';
import 'package:portfoliowebsite/screens/home/component/projectcart.dart';

import '../../../constant.dart';
import '../../../models/Project.dart';


class MyProject extends StatelessWidget {
  const MyProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Project",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(height: defalutpadding,),
        Responsive(mobile: Gridviewproject(crossAxiscount: 1,childaspectedratio: 1.7,), desktop: Gridviewproject(),tablet: Gridviewproject(childaspectedratio: 1.1,),mobileLarge: Gridviewproject(crossAxiscount: 2,),)
      ],
    );
  }
}

class Gridviewproject extends StatelessWidget {
  const Gridviewproject({
    super.key,  this.crossAxiscount=3, this.childaspectedratio=1.3,
  });
  final int crossAxiscount;
  final double childaspectedratio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoproject.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxiscount,
          crossAxisSpacing: defalutpadding,
          mainAxisSpacing: defalutpadding,
          childAspectRatio: childaspectedratio),
      itemBuilder: (context, index) => ProjectCart(project:demoproject[index],),
    );
  }
}

