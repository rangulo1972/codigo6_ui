import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCategoryWidget extends StatelessWidget {
  String icon;
  String text;
  bool isSelected;

  ItemCategoryWidget({
    required this.icon,
    required this.text,
    required this.isSelected,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14.0),
      padding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xff349DFD).withOpacity(0.15)
            : Color(0xffeeeeee).withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/icons/$icon.svg",
            color: Color(0xff349DFD),
            height: 20,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.black : Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}
