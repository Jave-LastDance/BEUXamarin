using System;
using System.Collections.Generic;
using System.Text;

namespace BeuMobileApp.InterfaceBeacons
{
    public interface iOSScan
    {
        void InitializeScannerService();
        void startranging();
        void stopranging();
    }
}
