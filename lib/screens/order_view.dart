import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/screens/order_details_screen.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class OrderWidget extends StatelessWidget {
  final List<Map<String, dynamic>> mostBroughtList = [
    {
      'buysell': 'SELL',
      'deliveryintra': 'Delivery',
      'sharenames': 'Vikran Engineering',
      'sharequantity': '1',
      'mktprice': '100',
      'limitorder': '100.20',
    },
    {
      'buysell': 'BUY',
      'deliveryintra': 'Intraday',
      'sharenames': 'CPSE ETF',
      'sharequantity': '10',
      'mktprice': '120',
      'limitorder': '113',
    },
    {
      'buysell': 'BUY',
      'deliveryintra': 'Delivery',
      'sharenames': 'Sagility',
      'sharequantity': '7',
      'mktprice': '200',
      'limitorder': '180',
    },
    {
      'buysell': 'SELL',
      'deliveryintra': 'Intraday',
      'sharenames': 'Vodafone Idea',
      'sharequantity': '50',
      'mktprice': '560',
      'limitorder': '580',
    },
  ];
  OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Open orders (1)',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Icon(Icons.keyboard_arrow_up),
              ],
            ),
            SizedBox(height: 7),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: AppColors.greenMedium,
                      width: 1.5,
                    ),
                  ),
                  child: Icon(
                    Icons.close,
                    color: AppColors.greenMedium,
                    size: 12,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Cancel all',
                  style: TextStyle(
                    color: AppColors.greenMedium,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  'Qty/Price',
                  style: TextStyle(color: AppColors.greyMedium, fontSize: 12),
                ),
                SizedBox(height: 20),
              ],
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: InkWell(
                        onTap: (  ) { 
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ordardetails(),
                            ),
                          );
                        },
                        child: getopenorders(
                          buysell: mostBroughtList[index]['buysell'],
                          deliveryintra:
                              mostBroughtList[index]['deliveryintra'],
                          sharenames: mostBroughtList[index]['sharenames'],
                          sharequantity:
                              mostBroughtList[index]['sharequantity'],
                          mktprice: mostBroughtList[index]['mktprice'],
                          limitorder: mostBroughtList[index]['limitorder'],
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "All orders",
                style: TextStyle(
                  color: AppColors.greenMedium,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column getopenorders({
    required String buysell,
    required String deliveryintra,
    required String sharenames,
    required String sharequantity,
    required String mktprice,
    required String limitorder,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              buysell,
              style: TextStyle(
                fontSize: 10,
                color:
                    buysell == 'SELL'
                        ? AppColors.redMedium
                        : AppColors.greenMedium,
              ),
            ),
            Spacer(),
            Text(
              deliveryintra,
              style: TextStyle(color: AppColors.greyMedium, fontSize: 10),
            ),
          ],
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Text(sharenames, style: TextStyle(fontSize: 12)),
            Spacer(),
            Text(sharequantity, style: TextStyle(fontSize: 12)),
          ],
        ),
        SizedBox(height: 3),
        Row(
          children: [
            Text(
              mktprice,
              style: TextStyle(fontSize: 10, color: AppColors.greyMedium),
            ),
            Spacer(),
            Text(
              limitorder,
              style: TextStyle(fontSize: 10, color: AppColors.greyMedium),
            ),
          ],
        ),
      ],
    );
  }
}
