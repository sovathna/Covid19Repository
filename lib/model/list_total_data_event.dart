import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class ListTotalDataEvent extends Event {
  const ListTotalDataEvent();
}

@immutable
class GetListTotalDataEvent extends ListTotalDataEvent {
  const GetListTotalDataEvent();
}

@immutable
class FilterListTotalDataEvent extends ListTotalDataEvent {
  final String filter;
  const FilterListTotalDataEvent(this.filter);
  @override
  List<Object> get props => [filter];
}

@immutable
class ChangeListTotalDataEvent extends ListTotalDataEvent {
  final bool isFilter;
  const ChangeListTotalDataEvent(this.isFilter);
  @override
  List<Object> get props => [isFilter];
}
