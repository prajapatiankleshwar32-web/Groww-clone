import 'package:flutter/material.dart';
import 'package:groww_app_design/screens/all_list_view.dart';
import 'package:groww_app_design/screens/explore_view.dart';
import 'package:groww_app_design/screens/holding_view.dart';
import 'package:groww_app_design/screens/order_view.dart';
import 'package:groww_app_design/screens/position_view.dart';
import 'package:groww_app_design/screens/watchlist_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_image.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      indexsummery(
                        title: "NIFTY 50",
                        price: '25,877.85',
                        percentagechange: '-176.05(0.68%)',
                      ),
                      SizedBox(width: 18),
                      indexsummery(
                        title: 'SENSEX',
                        price: '84,404.46',
                        percentagechange: '-592.67(-592.67)',
                      ),
                      SizedBox(width: 18),
                      indexsummery(
                        title: 'BANK NIFTY',
                        price: '58,031.10',
                        percentagechange: '-354.15(0.61%)',
                      ),
                      SizedBox(width: 18),
                      indexsummery(
                        title: 'ALL Indices',
                        price: '50',
                        percentagechange: '543(1%)',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              padding: EdgeInsets.zero, // 👈 Removes the built-in side padding
              labelPadding: EdgeInsets.only(
                right: 16,
              ), // 👈 Controls spacing between tabs
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              indicatorWeight: 1,
              tabs: const [
                Tab(text: "Explore"),
                Tab(text: "Holdings"),
                Tab(text: "Position"),
                Tab(text: "Order"),
                Tab(text: "Watchlist"),
                Tab(text: "All Watchlist"),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ExploreWidget(),
                HoldingWidget(),
                PositionWidget(),
                OrderWidget(),
                WatchlistWidget(),
                AllListWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Row(
        children: [
          Image.asset(AppImage.logo, height: 30, width: 30),
          SizedBox(width: 13),
          Text(
            'Stocks',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search, size: 21)),
        IconButton(onPressed: () {}, icon: Icon(Icons.qr_code, size: 21)),
        CircleAvatar(child: Icon(Icons.person)),
      ],
    );
  }

  Widget indexsummery({
    required String title,
    required String price,
    required String percentagechange,
  }) {
    return Container(
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: AppColors.blackMedium,
            ),
          ),
          SizedBox(height: 3),
          Row(
            spacing: 10,
            children: [
              Text(
                price,
                style: TextStyle(color: AppColors.blackMedium, fontSize: 9),
              ),

              Text(
                percentagechange,
                style: TextStyle(color: AppColors.redMedium, fontSize: 9),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
