import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';

class SideBarButton extends StatelessWidget {
  final bool isCollapsed;
  final String titile;
  final IconData icon;
  const SideBarButton(
      {super.key,
      required this.isCollapsed,
      required this.titile,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment:
            isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
            child: Icon(
              icon,
              color: AppColors.iconGrey,
              size: 22,
            ),
          ),
          isCollapsed
              ? SizedBox()
              : Text(
                  titile,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
        ]);
  }
}
