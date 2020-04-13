import 'package:covid19_repository/base/interactor.dart';
import 'package:covid19_repository/model/results/country_list_result.dart';

abstract class CountryListInteractor extends Interactor {
  Stream<CountryListResult> getCountryList();
}
