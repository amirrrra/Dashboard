import 'package:dashboard/widgets/card_widget.dart';
import 'package:dashboard/widgets/drawer_widget.dart';
import 'package:dashboard/widgets/expenses_widget.dart';
import 'package:dashboard/widgets/invoice_widget.dart';
import 'package:flutter/material.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: [
              Expanded(
                child: DrawerWidget(),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 32, right: 24, top: 40),
                  child: Column(
                    children: [
                      ExpensesWidget(),
                      SizedBox(height: 24),
                      InvoiceWidget(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 40, right: 32),
                  child: Column(
                    children: [
                      CardWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
