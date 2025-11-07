import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';

class HoldingWidget extends StatelessWidget {
  final List<Map<String, dynamic>> holdingList = [
    {
      'sharename': 'Vikran Engineering',
      'sharequantity': '148 shares',
      'sharecurrentprice': '₹15,127.01',
      'shareperchantageprice': '(₹14,356.00)',
      'icon': AppIcon.bullish,
    },
    {
      'sharename': 'CPSE ETF',
      'sharequantity': '1 share ',
      'sharecurrentprice': '₹94.65',
      'shareperchantageprice': '(₹30.91)',
      'icon': AppIcon.bullish,
    },
  ];
  final List<Map<String, dynamic>> holdingListMoreYou = [
    {
      'shareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/TATAMOTORS.webp',
      'sharename': 'TATAGOLD',
      'sharecurrentprice': '₹11.77',
      'shareperchantageprice': '+0.06(0.51%)',
    },
    {
      'shareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/IDEA.webp',
      'sharename': 'Vodafone Idea',
      'sharecurrentprice': '₹9.09',
      'shareperchantageprice': '+0.35(4.01%)',
    },
    {
      'shareimage':
          'https://assets-netstorage.groww.in/mf-assets/logos/tata_groww.png',
      'sharename': 'TATSILV',
      'sharecurrentprice': '₹14.60',
      'shareperchantageprice': '+0.11(0.76%)',
    },
    {
      'shareimage':
          'https://assets-netstorage.groww.in/stock-assets/logos2/SAGILITY.webp',
      'sharename': 'Sagility',
      'sharecurrentprice': '₹53.17',
      'shareperchantageprice': '+0.75(1.22%)',
    },
  ];
  HoldingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 14, left: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderGreyColor),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  getStockholdingbar(),
                ],
              ),
            ),
            SizedBox(height: 20),
            getcurrentinvestment(),
            SizedBox(height: 15),
            getsharelistinholding(),
            SizedBox(height: 15),

            Text(
              'More stocks for you',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            getmorestockslist(),

            SizedBox(height: 20),
            FotterWidget(),
          ],
        ),
      ),
    );
  }

  GridView getmorestockslist() {
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: holdingListMoreYou.length,
            itemBuilder: (context, index) {
              return mStocks(
                shareimage: holdingListMoreYou[index]['shareimage'],
                sharename: holdingListMoreYou[index]['sharename'],
                sharecurrentprice:
                    holdingListMoreYou[index]['sharecurrentprice'],
                shareperchantageprice:
                    holdingListMoreYou[index]['shareperchantageprice'],
              );
            },
          );
  }

  ListView getsharelistinholding() {
    return ListView.separated(
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
                icon: holdingList[index]['icon'],
              );
            },
          );
  }

  Row getcurrentinvestment() {
    return Row(
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
          );
  }

  Column getStockholdingbar() {
    return Column(
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
                          child: Icon(Icons.more_vert, size: 18),
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
                );
  }

  Widget holdings({
    required String sharename,
    required String sharequantity,
    required String sharecurrentprice,
    required String shareperchantageprice,
    required String icon,
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
          Expanded(child: SvgPicture.asset(icon)),
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

  Widget mStocks({
    required String shareimage,
    required String sharename,
    required String sharecurrentprice,
    required String shareperchantageprice,
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
            borderRadius: BorderRadius.circular(18),
            child: Image.network(shareimage, height: 23, width: 23),
          ),
          SizedBox(height: 8),
          Text(sharename, style: TextStyle(fontSize: 13)),
          Spacer(),
          Text(
            sharecurrentprice,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.blackMedium,
            ),
          ),
          SizedBox(height: 3),
          Text(
            shareperchantageprice,
            style: TextStyle(fontSize: 10, color: AppColors.greenMedium),
          ),
        ],
      ),
    );
  }
}
