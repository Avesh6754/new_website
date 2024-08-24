import 'package:flutter/material.dart';
import 'package:portfoliowebsite/screens/home/component/recommendtioncart.dart';

import '../../../constant.dart';
import '../../../models/Recommendation.dart';
class Recommendationpage extends StatelessWidget {
  const Recommendationpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defalutpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("Recommendation",style: Theme.of(context)
              .textTheme.titleLarge,),
          const SizedBox(height: defalutpadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: PageScrollPhysics(),
            child: Row(
              children: List.generate(demoRecommendtion.length, (index)=>Padding(
                padding: const EdgeInsets.only(right: defalutpadding),
                child: RecommendationCart(recommendation: demoRecommendtion[index],),
              )),
            ),
          )
        ],
      ),
    );
  }
}
