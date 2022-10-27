import 'package:mvc_pattern/mvc_pattern.dart';
import '../../../managers/data_Manager.dart';

class WorksPageController extends ControllerMVC {
  DataManager? dataManager;

  WorksPageController._privateConstruct(this.dataManager);

  static final WorksPageController _instance = WorksPageController
      ._privateConstruct(DataManager());

  factory WorksPageController(){
    return _instance;
  }

  void initpage() {}



}