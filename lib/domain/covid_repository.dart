import 'package:covid19_repository/base/repository.dart';
import 'package:covid19_repository/model/historical_data.dart';
import 'package:covid19_repository/model/total_data.dart';

abstract class CovidRepository extends Repository {
  Future<TotalData> getTotalData(String url);
  Future<HistoricalData> getHistoricalData(String url);
  Future<List<TotalData>> getListTotalData(String url);
}
