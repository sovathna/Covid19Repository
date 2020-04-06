import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class TotalDataEvent extends Event {
  const TotalDataEvent();
}

@immutable
class GetTotalDataEvent extends TotalDataEvent {
  final String country;

  const GetTotalDataEvent({this.country});

  @override
  List<Object> get props => [country];
}
