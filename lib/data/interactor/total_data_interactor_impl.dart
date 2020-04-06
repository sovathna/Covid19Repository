import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/interactor/total_data_interactor.dart';
import 'package:covid19_repository/model/total_data_event.dart';
import 'package:covid19_repository/model/total_data_result.dart';

class TotalDataInteractorImpl implements TotalDataInteractor {
  final CovidRepository _repository;

  const TotalDataInteractorImpl(this._repository);

  @override
  Stream<TotalDataResult> getTotalData(GetTotalDataEvent event) async* {
    yield TotalDataResultProgress();
    try {
      final url = event.country == 'all'
          ? 'https://corona.lmao.ninja/all'
          : 'https://corona.lmao.ninja/countries/${event.country}';
      final totalData = await _repository.getTotalData(url);
      yield TotalDataResultSuccess(totalData);
    } catch (e) {
      yield TotalDataResultFail(
        '[Interactor] error getTotalData. ${e.toString()}',
      );
    }
  }
}
