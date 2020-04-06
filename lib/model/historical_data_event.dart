import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class HistoricalDataEvent extends Event {
  const HistoricalDataEvent();
}

@immutable
class GetHistoricalDataEvent extends HistoricalDataEvent {
  final String country;

  const GetHistoricalDataEvent({this.country});

  @override
  List<Object> get props => [country];
}
