import 'package:flutter/material.dart';
import 'package:groww_app_design/screens/fotter_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_icon.dart';
import 'package:groww_app_design/utils/app_image.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreWidget extends StatelessWidget {
  final List<Map<String, dynamic>> mostBroughtList = [
    {
      "title": "Chennai Petro Crop",
      "price": "₹979.35",
      "change": "+94.35(10.66%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/CHENNPETRO.webp",
    },
    {
      "title": "Adani Power",
      "price": "₹157.85",
      "change": "-4.72(2.90%)",
      "positiveStatus": false,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/ADANIPOWER.webp",
    },
    {
      "title": "Eternal (Zomato)",
      "price": "₹317.75",
      "change": "-11.60(3.52%)",
      "positiveStatus": false,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/ETERNAL.png",
    },
    {
      "title": "Vodafone Idea",
      "price": "₹8.73",
      "change": "+0.00(0.00%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/IDEA.webp",
    },
  ];
  final List<Map<String, dynamic>> productTools = [
    {'icon': AppIcon.bond, 'title': 'Bonda'},
    {'icon': AppIcon.mtf, 'title': 'MTF'},
    {'icon': AppIcon.event, 'title': 'Event'},
    {'icon': AppIcon.ipo, 'title': 'IPO'},
    {'icon': AppIcon.intraday, 'title': 'Intraday'},
  ];
  final List<Map<String, dynamic>> topmoverslist = [
    {
      "title": "Bharat Electronics",
      "price": "₹426.10",
      "change": "+16.20(3.95%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/BEL.webp",
    },
    {
      "title": "Canara Bank",
      "price": "₹136.99",
      "change": "+4.10(3.09%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/CANBK.webp",
    },
    {
      "title": "United Spirits",
      "price": "₹1,431.40",
      "change": "+36.80(2.64%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/UNITDSPR.webp",
    },
    {
      "title": "Punjab National Bank",
      "price": "₹122.89",
      "change": "+2.80(2.33%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/PNB.webp",
    },
  ];
  final List<Map<String, dynamic>> mosttrededtoday = [
    {
      "title": "Eternal (Zomato)",
      "price": "₹317.75",
      "change": "-11.60(3.52%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/ETERNAL.png',
    },
    {
      "title": "Chennai Petro Corp",
      "price": "₹979.35",
      "change": "+94.35(10.66%)",
      "positiveStatus": true,
      "image":
          "https://assets-netstorage.groww.in/stock-assets/logos2/CHENNPETRO.webp",
    },
    {
      "title": "Adani Power",
      "price": "₹157.85",
      "change": "-4.72(2.90%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/ADANIPOWER.webp',
    },
    {
      "title": "Navin Fluorine Intl",
      "price": "₹5,687.40",
      "change": "+710.60(14.28%)",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/NAVINFLUOR.webp',
    },
  ];
  final List<Map<String, dynamic>> topintraday = [
    {
      "title": "TCS",
      "price": "₹3,0558.00",
      "change": "+22.70(0.75%)",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/TCS.webp',
    },
    {
      "title": "Infosys",
      "price": "₹1,482.30",
      "change": "-11.50(0.77%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/INFY.webp',
    },
    {
      "title": "Reliance Industry",
      "price": "₹1,486.40",
      "change": "-2.10(0.14%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/RELIANCE.webp',
    },
    {
      "title": "ONGC",
      "price": "₹255.37",
      "change": "+0.84(0.33%)",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/ONGC.webp',
    },
  ];
  final List<Map<String, dynamic>> vshockers = [
    {
      "title": "AVT Natural Products",
      "price": "₹34,807%",
      "change": "+1,27,84,459",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/AVTNaturalProd_48008179570_1840.png',
    },
    {
      "title": "Navin Fluourine International",
      "price": "₹5,687.40%",
      "change": "+52,51686",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/NAVINFLUOR.webp',
    },
    {
      "title": "Vedanta",
      "price": "₹493.55%",
      "change": "+1,14,40,182",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/VEDL.webp',
    },
    {
      "title": "Inventure Knowledge Solution",
      "price": "₹1645.90",
      "change": "+22,34,234",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/IKS.webp',
    },
    {
      "title": "Strides Pharma Science",
      "price": "₹934.70",
      "change": "+53,42,689",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/StridesPharma_63459406134_16996.png',
    },
  ];
  final List<Map<String, dynamic>> popularEtf = [
    {
      "title": "Nippon India ETF Nifty 50 BeES",
      "price": "₹291.08",
      "change": "-1.50(0.51%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/mf-assets/logos/reliance_groww.png',
    },
    {
      "title": "Nippon India ETF Gold BeES",
      "price": "₹100.02",
      "change": "+0.34(0.34%)",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/mf-assets/logos/reliance_groww.png',
    },
  ];
  final List<Map<String, dynamic>> etfByGroww = [
    {
      "title": "Groww Gold ETF",
      "price": "₹118.02",
      "change": "+0.20(0.17%)",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/mf-assets/logos/indiabulls_groww.png',
    },
    {
      "title": "Groww Silver ETF",
      "price": "₹146.76",
      "change": "+2.07(1.43%)",
      "positiveStatus": true,
      "image":
          'https://assets-netstorage.groww.in/mf-assets/logos/indiabulls_groww.png',
    },
  ];
  final List<Map<String, dynamic>> stocksInNews = [
    {
      "title": "Jindal SAW",
      "price": "₹175.25",
      "change": "-1.08(0.61%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/JINDALSAW.webp',
    },
    {
      "title": "LIC",
      "price": "₹894.70",
      "change": "-6.05(0.67%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/mf-assets/logos/lic_groww.png',
    },
    {
      "title": "Dr Reddy's Labs ",
      "price": "₹1,197.60",
      "change": "-4.60(0.38%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/RDY.webp',
    },
    {
      "title": "Tata Steel",
      "price": "₹182.84",
      "change": "-1.51(0.82%)",
      "positiveStatus": false,
      "image":
          'https://assets-netstorage.groww.in/stock-assets/logos2/TATASTEEL.webp',
    },
  ];

  ExploreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Text(
                'Most bought on Groww',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 8),

            mostBought(),

            SizedBox(height: 20),
            productandtools(),
            SizedBox(height: 15),
            mainboard(),
            SizedBox(height: 18),
            Topmovers(),
            SizedBox(height: 10),

            intraday(),
            SizedBox(height: 15),
            Text(
              'Most traded in MTF',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            getMostTradedTodayView(),
            SizedBox(height: 20),
            getIntradayHeadingView(),
            SizedBox(height: 15),
            getTopinradayview(),
            SizedBox(height: 20),
            getvolumestoks(),
            SizedBox(height: 10),
            getVolumeshockers(),
            SizedBox(height: 15),
            getpopulatEtf(),
            SizedBox(height: 15),
            getpopularstocketf(),
            SizedBox(height: 12),
            getmoreetf(),

            SizedBox(height: 15),
            gettrendingstocks(),
            SizedBox(height: 15),
            getnewsstocks(),
            SizedBox(height: 12),
            getpopularstocks(),
            SizedBox(height: 20),
            FotterWidget(),
          ],
        ),
      ),
    );
  }

  GridView getpopularstocks() {
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: stocksInNews.length,
            itemBuilder: (context, index) {
              return explore(
                tital: stocksInNews[index]['title'],
                price: stocksInNews[index]['price'],
                percantage: stocksInNews[index]['change'],
                image: stocksInNews[index]['image'],
                positiveStatus: stocksInNews[index]['positiveStatus'],
              );
            },
          );
  }

  Row getnewsstocks() {
    return Row(
            children: [
              Expanded(
                child: Text(
                  'Stocks in news',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Market news',
                style: TextStyle(fontSize: 13, color: AppColors.greyMedium),
              ),
            ],
          );
  }

  GridView gettrendingstocks() {
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: etfByGroww.length,
            itemBuilder: (context, index) {
              return explore(
                tital: etfByGroww[index]['title'],
                price: etfByGroww[index]['price'],
                percantage: etfByGroww[index]['change'],
                image: etfByGroww[index]['image'],
                positiveStatus: etfByGroww[index]['positiveStatus'],
              );
            },
          );
  }

  Row getmoreetf() {
    return Row(
            children: [
              Expanded(
                child: Text(
                  'ETFs by Groww',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'See more >',
                style: TextStyle(fontSize: 13, color: AppColors.greyMedium),
              ),
            ],
          );
  }

  GridView getpopularstocketf() {
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: popularEtf.length,
            itemBuilder: (context, index) {
              return explore(
                tital: popularEtf[index]['title'],
                price: popularEtf[index]['price'],
                percantage: popularEtf[index]['change'],
                image: popularEtf[index]['image'],
                positiveStatus: popularEtf[index]['positiveStatus'],
              );
            },
          );
  }

  Column getpopulatEtf() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Popular ETFs for SIP',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          );
  }

  ListView getVolumeshockers() {
    return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: vshockers.length,
            itemBuilder: (context, index) {
              return volumeShockers(
                tital: vshockers[index]['title'],
                price: vshockers[index]['price'],
                percantage: vshockers[index]['change'],
                image: vshockers[index]['image'],
                positiveStatus: vshockers[index]['positiveStatus'],
              );
            },
          );
  }

  Column getvolumestoks() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Volume shockers',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                'Stock trading above their weekly avg volume',
                style: TextStyle(fontSize: 13, color: AppColors.greyMedium),
              ),
            ],
          );
  }

  GridView getTopinradayview() {
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: topintraday.length,
            itemBuilder: (context, index) {
              return explore(
                tital: topintraday[index]['title'],
                price: topintraday[index]['price'],
                percantage: topintraday[index]['change'],
                image: topintraday[index]['image'],
                positiveStatus: topintraday[index]['positiveStatus'],
              );
            },
          );
  }

  Row getIntradayHeadingView() {
    return Row(
            children: [
              Expanded(
                child: Text(
                  'Top intraday',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                'Intraday screener',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyMedium,
                ),
              ),
            ],
          );
  }

  GridView getMostTradedTodayView() {
    return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: mosttrededtoday.length,
            itemBuilder: (context, index) {
              return explore(
                tital: mosttrededtoday[index]['title'],
                price: mosttrededtoday[index]['price'],
                percantage: mosttrededtoday[index]['change'],
                image: mosttrededtoday[index]['image'],
                positiveStatus: mosttrededtoday[index]['positiveStatus'],
              );
            },
          );
  }

  Widget volumeShockers({
    required String tital,
    required String price,
    required String percantage,
    required String image,
    required bool positiveStatus,
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
              child: Image.network(image, height: 30, width: 30),
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
                  Expanded(child: Text(tital, style: TextStyle(fontSize: 14))),
                  Column(
                    children: [
                      Text(percantage, style: TextStyle(fontSize: 13)),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 12,
                          color:
                              positiveStatus
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

  Widget producttools({required String title, required String icon}) {
    return Container(
      child: Column(
        children: [
          SvgPicture.asset(icon, width: 30, height: 28),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget explore({
    required String tital,
    required String price,
    required String percantage,
    required String image,
    required bool positiveStatus,
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
            child: Image.network(image, height: 23, width: 23),
          ),
          SizedBox(height: 8),
          Text(tital, style: TextStyle(fontSize: 13)),
          Spacer(),
          Text(
            price,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.blackMedium,
            ),
          ),
          SizedBox(height: 3),
          Text(
            percantage,
            style: TextStyle(
              fontSize: 13,
              color:
                  positiveStatus ? AppColors.greenMedium : AppColors.redMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget mostBought() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: mostBroughtList.length,
      itemBuilder: (context, index) {
        return explore(
          tital: mostBroughtList[index]['title'],
          price: mostBroughtList[index]['price'],
          percantage: mostBroughtList[index]['change'],
          image: mostBroughtList[index]['image'],
          positiveStatus: mostBroughtList[index]['positiveStatus'],
        );
      },
    );
  }

  Widget productandtools() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Product and tools',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),

        Text('See more', style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget mainboard() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: productTools.length,
      itemBuilder: (context, index) {
        return producttools(
          title: productTools[index]['title'],
          icon: productTools[index]['icon'],
        );
      },
    );
  }

  Widget Topmovers() {
    return Text(
      'Top movers today',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    );
  }

  Widget intraday() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: topmoverslist.length,
      itemBuilder: (context, index) {
        return explore(
          tital: topmoverslist[index]['title'],
          price: topmoverslist[index]['price'],
          percantage: topmoverslist[index]['change'],
          image: topmoverslist[index]['image'],
          positiveStatus: topmoverslist[index]['positiveStatus'],
        );
      },
    );
  }
}
