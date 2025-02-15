import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../utils/format_utils.dart';

class OverviewCardList extends StatelessWidget {
  const OverviewCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        children: [
          _buildOverviewCard(context, 'Tổng Thu Nhập', 5000000, Colors.black, Icons.account_balance_wallet, () {
            context.go('/totalSalary');
          }),
          _buildOverviewCard(context, 'Tổng Chi Tiêu', 5000000, Colors.white, Icons.shopping_cart, () {
            context.go('/totalExpense');
          }),
          _buildOverviewCard(context, 'Hàng Tháng', 5000000, Colors.black, Icons.account_balance, () {
            context.go('/totalMonthly');
          }),
        ],
      ),
    );
  }

  Widget _buildOverviewCard(BuildContext context, String title, int amount, Color textColor, IconData icon, VoidCallback? onTap) {
    String formatedAmount = formatCurrency(amount);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: BoxDecoration(
          color: textColor == Colors.black ? Colors.white : Colors.teal,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 3, offset: const Offset(0, 3))],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Icon(icon, color: textColor, size: 22),
              const SizedBox(height: 10),
              Text(title, style: TextStyle(fontSize: 12, color: textColor)),
              const SizedBox(height: 35),
              Text(
                formatedAmount,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
