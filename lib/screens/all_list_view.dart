import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class AllListWidget extends StatelessWidget {
  const AllListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return listWidget();
  }

  Widget listWidget() {
    return Column(
      children: [
        Center(child: SvgPicture.asset(AppIcon.logo)),
        SizedBox(height: 20),
        Text(
          'Your dashboard is empty',
          style: TextStyle(fontSize: 20, color: AppColors.greyMedium),
        ),
      ],
    );
  }
}
