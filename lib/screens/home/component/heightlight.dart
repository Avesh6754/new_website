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
          counter: AnimatedCounter(value: 150, text: 'K+'),
          name: "Subscriber",
        ),
        Headingtext(
          counter: AnimatedCounter(value: 45, text: '+'),
          name: "Videos",
        ),
      ],),
        SizedBox(height: defalutpadding,),Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
          Headingtext(
            counter: AnimatedCounter(value: 30, text: '+'),
            name: "Github Project",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 13, text: 'K+'),
            name: "Stars",
          ),
        ],)],) :Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Headingtext(
            counter: AnimatedCounter(value: 150, text: 'K+'),
            name: "Subscriber",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 45, text: '+'),
            name: "Videos",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 30, text: '+'),
            name: "Github Project",
          ),
          Headingtext(
            counter: AnimatedCounter(value: 13, text: 'K+'),
            name: "Stars",
          ),
        ],
      ),
    );
  }
}
