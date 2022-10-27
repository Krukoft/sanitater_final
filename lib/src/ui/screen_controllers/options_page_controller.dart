import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../managers/data_Manager.dart';

class OptionsPageController extends ControllerMVC {
  DataManager? dataManager;

  OptionsPageController._privateConstruct(this.dataManager);

  static final OptionsPageController _instance = OptionsPageController
      ._privateConstruct(DataManager());

  factory OptionsPageController(){
    return _instance;
  }

  void initpage() {}



}
