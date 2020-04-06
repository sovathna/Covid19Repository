import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/covid_service.dart';
import 'package:covid19_repository/model/historical_data.dart';
import 'package:covid19_repository/model/total_data.dart';

class CovidRepositoryImpl implements CovidRepository {
  final CovidService _service;

  const CovidRepositoryImpl(this._service);

  @override
  Future<TotalData> getTotalData(String url) => _service.getTotalData(url);

  @override
  Future<HistoricalData> getHistoricalData(String url) =>
      _service.getHistoricalData(url);
}
