import 'package:covid19_repository/base/service.dart';
import 'package:covid19_repository/model/history.dart';
import 'package:covid19_repository/model/total.dart';

abstract class CovidService extends Service {
  Future<Total> getTotal(String url);
  Future<History> getHistory(String url);
  Future<List<Total>> getCountryList(String url);
}
