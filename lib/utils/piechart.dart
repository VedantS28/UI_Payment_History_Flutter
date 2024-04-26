import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PieChart(
        swapAnimationDuration: const Duration(milliseconds: 750),
        PieChartData(
          sections: [
            PieChartSectionData(
                value: 30,
                color: Colors.cyan,
                title: "Inflow",
                titleStyle: TextStyle(color: Colors.white),
                titlePositionPercentageOffset: 1.6,
                badgeWidget: Text(
                  "\$950.99",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                badgePositionPercentageOffset: 2.2),
            PieChartSectionData(
                value: 50,
                showTitle: true,
                color: Colors.orange,
                title: "Overflow",
                titleStyle: TextStyle(color: Colors.white),
                titlePositionPercentageOffset: 2.2,
                badgeWidget: Text(
                  "-\$70.99",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                badgePositionPercentageOffset: 1.5),
          ],
          sectionsSpace: 9,
          borderData: FlBorderData(
            border: Border.all(width: 5),
          ),
        ),
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "Balance",
            style: TextStyle(color: Colors.white),
          )),
          Center(
            child: Text(
              "\$879",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      )
    ]);
  }
}
