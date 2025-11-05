import 'package:flutter/material.dart';
import 'package:groww_app_design/utils/app_colors.dart';

class FotterWidget extends StatelessWidget {
  const FotterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Center(
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              'About Groww\n'
              'Groww Invest Tech Pvt. Ltd.\n'
              '(Formerly known as Nextbillion Technology Pvt. Ltd.)\n'
              'SEBI-Stock BROKER - INZ000301838 | Member of NSE, BSE\n'
              'DP - IN-DP-417-2019',
              style: TextStyle(color: AppColors.greyMedium, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
