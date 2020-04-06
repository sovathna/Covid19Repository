import 'package:covid19_repository/base/result.dart';
import 'package:covid19_repository/model/total_data.dart';
import 'package:meta/meta.dart';

abstract class ListTotalDataResult extends Result {
  const ListTotalDataResult();
}

@immutable
class ListTotalDataResultProgress extends ListTotalDataResult {
  const ListTotalDataResultProgress();
}

@immutable
class ListTotalDataResultSuccess extends ListTotalDataResult {
  final List<TotalData> datas;

  const ListTotalDataResultSuccess(this.datas);

  @override
  List<Object> get props => [datas];
}

@immutable
class ListTotalDataResultFail extends ListTotalDataResult {
  final String error;

  const ListTotalDataResultFail(this.error);

  @override
  List<Object> get props => [error];
}
