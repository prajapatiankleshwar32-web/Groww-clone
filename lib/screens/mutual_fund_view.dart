import 'package:flutter/material.dart';
import 'package:groww_app_design/screens/all_list_view.dart';
import 'package:groww_app_design/screens/explore_view.dart';
import 'package:groww_app_design/screens/holding_view.dart';
import 'package:groww_app_design/screens/order_view.dart';
import 'package:groww_app_design/screens/position_view.dart';
import 'package:groww_app_design/screens/watchlist_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';

class MutualFundScreen extends StatefulWidget {
  const MutualFundScreen({super.key});

  @override
  State<MutualFundScreen> createState() => _MutualFundScreenState();
}

class _MutualFundScreenState extends State<MutualFundScreen>
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
    return Column(
      children: [
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
