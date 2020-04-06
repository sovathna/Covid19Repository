import 'package:covid19_repository/base/interactor.dart';
import 'package:covid19_repository/model/list_total_data_event.dart';
import 'package:covid19_repository/model/list_total_data_result.dart';

abstract class ListTotalDataInteractor extends Interactor {
  Stream<ListTotalDataResult> getListTotalData();
}
