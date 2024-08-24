import 'package:flutter/material.dart';

import '../../component/animated_counter.dart';
import '../../models/Recommendation.dart';
import '../main_screen.dart';
import 'component/height_light.dart';
import 'component/heightlight.dart';
import 'component/home_banner.dart';
import 'component/myproject.dart';
import 'component/projectcart.dart';
import 'component/recommendtion.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      Highlight(),
      MyProject(),
      Recommendationpage()

    ]);
  }
}


