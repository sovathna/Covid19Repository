import 'package:covid19_repository/base/result.dart';
import 'package:covid19_repository/model/history.dart';
import 'package:meta/meta.dart';

abstract class HistoryResult extends Result {
  const HistoryResult();
}

@immutable
class HistoryResultProgress extends HistoryResult {
  const HistoryResultProgress();
}

@immutable
class HistoryResultSuccess extends HistoryResult {
  final History data;

  const HistoryResultSuccess(this.data);

  @override
  List<Object> get props => [data];
}

@immutable
class HistoryResultFail extends HistoryResult {
  final String error;

  const HistoryResultFail(this.error);

  @override
  List<Object> get props => [error];
}
