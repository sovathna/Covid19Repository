import 'package:covid19_repository/base/repository.dart';
import 'package:covid19_repository/model/history.dart';
import 'package:covid19_repository/model/total.dart';

abstract class CovidRepository extends Repository {
  Future<Total> getTotal(String url);
  Future<History> getHistory(String url);
  Future<List<Total>> getCountryList(String url);
}
