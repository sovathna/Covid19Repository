import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class HistoricalData extends Equatable {
  final List<Case> cases;
  final List<Case> recovered;
  final List<Case> deaths;

  const HistoricalData({this.cases, this.recovered, this.deaths});

  @override
  List<Object> get props => [cases, recovered, deaths];
}

class Case extends Equatable {
  final String date;
  final int value;

  const Case({this.date, this.value});

  @override
  List<Object> get props => [date, value];
}
