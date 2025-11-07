import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groww_app_design/utils/app_colors.dart';

class Inatenthasal extends StatelessWidget {
  const Inatenthasal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Personal Loan',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'LOAN UP TO',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greyMedium,
                ),
              ),
              Text(
                '₹4,00,000',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              SizedBox(height: 15),

              /// ✅ Box 1
              getpersonalloan(),

              SizedBox(height: 15),

              /// ✅ Box 2 - How it Works (Groww Style)
              gethowitworks(),
            ],
          ),
        ),
      ),
    );
  }

  Container gethowitworks() => kgethowitworl();

  Container kgethowitworl() => getloanagainst();

  Container getloanagainst() {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderGreyColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How it works',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),

          howItWorksRow(
            icon: Icons.currency_rupee_sharp,
            title: 'Check your approved Loan amount',
          ),
          howItWorksRow(
            icon: Icons.sell,
            title: 'Choose your loan amount and EMI',
          ),
          howItWorksRow(
            icon: Icons.person,
            title: 'Setup AutoPay and complete KYC',
          ),
          howItWorksRow(
            icon: Icons.store,
            title: 'Seamless EMI auto-repayments',
            showLine: false,
          ),
        ],
      ),
    );
  }

  Container getpersonalloan() {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderGreyColor),
      ),
      child: Column(
        children: [
          Text(
            'Instant hassle free money',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 5),
          Text('Finance your dreams with flexible EMI plans'),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              personalLoanItem(
                title: 'No paperwork\nrequired',
                images: 'assets/icons/bonds.svg',
              ),
              personalLoanItem(
                title: 'Disbursal in 10\nminutes',
                images: 'assets/icons/event.svg',
              ),
              personalLoanItem(
                title: 'No hidden\ncharges',
                images: 'assets/icons/mtf.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// ✅ LEFT ICON + DOTTED LINE + TEXT
  Widget howItWorksRow({
    required IconData icon,
    required String title,
    bool showLine = true,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: AppColors.liteGreayColor,
              child: SizedBox(
                height: 20,
                width: 20,
                child: Icon(icon, size: 20, color: Color(0xff33C189)),
              ),
            ),
            if (showLine)
              Container(
                height: 25,
                width: 2,
                decoration: const BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Color(0xff33C189),
                      width: 1.6,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }

  /// ✅ PERSONAL LOAN SMALL ICON ITEMS
  Widget personalLoanItem({required String title, required String images}) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.greenMedium,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(images, height: 22, width: 22),
        ),
        SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
