import 'package:flutter/material.dart';
import 'package:portofolio_yunus/theme.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Function nextScreen;

  MenuItem({this.title, this.icon, this.color, this.nextScreen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        nextScreen();
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50)
            ),
            child: Icon(icon, color: color, size: 18,),
          ),
          SizedBox(width: 20),
          Text(title, style: menuTextStyle,),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: greyColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.keyboard_arrow_right_outlined, color: blackColor, size: 18,),
          ),
        ],
      ),
    );
  }
}