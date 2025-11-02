import 'package:flutter/material.dart';
import 'package:groww_app_design/utils/app_colors.dart';

class HoldingWidget extends StatelessWidget {
  final List<Map<String, dynamic>> holdingList = [
    {
      'sharename': 'Vikran Engineering',
      'sharequantity': '148 shares',
      'sharecurrentprice': '₹15,127.01',
      'shareperchantageprice': '₹14,356.00',
    },
    {
      'sharename': 'CPSE ETF',
      'sharequantity': '1 share ',
      'sharecurrentprice': '₹94.65',
      'shareperchantageprice': '(₹30.91)',
    },
  ];
  HoldingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 14, left: 14),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderGreyColor),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HOLDING  (2)',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColors.greyMedium,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '₹15,127.01',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.borderGreyColor,
                              ),
                            ),
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                              size: 18,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.borderGreyColor,
                              ),
                            ),
                            child: Icon(Icons.show_chart, size: 18),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.borderGreyColor,
                              ),
                            ),
                            child: Icon(Icons.track_changes, size: 18),
                          ),
                        ],
                      ),

                      Divider(color: AppColors.borderGreyColor),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '1D return',
                              style: TextStyle(color: AppColors.greyMedium),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            '-111.58 (0.78%)',
                            style: TextStyle(
                              color: AppColors.redMedium,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Total return',
                              style: TextStyle(color: AppColors.greyMedium),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '+740.10 (5.14%)',
                            style: TextStyle(
                              color: AppColors.greenMedium,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Invested',
                              style: TextStyle(color: AppColors.greyMedium),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '₹14,386.91',
                            style: TextStyle(
                              color: AppColors.blackMedium,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Sort ',
                  style: TextStyle(
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Icon(Icons.sort, size: 15),
                Spacer(),
                Text(
                  '<> Current(Invested)',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: holdingList.length,
              separatorBuilder: (context, index) {
                return Divider(color: AppColors.borderGreyColor);
              },
              itemBuilder: (context, index) {
                return holdings(
                  sharename: holdingList[index]['sharename'],
                  sharequantity: holdingList[index]['sharequantity'],
                  sharecurrentprice: holdingList[index]['sharecurrentprice'],
                  shareperchantageprice:
                      holdingList[index]['shareperchantageprice'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget holdings({
    required String sharename,
    required String sharequantity,
    required String sharecurrentprice,
    required String shareperchantageprice,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sharename,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                sharequantity,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyMedium,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sharecurrentprice,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Text(
                shareperchantageprice,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
