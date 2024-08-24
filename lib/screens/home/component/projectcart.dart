import 'package:flutter/material.dart'
;
import 'package:portfoliowebsite/responsive.dart';

import '../../../constant.dart';
import '../../../models/Project.dart';
class ProjectCart extends StatelessWidget {
  const ProjectCart({
    super.key, required this.project,
  });
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defalutpadding),
      color: secondcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${project.title}",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Spacer(),
          Text(
            '${project.description}',
            maxLines:Responsive.isMobileLarge(context) ?3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.2),
          ),
          Spacer(),
          TextButton(onPressed: () {

          }, child: Text("ReadMore >>",style: TextStyle(color: primarycolor),))
        ],
      ),
    );
  }
}
