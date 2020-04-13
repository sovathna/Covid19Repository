import 'package:covid19_repository/base/event.dart';
import 'package:meta/meta.dart';

abstract class TotalEvent extends Event {
  const TotalEvent();
}

@immutable
class GetTotalEvent extends TotalEvent {
  final String country;

  const GetTotalEvent({this.country});

  @override
  List<Object> get props => [country];
}
