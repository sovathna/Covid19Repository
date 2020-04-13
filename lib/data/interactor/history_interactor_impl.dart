import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/interactor/history_interactor.dart';
import 'package:covid19_repository/model/events/history_event.dart';
import 'package:covid19_repository/model/results/history_result.dart';

class HistoryInteractorImpl implements HistoryInteractor {
  final CovidRepository _repository;

  const HistoryInteractorImpl(this._repository);

  @override
  Stream<HistoryResult> getHistoricalData(GetHistoryEvent event) async* {
    yield HistoryResultProgress();
    try {
      final url = 'https://corona.lmao.ninja/v2/historical/${event.country}/';
      final data = await _repository.getHistory(url);
      yield HistoryResultSuccess(data);
    } catch (e) {
      yield HistoryResultFail(
        '[Interactor] error getHistoricalData. ${e.toString()}',
      );
    }
  }
}
