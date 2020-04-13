import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/interactor/total_interactor.dart';
import 'package:covid19_repository/model/events/total_event.dart';
import 'package:covid19_repository/model/results/total_result.dart';

class TotalInteractorImpl implements TotalInteractor {
  final CovidRepository _repository;

  const TotalInteractorImpl(this._repository);

  @override
  Stream<TotalResult> getTotal(GetTotalEvent event) async* {
    yield TotalResultProgress();
    try {
      final url = event.country == 'all'
          ? 'https://corona.lmao.ninja/all'
          : 'https://corona.lmao.ninja/countries/${event.country}';
      final totalData = await _repository.getTotal(url);
      yield TotalResultSuccess(totalData);
    } catch (e) {
      yield TotalResultFail(
        '[Interactor] error getTotalData. ${e.toString()}',
      );
    }
  }
}
