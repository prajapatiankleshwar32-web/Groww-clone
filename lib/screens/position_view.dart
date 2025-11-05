import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class PositionWidget extends StatelessWidget {
  PositionWidget({super.key});

  final List<Map<String, dynamic>> positionWidget = [
    {
      'positionshareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/EPACKPEB1.png',
      'positionsharename': 'EPack Prefab Technologies',
      'positionshareprice': '₹295.60',
      'positionshareper': '+36.98 (14.30%)',
      'positionbar': true,
    },
    {
      'positionshareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/VINTAGECOFFEE.png',
      'positionsharename': 'Vintage Cpffee and Beverages',
      'positionshareprice': '₹166.71',
      'positionshareper': '+2.87 (1.75%)',
      'positionbar': true,
    },
    {
      'positionshareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/WOCKPHARMA.webp',
      'positionsharename': 'Wockhardt',
      'positionshareprice': '₹1,413.80',
      'positionshareper': '+132.30 (10.32%)',
      'positionbar': true,
    },
    {
      'positionshareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/AURIONPRO.webp',
      'positionsharename': 'Aurionpro Solutions',
      'positionshareprice': '₹1,217.40',
      'positionshareper': '+10.20 (0.84%)',
      'positionbar': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(child: SvgPicture.asset(AppIcon.logo)),
            SizedBox(height: 10),
            Center(
              child: Text(
                'No open equity intraday or MTF position',
                style: TextStyle(fontSize: 20, color: AppColors.greyMedium),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Price change > 1%',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                priceMenites(time: '5 mins'),
                SizedBox(width: 10),
                priceMenites(time: '15 mins'),
                SizedBox(width: 10),
                priceMenites(time: '1 hour'),
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return positionpricechange(
                  positionshareimage:
                      positionWidget[index]['positionshareimage'],
                  positionsharename: positionWidget[index]['positionsharename'],
                  positionshareprice:
                      positionWidget[index]['positionshareprice'],
                  positionshareper: positionWidget[index]['positionshareper'],
                  positionbar: positionWidget[index]['positionbar'],
                );
              },
            ),

            SizedBox(height: 20),
            FotterWidget(),
          ],
        ),
      ),
    );
  }

  Widget priceMenites({required String time}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGreyColor),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Text(
        time,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.blackMedium,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget positionpricechange({
    required String positionshareimage,
    required String positionsharename,
    required String positionshareprice,
    required String positionshareper,
    required bool positionbar,
  }) {
    return Container(
      padding: EdgeInsets.all(23),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGreyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(positionshareimage, height: 23, width: 23),
          ),
          SizedBox(height: 8),
          Text(positionsharename, style: TextStyle(fontSize: 13)),
          Spacer(),
          Text(
            positionshareprice,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.blackMedium,
            ),
          ),
          SizedBox(height: 3),
          Text(
            positionshareper,
            style: TextStyle(
              fontSize: 13,
              color: positionbar ? AppColors.greenMedium : AppColors.redMedium,
            ),
          ),
        ],
      ),
    );
  }
}
