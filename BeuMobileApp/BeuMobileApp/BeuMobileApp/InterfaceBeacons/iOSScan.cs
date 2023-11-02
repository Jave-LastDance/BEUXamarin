using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.InterfaceBeacons
{
    internal interface IIOSScan
    {
        void InitializeScannerService();
        void Startranging();
        void Stopranging();
    }
}
