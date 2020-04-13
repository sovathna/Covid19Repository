import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/covid_service.dart';
import 'package:covid19_repository/model/history.dart';
import 'package:covid19_repository/model/total.dart';

class CovidRepositoryImpl implements CovidRepository {
  final CovidService _service;

  const CovidRepositoryImpl(this._service);

  @override
  Future<Total> getTotal(String url) => _service.getTotal(url);

  @override
  Future<History> getHistory(String url) => _service.getHistory(url);

  @override
  Future<List<Total>> getCountryList(String url) =>
      _service.getCountryList(url);
}
