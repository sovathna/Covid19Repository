import 'package:covid19_repository/base/result.dart';
import 'package:covid19_repository/model/total.dart';
import 'package:meta/meta.dart';

abstract class CountryListResult extends Result {
  const CountryListResult();
}

@immutable
class CountryListResultProgress extends CountryListResult {
  const CountryListResultProgress();
}

@immutable
class CountryListResultSuccess extends CountryListResult {
  final List<Total> datas;

  const CountryListResultSuccess(this.datas);

  @override
  List<Object> get props => [datas];
}

@immutable
class CountryListResultFail extends CountryListResult {
  final String error;

  const CountryListResultFail(this.error);

  @override
  List<Object> get props => [error];
}
