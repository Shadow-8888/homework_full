/*import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui7/constants.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart( 
        BarChartData(barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false), 
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false)
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true),
              String getWeek (double value) {
                List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                return days[value.toInt()%7];
              }

            ),
          ),
        ),
      ),
    );
  }
}


List<BarChartGroupData> getBarGroups(){
  List<double> barChartDatas=[6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups=[];
  barChartDatas.asMap().forEach((i, value) {
     barChartGroups.add(
      BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: value,
            color: i==4 ? kPrimaryColor: kInactiveChartColor,
            width: 16, //toY: 0,
          ),
        ],
      ),
    );
  }
  );

  return barChartGroups;
}
*/

/*String getWeek(double value){
  switch (value.toInt()){
    case 0:
      return 'MON';
    case 1:
      return 'TUE';
    case 2:
      return 'WED';
    case 3:
      return 'THU';
    case 4:
      return 'FRI';
    case 5:
      return 'SAT';
    case 6:
      return 'SUN';
    default:
      return'';

  }
}
*/
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui7/constants.dart';

class WeeklyChart extends StatelessWidget {
  const WeeklyChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
          barGroups: getBarGroups(),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false), // Panjarani o‘chirib qo‘yamiz
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
             //   textStyle: Textstyle(color: Color(0xFF7589A2),),
                getTitlesWidget: (double value, TitleMeta meta) {
                  List<String> days = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      days[value.toInt()],
                      style: const TextStyle(
                        fontSize: 10,
                        color:Color(0xFF7589A2),
                     //   fontSize:  10,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  );
                },
                reservedSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<BarChartGroupData> getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 10, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach((i, value) {
    barChartGroups.add(
      BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: value,
            color: i == 4 ? kPrimaryColor : kInactiveChartColor,
            width: 16,
          //  borderRadius: BorderRadius.circular(4), // Stollarga yumaloqlik beramiz
          ),
        ],
      ),
    );
  });
  return barChartGroups;
}
