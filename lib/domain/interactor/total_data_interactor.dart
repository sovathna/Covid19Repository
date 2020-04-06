import 'package:covid19_repository/base/interactor.dart';
import 'package:covid19_repository/model/total_data_event.dart';
import 'package:covid19_repository/model/total_data_result.dart';

abstract class TotalDataInteractor extends Interactor {
  Stream<TotalDataResult> getTotalData(GetTotalDataEvent event);
}
