import 'package:covid19_repository/base/result.dart';
import 'package:covid19_repository/model/total_data.dart';
import 'package:meta/meta.dart';

abstract class TotalDataResult extends Result {
  const TotalDataResult();
}

@immutable
class TotalDataResultProgress extends TotalDataResult {
  const TotalDataResultProgress();
}

@immutable
class TotalDataResultSuccess extends TotalDataResult {
  final TotalData totalData;

  const TotalDataResultSuccess(this.totalData);

  @override
  List<Object> get props => [totalData];
}

@immutable
class TotalDataResultFail extends TotalDataResult {
  final String error;

  const TotalDataResultFail(this.error);

  @override
  List<Object> get props => [error];
}
