import 'package:fl_chart/fl_chart.dart';
import 'package:homeowner_hub/store/store.dart';

class EnergyUsageUtil {
  // 2 weeks of data

  static List<FlSpot> get costGraphData {
    List list = Store.readUsage();
    return List.generate(14, (index) {
      String curr = DateTime.now()
          .subtract(Duration(days: index))
          .toString()
          .substring(0, 10);
      double sum = 0;
      List temp = list.where((element) => element["D"] == curr).toList();
      for (var element in temp) {
        sum += element["E"] * element["P"];
      }
      return FlSpot(14.0 - index, sum);
    });
  }

  static List<FlSpot> get usageGraphData {
    List list = Store.readUsage();
    return List.generate(14, (index) {
      String curr = DateTime.now()
          .subtract(Duration(days: index))
          .toString()
          .substring(0, 10);
      double sum = 0;
      List temp = list.where((element) => element["D"] == curr).toList();
      for (var element in temp) {
        sum += element["E"];
      }
      return FlSpot(14.0 - index, sum);
    });
  }

  static double get avgCostPerDay {
    List list = Store.readUsage();
    Set set = {};
    double sum = 0;
    for (var element in list) {
      sum += element["E"] * element["P"];
      set.add(element["D"]);
    }
    return sum / set.length;
  }

  static double get avgKWHPerDay {
    List list = Store.readUsage();
    Set set = {};
    double sum = 0;
    for (var element in list) {
      sum += element["E"];
      set.add(element["D"]);
    }
    return sum / set.length;
  }

  static int get daysTracked {
    List list = Store.readUsage();
    Set set = {};
    for (var element in list) {
      set.add(element["D"]);
    }
    return set.length;
  }
}
