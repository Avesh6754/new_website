

import 'package:flutter/material.dart';
import 'package:portfoliowebsite/constant.dart';
import 'package:portfoliowebsite/responsive.dart';

import 'component/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isDesktop(context) ? null : AppBar(
          backgroundColor: bgcolor,
          leading: Builder(builder: (context) => IconButton(onPressed: () {
            Scaffold.of(context).openDrawer();

          }, icon: Icon(Icons.menu)),)
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxwidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //now each take 50%
              //now each take 2+7=9 so 2/9=0.22 22%
              if(Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(
                width: defalutpadding,
              ),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children
                        //our footer
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
