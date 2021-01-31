import 'package:flutter_facade_pattern_demo/home/home_features_state.dart';

class HomeFeaturesFacade {
  final HomeFeaturesState _smartHomeState = HomeFeaturesState();

  String getLockImagePath() => "assets/icon_lock.png";

  String getRepairImagePath() => "assets/icon_repair.png";

  String getGoodImagePath() => "assets/icon_good.png";

  void repairPromote() {
    if (_smartHomeState.promoteCurrentState != HomeFeaturesStateEnum.repair)
      return;
    _smartHomeState.promoteCurrentState = HomeFeaturesStateEnum.good;
    _smartHomeState.memoryCurrentState = HomeFeaturesStateEnum.repair;
  }

  void repairMemory() {
    if (_smartHomeState.memoryCurrentState != HomeFeaturesStateEnum.repair)
      return;
    _smartHomeState.memoryCurrentState = HomeFeaturesStateEnum.good;
    _smartHomeState.threatCurrentState = HomeFeaturesStateEnum.repair;
  }

  void repairThreat() {
    if (_smartHomeState.threatCurrentState != HomeFeaturesStateEnum.repair)
      return;
    _smartHomeState.threatCurrentState = HomeFeaturesStateEnum.good;
    _smartHomeState.batteryCurrentState = HomeFeaturesStateEnum.repair;
  }

  void repairBattery() {
    if (_smartHomeState.batteryCurrentState != HomeFeaturesStateEnum.repair)
      return;
    _smartHomeState.batteryCurrentState = HomeFeaturesStateEnum.good;
  }

  String getPromoteImagePath() {
    return getImagePath(_smartHomeState.promoteCurrentState);
  }

  String getMemoryImagePath() {
    return getImagePath(_smartHomeState.memoryCurrentState);
  }

  String getThreatImagePath() {
    return getImagePath(_smartHomeState.threatCurrentState);
  }

  String getBatteryImagePath() {
    return getImagePath(_smartHomeState.batteryCurrentState);
  }

  String getImagePath(HomeFeaturesStateEnum stateEnum) {
    var imagePath = "";
    switch (stateEnum) {
      case HomeFeaturesStateEnum.lock:
        imagePath = getLockImagePath();
        break;
      case HomeFeaturesStateEnum.repair:
        imagePath = getRepairImagePath();
        break;
      case HomeFeaturesStateEnum.good:
        imagePath = getGoodImagePath();
        break;
    }
    return imagePath;
  }
}
