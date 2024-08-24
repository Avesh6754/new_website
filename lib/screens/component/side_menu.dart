import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoliowebsite/constant.dart';
import 'package:portfoliowebsite/screens/component/skills.dart';

import '../../component/Animated_circular_indicater.dart';
import 'area_info.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defalutpadding),
                child: Column(
                  children: [
                    Areainfo(
                      title: 'Residence',
                      text: 'India',
                    ),
                    Areainfo(
                      title: 'City',
                      text: 'Surat',
                    ),
                    Areainfo(
                      title: 'Age',
                      text: '22',
                    ),
                    Skills(),
                    SizedBox(
                      height: defalutpadding,
                    ),
                    Coding(),
                    Knowledge_section(),
                    Divider(),
                    SizedBox(height: defalutpadding/2,),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Download CV",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.titleLarge!.color,
                              ),
                            ),
                            SizedBox(width: defalutpadding/2,),
                            SvgPicture.asset('assets/icon/download.svg'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defalutpadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset('assets/icon/behance.svg')),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset('assets/icon/github.svg')),

                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset('assets/icon/linkedin.svg')),
                          IconButton(onPressed: () {

                          }, icon: SvgPicture.asset('assets/icon/twitter.svg')),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
