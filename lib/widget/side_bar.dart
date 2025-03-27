import 'package:flutter/material.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widget/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isCollapsed ? 64 : 128,
      color: AppColors.sideNav,
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapsed ? 30 : 60,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  titile: "Home",
                  icon: Icons.add,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  titile: "Search",
                  icon: Icons.search,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  titile: "Spaces",
                  icon: Icons.language,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  titile: "Discover",
                  icon: Icons.auto_awesome,
                ),
                SideBarButton(
                  isCollapsed: isCollapsed,
                  titile: "Library",
                  icon: Icons.cloud_outlined,
                ),
              ],
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
