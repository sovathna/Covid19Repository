import 'package:covid19_repository/base/interactor.dart';
import 'package:covid19_repository/model/events/total_event.dart';
import 'package:covid19_repository/model/results/total_result.dart';

abstract class TotalInteractor extends Interactor {
  Stream<TotalResult> getTotal(GetTotalEvent event);
}
