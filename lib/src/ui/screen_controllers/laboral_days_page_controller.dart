import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../managers/data_Manager.dart';

class LaboralDaysPageController extends ControllerMVC {
  DataManager? dataManager;

  LaboralDaysPageController._privateConstruct(this.dataManager);

  static final LaboralDaysPageController _instance = LaboralDaysPageController
      ._privateConstruct(DataManager());

  factory LaboralDaysPageController(){
    return _instance;
  }

  void initpage() {}



}
