import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:icons_plus/icons_plus.dart';

class FutureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> equityCommodity = [
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos/GIDXNIFTY.png",
      "sharename": "Nifty 50",
      "shareprice": "25,59.65",
      "sharepercaentage": "-165.70 (0.64%)",
      'sharepriceindigater': false,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos/GIDXBSESN.png",
      "sharename": "SENSEX",
      "shareprice": "83,459.15",
      "sharepercaentage": "-519.34 (0.62%)",
      'sharepriceindigater': false,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos/GIDXNIFTYBANK.png",
      "sharename": "BANK NIFTY",
      "shareprice": "57,827.05",
      "sharepercaentage": "-274.40 (0.47%)",
      'sharepriceindigater': false,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/SBIN.webp",
      "sharename": "SBI",
      "shareprice": "957.60",
      "sharepercaentage": "+7.90 (0.83%)",
      'sharepriceindigater': true,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/MARUTI.webp",
      "sharename": "Maruti Suzuki",
      "shareprice": "15,374.00",
      "sharepercaentage": "-277.00 (1.77%)",
      'sharepriceindigater': false,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/ADANIENT.webp",
      "sharename": "Adani Enterprisess",
      "shareprice": "2,419.80",
      "sharepercaentage": "-47.80 (1.91%)",
      'sharepriceindigater': false,
    },
  ];
  final List<Map<String, dynamic>> topgainerslist = [
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/POWERINDIA.webp",
      "sharename": "Hitachi Energy",
      "shareprice": "₹20,457.00",
      "sharepercaentage": "+2,538.00 (14.16%)",
      'sharepriceindigater': true,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/DELHIVERY.webp",
      "sharename": "Delhivery",
      "shareprice": "₹484.85",
      "sharepercaentage": "+12.60 (2.67%)",
      'sharepriceindigater': true,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/DABUR.webp",
      "sharename": "Dabur India",
      "shareprice": "₹517.05",
      "sharepercaentage": "+13.75 (2.73%)",
      'sharepriceindigater': true,
    },
    {
      "shareimage":
          "https://assets-netstorage.groww.in/stock-assets/logos2/INDUSTOWER.webp",
      "sharename": "Indus Towers",
      "shareprice": "₹392.55",
      "sharepercaentage": "9.80 (2.67%)",
      'sharepriceindigater': true,
    },
  ];
  final List<Map<String, dynamic>> cmdtlist = [
    {
      'cmdtimages':
          'https://assets-netstorage.groww.in/stock-assets/logos/CRUDEOIL.webp',
      'cmdtnames': 'Crude Oil',
      'cmdtprice': '₹5,401',
    },
    {
      'cmdtimages':
          'https://assets-netstorage.groww.in/stock-assets/logos/GOLDM.webp',
      'cmdtnames': 'Gold',
      'cmdtprice': '₹1,19,797',
    },
    {
      'cmdtimages':
          'https://assets-netstorage.groww.in/stock-assets/logos/SILVERM.webp',
      'cmdtnames': 'Silver',
      'cmdtprice': '₹1,45,484',
    },
    {
      'cmdtimages':
          'https://assets-netstorage.groww.in/stock-assets/logos/GOLDGUINEA.webp',
      'cmdtnames': 'Gold Guinea',
      'cmdtprice': '₹1230',
    },
  ];

  FutureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.borderGreyColor),
              ),
              child: Row(
                children: [
                  Icon(Iconsax.chart_2_outline),
                  SizedBox(width: 15),
                  Text(
                    'Scalper',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(
                        255,
                        118,
                        161,
                        236,
                      ).withValues(alpha: 0.1),
                    ),
                    child: Text(
                      '1-tap Trading >',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Top Traded',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                equitycomodity(title: 'Equity'),
                SizedBox(width: 15),
                equitycomodity(title: 'Commodities'),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: equityCommodity.length,
              itemBuilder: (context, index) {
                return equitycomoditylist(
                  shareimage: equityCommodity[index]['shareimage'],
                  sharename: equityCommodity[index]['sharename'],
                  shareprice: equityCommodity[index]['shareprice'],
                  sharepercaentage: equityCommodity[index]['sharepercaentage'],
                  sharepriceindigater:
                      equityCommodity[index]['sharepriceindigater'],
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              children: [
                topmoversindigator(indegatorname: 'Gainers'),
                SizedBox(width: 12),
                topmoversindigator(indegatorname: 'Losers'),
                SizedBox(width: 12),
                topmoversindigator(indegatorname: '1 day'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Company',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  '<> Market Price',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: topgainerslist.length,
              itemBuilder: (context, index) {
                return topgainerloser(
                  shareimage: topgainerslist[index]['shareimage'],
                  sharename: topgainerslist[index]['sharename'],
                  shareprice: topgainerslist[index]['shareprice'],
                  sharepercaentage: topgainerslist[index]['sharepercaentage'],
                  sharepriceindigater:
                      topgainerslist[index]['sharepriceindigater'],
                );
              },
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Commodities',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,

                physics: NeverScrollableScrollPhysics(),
                itemCount: cmdtlist.length,
                separatorBuilder: (context, index) => SizedBox(width: 38),
                itemBuilder: (context, index) {
                  return commodities(
                    cmdtimages: cmdtlist[index]['cmdtimages'],
                    cmdtnames: cmdtlist[index]['cmdtnames'],
                    cmdtprice: cmdtlist[index]['cmdtprice'],
                  );
                },
              ),
            ),
             SizedBox(height: 20),
            FotterWidget(),
          ],
        ),
      ),
    );
  }

  Widget equitycomodity({required String title}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGreyColor),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      ),
    );
  }
  ////

  Widget equitycomoditylist({
    required String shareimage,
    required String sharename,
    required String shareprice,
    required String sharepercaentage,
    required bool sharepriceindigater,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderGreyColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(shareimage, height: 30, width: 30),
            ),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sharename,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(shareprice, style: TextStyle(fontSize: 13)),
                          Text(
                            sharepercaentage,
                            style: TextStyle(
                              fontSize: 13,
                              color:
                                  sharepriceindigater
                                      ? AppColors.greenMedium
                                      : AppColors.redMedium,
                            ),
                          ),
                        ],
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

  Widget topmoversindigator({required String indegatorname}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderGreyColor),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Text(
        indegatorname,
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget topgainerloser({
    required String shareimage,
    required String sharename,
    required String shareprice,
    required String sharepercaentage,
    required bool sharepriceindigater,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.borderGreyColor),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(shareimage, height: 30, width: 30),
            ),
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
                  Expanded(
                    child: Text(sharename, style: TextStyle(fontSize: 14)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        shareprice,
                        style: TextStyle(
                          fontSize: 14,
                          color:
                              sharepriceindigater
                                  ? AppColors.greenMedium
                                  : AppColors.redMedium,
                        ),
                      ),
                      Text(sharepercaentage, style: TextStyle(fontSize: 12)),
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

  Widget commodities({
    required String cmdtimages,
    required String cmdtnames,
    required String cmdtprice,
  }) {
    return Container(
      child: Column(
        children: [
          Image.network(cmdtimages, width: 30, height: 28),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                cmdtnames,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              Text(
                cmdtprice,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
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
