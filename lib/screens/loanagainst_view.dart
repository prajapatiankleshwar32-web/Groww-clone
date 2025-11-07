import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groww_app_design/utils/app_colors.dart';

class Loanagainst extends StatefulWidget {
  const Loanagainst({super.key});

  @override
  State<Loanagainst> createState() => _LoanagainstState();
}

class _LoanagainstState extends State<Loanagainst> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Loan against Mutual Funds',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
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
                      '₹15,00,00,000',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 15),

                    /// ✅ Box 1
                    getmoneyagainst(),
                    SizedBox(height: 25),

                    /// ✅ Box 2 - How it Works (Groww Style)
                    gethowitworkloanagainst(),
                    SizedBox(height: 15),
                    getwahthappens(),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: getbyclicking(),
          ),
        ],
      ),
    );
  }

  Column getbyclicking() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
                print('Ischeck value = $isChecked');
              },
            ),
            Text(
              'By clicking, I confirm that i have..',
              style: TextStyle(color: AppColors.greyMedium),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isChecked ? Color(0xff00B386) : AppColors.liteGreayColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                'Check your loan limit',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: isChecked ? AppColors.white : AppColors.greyMedium,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container getwahthappens() {
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
            'What happens to your funds?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.check, size: 15),
                  SizedBox(width: 10),
                  Text('SIPs remain active', style: TextStyle(fontSize: 12)),
                  Spacer(),
                  Icon(Icons.trending_up, size: 15),
                  SizedBox(width: 10),
                  Text('MFs keep growing', style: TextStyle(fontSize: 12)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.block, size: 15),
                  SizedBox(width: 10),
                  Text('No selling of MFs', style: TextStyle(fontSize: 12)),
                  Spacer(),
                  Icon(Icons.lock_open, size: 15),
                  SizedBox(width: 10),
                  Text('Repay to unpledge', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container gethowitworkloanagainst() {
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
            icon: Icons.store,
            title: 'Featch your MFs to select your loan limit',
          ),
          howItWorksRow(
            icon: Icons.local_offer,
            title: 'Complete KYC and pladge MFs as security',
          ),
          howItWorksRow(
            icon: Icons.person,
            title: 'Withdraw any amount, up to limit',
          ),
          howItWorksRow(
            icon: Icons.store,
            title: 'Pay interest on whats due, repay anytime',
            showLine: false,
          ),
        ],
      ),
    );
  }

  Container getmoneyagainst() {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.borderGreyColor),
      ),
      child: Column(
        children: [
          Text(
            'Money against your funds',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 5),
          Text(
            'Use your Mutual Funds holdings to unlock a flexible\nCredit line in minutes',
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              personalLoanItem(
                title: 'No charges till\nyou borrow',
                images: 'assets/icons/bonds.svg',
              ),
              personalLoanItem(
                title: 'Pay interest for\nwhat you use',
                images: 'assets/icons/event.svg',
              ),
              personalLoanItem(
                title: 'Groww your\nfunds\nmarket',
                images: 'assets/icons/mtf.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }

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
