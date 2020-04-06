import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class ListTotalDataEvent extends Event {
  const ListTotalDataEvent();
}

@immutable
class GetListTotalDataEvent extends ListTotalDataEvent {
  const GetListTotalDataEvent();
}
