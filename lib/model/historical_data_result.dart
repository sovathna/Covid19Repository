import 'package:covid19_repository/base/result.dart';
import 'package:covid19_repository/model/historical_data.dart';
import 'package:meta/meta.dart';

abstract class HistoricalDataResult extends Result {
  const HistoricalDataResult();
}

@immutable
class HistoricalDataResultProgress extends HistoricalDataResult {
  const HistoricalDataResultProgress();
}

@immutable
class HistoricalDataResultSuccess extends HistoricalDataResult {
  final HistoricalData data;

  const HistoricalDataResultSuccess(this.data);

  @override
  List<Object> get props => [data];
}

@immutable
class HistoricalDataResultFail extends HistoricalDataResult {
  final String error;

  const HistoricalDataResultFail(this.error);

  @override
  List<Object> get props => [error];
}
