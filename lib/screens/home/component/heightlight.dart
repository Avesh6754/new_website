import 'package:flutter/material.dart';
import 'package:portfoliowebsite/responsive.dart';

import '../../../component/animated_counter.dart';
import '../../../constant.dart';
import 'height_light.dart';

class Highlight extends StatelessWidget {
  const Highlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defalutpadding),
      child:Responsive.isMobileLarge(context)?Column(children: [Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
        Headingtext(
          counter: AnimatedCounter(value: 700, text: '+'),
          name: "Linkdine",
        ),
        Headingtext(
          counter: AnimatedCounter(value: 45, text: '+'),
          name: "DSA Rating",
        ),
      ],),
        SizedBox(height: defalutpadding,),Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
          Headingtext(
            counter: AnimatedCounter(value: 30, text: '+'),
            name: "Github Repositories",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 5, text: '+'),
            name: "Courses",
          ),
        ],)],) :Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Headingtext(
            counter: AnimatedCounter(value: 700, text: '+'),
            name: "Linkdine",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 80, text: '+'),
            name: "DSA Rating",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 25, text: '+'),
            name: "Github Repositories",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 5, text: '+'),
            name: "Courses",
          ),
        ],
      ),
    );
  }
}
