using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.InterfaceBeacons
{
    public interface IbeaconAndroid
    {
        void InitializeService();
        void StartMonitoring();
        void StartRanging();
        void StopRanging();
        void SetBackgroundMode(bool isBackground);
        void OnDestroy();
        void BluetoothEnable();
    }
}
