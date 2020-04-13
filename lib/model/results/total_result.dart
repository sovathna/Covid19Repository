import 'package:covid19_repository/base/result.dart';
import 'package:covid19_repository/model/total.dart';
import 'package:meta/meta.dart';

abstract class TotalResult extends Result {
  const TotalResult();
}

@immutable
class TotalResultProgress extends TotalResult {
  const TotalResultProgress();
}

@immutable
class TotalResultSuccess extends TotalResult {
  final Total data;

  const TotalResultSuccess(this.data);

  @override
  List<Object> get props => [data];
}

@immutable
class TotalResultFail extends TotalResult {
  final String error;

  const TotalResultFail(this.error);

  @override
  List<Object> get props => [error];
}
