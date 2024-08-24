import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant.dart';


class Knowledge_section extends StatelessWidget {
  const Knowledge_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defalutpadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        KnowledgeText(
          text: "Flutter,Dart",
        ),
        KnowledgeText(
          text: "Php,.Net,",
        ),
        KnowledgeText(
          text: "Git,Github",
        ),
        KnowledgeText(
          text: "Database",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defalutpadding / 2),
      child: Row(
        children: [
          // SvgPicture.asset('assets/icon/check.svg',),
          Icon(Icons.check,color: primarycolor,),
          SizedBox(
            width: defalutpadding / 2,
          ),
          Text('$text')
        ],
      ),
    );
  }
}
