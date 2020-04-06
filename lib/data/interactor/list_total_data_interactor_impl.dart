import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/interactor/list_total_data_interactor.dart';
import 'package:covid19_repository/model/list_total_data_event.dart';
import 'package:covid19_repository/model/list_total_data_result.dart';

class ListTotalDataInteractorImpl implements ListTotalDataInteractor {
  final CovidRepository _repository;

  const ListTotalDataInteractorImpl(this._repository);

  @override
  Stream<ListTotalDataResult> getListTotalData() async* {
    yield ListTotalDataResultProgress();
    try {
      final url = 'https://corona.lmao.ninja/countries/';
      final datas = await _repository.getListTotalData(url);
      yield ListTotalDataResultSuccess(datas);
    } catch (e) {
      yield ListTotalDataResultFail(
        '[Interactor] error getListTotalData. ${e.toString()}',
      );
    }
  }
}
