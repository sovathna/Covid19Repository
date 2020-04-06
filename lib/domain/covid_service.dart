import 'package:covid19_repository/base/service.dart';
import 'package:covid19_repository/model/historical_data.dart';
import 'package:covid19_repository/model/total_data.dart';

abstract class CovidService extends Service {
  Future<TotalData> getTotalData(String url);
  Future<HistoricalData> getHistoricalData(String url);
}
