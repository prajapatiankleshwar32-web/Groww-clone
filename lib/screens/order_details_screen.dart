import 'package:flutter/material.dart';
import 'package:groww_app_design/utils/app_colors.dart';

class Ordardetails extends StatefulWidget {
  const Ordardetails({super.key});

  @override
  State<Ordardetails> createState() => _OrdardetailsState();
}

class _OrdardetailsState extends State<Ordardetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          'Order Details',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColors.white,
        leading: Icon(Icons.arrow_back, color: AppColors.blackMedium),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: AppColors.greenMedium,
                    child: Icon(Icons.check, color: AppColors.white, size: 30),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Qty',
                        style: TextStyle(color: AppColors.greyMedium),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'TruAlt Bioenergy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '>',
                        style: TextStyle(
                          color: AppColors.greyMedium,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.borderGreyColor, width: 1.5),
                  bottom: BorderSide(
                    color: AppColors.borderGreyColor,
                    width: 1.5,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Order Type',
                          style: TextStyle(color: AppColors.greyMedium),
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        flex: 3,
                        child: Text('Sell, Delivery, Regaular'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Order price',
                          style: TextStyle(color: AppColors.greyMedium),
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(flex: 3, child: Text('Limit at ₹535.00')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Avg price',
                          style: TextStyle(color: AppColors.greyMedium),
                        ),
                      ),

                      Expanded(flex: 2, child: Text('₹545.40')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Exchange',
                          style: TextStyle(color: AppColors.greyMedium),
                        ),
                      ),

                      Expanded(flex: 2, child: Text('NSE')),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Validity',
                          style: TextStyle(color: AppColors.greyMedium),
                        ),
                      ),

                      Expanded(flex: 2, child: Text('Day end')),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.borderGreyColor,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'List of trades',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text('v'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.greyMedium, width: 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Order status',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text('Successful'),
                          SizedBox(width: 5),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: AppColors.greenMedium,
                            child: Icon(
                              Icons.check,
                              color: AppColors.white,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  getTimelineRow(
                    title: 'Request Recived',
                    subtitle: '03 October 2025, 9:25AM',
                    growwid: 'Copy Groww order id',
                  ),
                  getTimelineRow(
                    title: 'Order Placed with NSE',
                    subtitle: '03 October 2025, 9:25AM',
                    growwid: 'Copy NSE Order id',
                  ),
                  getTimelineRow(
                    title: 'Order Executed',
                    subtitle: '03 October 2025, 9:25AM',
                    growwid: '',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row getTimelineRow({
    required String title,
    required String subtitle,
    required String growwid,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(Icons.check_circle, color: AppColors.greyMedium, size: 16),
            Container(width: 1, height: 50, color: AppColors.borderGreyColor),
          ],
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 15)),
              SizedBox(height: 3),
              Text(
                subtitle,
                style: TextStyle(color: AppColors.greyMedium, fontSize: 12),
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    growwid,
                    style: TextStyle(
                      color: AppColors.greenMedium,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
