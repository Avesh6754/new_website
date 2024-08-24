import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/Recommendation.dart';


class RecommendationCart extends StatelessWidget {
  const RecommendationCart({
    super.key, required this.recommendation,
  });
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defalutpadding),
      color: secondcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recommendation.name!,style: Theme.of(context).textTheme.titleSmall,),
          Text(recommendation.source!),
          SizedBox(height: defalutpadding,),
          Text(recommendation.text!,maxLines: 4,overflow: TextOverflow.ellipsis,style: TextStyle(height: 1.5),)
        ],
      ),
    );
  }
}
