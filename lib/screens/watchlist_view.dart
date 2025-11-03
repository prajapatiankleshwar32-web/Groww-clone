import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';
import 'package:groww_app_design/utils/app_image.dart';

class WatchlistWidget extends StatelessWidget {
  final List<Map<String, dynamic>> watchlistStocks = [
    {
      "simage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/SBIN.webp",
      "sname": "SBI",
      "sprice": "₹949.70",

      "spercentage": '₹12.70 (1.36%)',
      'sposition': true,
    },
    {
      "simage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/M&M.webp",
      "sname": "M&M",
      "sprice": "₹3,548.90",

      "spercentage": '+61.70 (1.77%)',
      'sposition': true,
    },
    {
      "simage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/TATAMOTORS.webp",
      "sname": "TATA MOTORS",
      "sprice": "₹417.00",

      "spercentage": '₹7.00 (1.71%)',
      'sposition': true,
    },
    {
      "simage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/BANKBARODA.webp",
      "sname": "Bank of Baroda",
      "sprice": "₹291.20",

      "spercentage": '+12.80 (4.6%)',
      'sposition': true,
    },
  ];
  WatchlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: watchlistStocks.length,
              itemBuilder: (context, index) {
                return watchlist(
                  simage: watchlistStocks[index]['simage'],
                  sname: watchlistStocks[index]['sname'],
                  sprice: watchlistStocks[index]['sprice'],
                  spercentage: watchlistStocks[index]['spercentage'],
                  sposition: watchlistStocks[index]['sposition'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget watchlist({
    required String simage,
    required String sname,
    required String sprice,
    required String spercentage,
    required bool sposition,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderGreyColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(simage, height: 30, width: 30),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
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
                  Expanded(child: Text(sname, style: TextStyle(fontSize: 14))),
                  Column(
                    children: [
                      Text(sprice, style: TextStyle(fontSize: 13)),
                      Text(
                        spercentage,
                        style: TextStyle(
                          fontSize: 12,
                          color:
                              sposition
                                  ? AppColors.greenMedium
                                  : AppColors.redMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
