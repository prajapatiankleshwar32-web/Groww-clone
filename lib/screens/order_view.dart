import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(AppIcon.logo),
          SizedBox(height: 15),
          Text(
            'You have no open order',
            style: TextStyle(fontSize: 20,color: AppColors.greyMedium),
          ),
        ],
      ),
    );
  }
}
