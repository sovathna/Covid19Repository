import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/interactor/historical_data_interactor.dart';
import 'package:covid19_repository/model/historical_data_event.dart';
import 'package:covid19_repository/model/historical_data_result.dart';

class HistoricalDataInteractorImpl implements HistoricalDataInteractor {
  final CovidRepository _repository;

  const HistoricalDataInteractorImpl(this._repository);

  @override
  Stream<HistoricalDataResult> getHistoricalData(
      GetHistoricalDataEvent event) async* {
    yield HistoricalDataResultProgress();
    try {
      final url = 'https://corona.lmao.ninja/v2/historical/${event.country}/';
      final data = await _repository.getHistoricalData(url);
      yield HistoricalDataResultSuccess(data);
    } catch (e) {
      yield HistoricalDataResultFail(
        '[Interactor] error getHistoricalData. ${e.toString()}',
      );
    }
  }
}
