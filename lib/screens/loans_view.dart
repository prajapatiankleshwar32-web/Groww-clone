import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/screens/inatant_view.dart';
import 'package:groww_app_design/screens/loanagainst_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class LoansScreen extends StatelessWidget {
  const LoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inatenthasal()),
                );
              },
              child: loanswidget(
                title1: 'Personal loan',
                title2: 'Hassle-free money in your bank account',
                images: 'assets/icons/ipo.svg',
                title3: 'Available upto',
                title4: '₹4,00,000',
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loanagainst()),
                );
              },
              child: loanswidget(
                title1: 'Loan against Mutual Funds',
                title2: 'Starting @ 10.49% p.a.',
                images: 'assets/icons/intraday.svg',
                title3: 'Available loan limit',
                title4: '₹15,00,00,000',
              ),
            ),
            SizedBox(height: 20),
            FotterWidget(),
          ],
        ),
      ),
    );
  }

  Widget loanswidget({
    required String title1,
    required String title2,
    required String images,
    required String title3,
    required String title4,
  }) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.borderGreyColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title1,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          Text(
            title2,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.greyMedium,
            ),
          ),
          SizedBox(height: 13),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(alignment: Alignment.centerRight),
              SizedBox(height: 13),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          title3,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyMedium,
                          ),
                        ),
                        Text(
                          title4,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset(images, height: 60, width: 60),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
