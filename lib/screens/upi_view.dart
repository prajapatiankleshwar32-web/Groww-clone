import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';
import 'package:icons_plus/icons_plus.dart';

class UpiScreen extends StatelessWidget {
  const UpiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                upibar(icon: AppIcon.upilite, text: 'Activate\nUPI Lite'),
                upibar(icon: AppIcon.profile, text: 'Pay\nanyone'),
                upibar(icon: AppIcon.payanyone, text: 'Self\ntransfer'),
                upibar(icon: AppIcon.wallet, text: 'Check\nbalance'),
              ],
            ),
            SizedBox(height: 25),
            Text(
              'UPI Requests',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 25),
            Container(
              child: Center(
                child: SvgPicture.asset('assets/icons/upi_request.svg'),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'UPI Options',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            upioptionsmethod(
              title: 'Bank transfer',
              icons: Icons.account_balance,
            ),
            upioptionsmethod(title: '  UPI autopay', icons: Icons.sync),
            upioptionsmethod(
              title: 'My UPI transactions history',
              icons: Icons.history,
            ),
            upioptionsmethod(title: 'UPI setting', icons: Icons.settings),
            SizedBox(height: 20),
            FotterWidget(),
          ],
        ),
      ),
    );
  }

  Widget upioptionsmethod({required IconData icons, required String title}) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.liteGreayColor,
          child: Icon(icons, size: 18),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.borderGreyColor, width: 1),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }

  Widget upibar({required String icon, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: SvgPicture.asset(icon, height: 17, width: 17),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.liteGreayColor,
          ),
        ),
        SizedBox(height: 6),
        Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
