import 'package:covid19_repository/domain/covid_repository.dart';
import 'package:covid19_repository/domain/interactor/country_list_interactor.dart';
import 'package:covid19_repository/model/results/country_list_result.dart';

class CountryListInteractorImpl implements CountryListInteractor {
  final CovidRepository _repository;

  const CountryListInteractorImpl(this._repository);

  @override
  Stream<CountryListResult> getCountryList() async* {
    yield CountryListResultProgress();
    try {
      final url = 'https://corona.lmao.ninja/countries/';
      final datas = await _repository.getCountryList(url);
      yield CountryListResultSuccess(datas);
    } catch (e) {
      yield CountryListResultFail(
        '[Interactor] error getListTotalData. ${e.toString()}',
      );
    }
  }
}
