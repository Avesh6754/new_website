import 'package:flutter/material.dart';

import '../constant.dart';

class Animatedcircularindicater extends StatelessWidget {
  const Animatedcircularindicater({
    Key? key,
    required this.label,
    required this.percentage,

  }):super (key: key);
  final String? label;
  final double? percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end:percentage),
            duration: defaulyDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: percentage,
                  color: primarycolor,
                  backgroundColor: darkcolor,
                ),
                Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.titleMedium,
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: defalutpadding / 2,
        ),
        Text(
          '$label',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

class Animated_linear_indicator extends StatelessWidget {
  const Animated_linear_indicator({
    Key? key,
    required this.label,
    required this.percentage,
  }):super(key: key);
  final String? label;
  final double? percentage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defalutpadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaulyDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$label",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  ((value*100).toInt().toString()+'%'),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: defalutpadding/2,),
            LinearProgressIndicator(
              value: percentage,
              color: primarycolor,
              backgroundColor: darkcolor,
            ),
          ],
        ),
      ),
    );
  }
}
