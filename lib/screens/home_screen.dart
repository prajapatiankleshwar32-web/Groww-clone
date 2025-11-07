import 'package:flutter/material.dart';
import 'package:groww_app_design/screens/futureandoptioin_view.dart';
import 'package:groww_app_design/screens/loans_view.dart';
import 'package:groww_app_design/screens/mutual_fund_view.dart';
import 'package:groww_app_design/screens/stock_screen.dart';
import 'package:groww_app_design/screens/upi_view.dart';
import 'package:groww_app_design/utils/app_colors.dart';
import 'package:groww_app_design/utils/app_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex = 0;
  final List<Widget> _bottomScreen = [
    const StockContaintScreen(),
    FutureScreen(),
    const MutualFundScreen(),
    const UpiScreen(),
    const LoansScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(logo: 'assets/images/groww.webp'),

      body: _bottomScreen[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Stocks',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'F&O'),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Mutual Funds',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.double_arrow), label: 'UPI'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Loans',
          ),
        ],
      ),
    );
  }

  AppBar appBar({required String logo}) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: Row(
        children: [
          applogoWidget(AppImage.logo),

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
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: AppColors.white,
            child: applogoWidget(AppImage.profileimage),
          ),
        ),
      ],
    );
  }

  Widget applogoWidget(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(80),
      child: Image.asset(imagePath, height: 30, width: 30, fit: BoxFit.cover),
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
