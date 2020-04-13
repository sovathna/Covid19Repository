import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class HistoryEvent extends Event {
  const HistoryEvent();
}

@immutable
class GetHistoryEvent extends HistoryEvent {
  final String country;

  const GetHistoryEvent({this.country});

  @override
  List<Object> get props => [country];
}
