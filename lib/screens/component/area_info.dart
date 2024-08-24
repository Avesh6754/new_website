import 'package:flutter/material.dart';

import '../../constant.dart';

class Areainfo extends StatelessWidget {
  const Areainfo({
    Key? key,
    this.text,
    this.title,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defalutpadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '$text',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white60),
          ),
        ],
      ),
    );
  }
}
