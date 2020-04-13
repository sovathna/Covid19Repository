import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class CountryListEvent extends Event {
  const CountryListEvent();
}

@immutable
class GetCountryListEvent extends CountryListEvent {
  const GetCountryListEvent();
}

@immutable
class FilterCountryListEvent extends CountryListEvent {
  final String filter;
  const FilterCountryListEvent(this.filter);
  @override
  List<Object> get props => [filter];
}

@immutable
class ChangeCountryListEvent extends CountryListEvent {
  final bool isFilter;
  const ChangeCountryListEvent(this.isFilter);
  @override
  List<Object> get props => [isFilter];
}
