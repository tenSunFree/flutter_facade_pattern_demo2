enum HomeFeaturesStateEnum { lock, repair, good }

class HomeFeaturesState {
  HomeFeaturesStateEnum promoteCurrentState = HomeFeaturesStateEnum.repair;
  HomeFeaturesStateEnum memoryCurrentState = HomeFeaturesStateEnum.lock;
  HomeFeaturesStateEnum threatCurrentState = HomeFeaturesStateEnum.lock;
  HomeFeaturesStateEnum batteryCurrentState = HomeFeaturesStateEnum.lock;
}
