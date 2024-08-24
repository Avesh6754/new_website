import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfoliowebsite/responsive.dart';

import '../../../constant.dart';


class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/iamge1.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkcolor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defalutpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context) ? Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white):Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),

                if(Responsive.isMobileLarge(context))
                  SizedBox(height: defalutpadding/2,),
                MyAnimatedtext(),
                SizedBox(height: defalutpadding,),
                if(!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defalutpadding * 2,
                          vertical: defalutpadding),
                      backgroundColor: primarycolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text("EXPLORE NOW",style: TextStyle(color:darkcolor,fontWeight: FontWeight.w500),),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyAnimatedtext extends StatelessWidget {
  const MyAnimatedtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context))
            FlutterCodedText(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defalutpadding / 2),
          Text("I build"),
          Responsive.isMobile(context)?Expanded(child: Animtedtext()):Animtedtext(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defalutpadding / 2),
          if(!Responsive.isMobileLarge(context))FlutterCodedText(),
        ],
      ),
    );
  }
}

class Animtedtext extends StatelessWidget {
  const Animtedtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("responsive web and mobile app.",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Complete e-Commerce app UI.",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Chat app with dark and ligth theme.",
          speed: Duration(milliseconds: 60)),
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "<"),
      TextSpan(text: "flutter", style: TextStyle(color: primarycolor)),
      TextSpan(text: ">"),
    ]));
  }
}
