
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../managers/data_Manager.dart';

class OnboardingPageController extends ControllerMVC {
  DataManager? dataManager;

  OnboardingPageController._privateConstruct(this.dataManager);

  static final OnboardingPageController _instance = OnboardingPageController
      ._privateConstruct(DataManager());

  static OnboardingPageController get instance => _instance;

  factory OnboardingPageController(){
    return _instance;
  }

  void initpage() {}



  }
