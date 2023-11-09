; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [290 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 67
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 114
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 16
	i32 39852199, ; 3: Plugin.Permissions => 0x26018a7 => 19
	i32 51966650, ; 4: AndroidAltBeaconLibrary => 0x318f2ba => 4
	i32 57263871, ; 5: Xamarin.Forms.Core.dll => 0x369c6ff => 105
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 83
	i32 103834273, ; 7: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 94
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 83
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 124
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 44
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 85
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 42
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 139
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 61
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 142
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 134
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 47
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 65
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 59
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 33
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 27
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 63
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 25
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 46
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 93
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 137
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 58
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 15
	i32 469710990, ; 29: System.dll => 0x1bff388e => 23
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 59
	i32 485140951, ; 31: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 112
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 71
	i32 495452658, ; 33: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 112
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 136
	i32 507148113, ; 35: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 110
	i32 513247710, ; 36: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 13
	i32 526420162, ; 37: System.Transactions.dll => 0x1f6088c2 => 129
	i32 527452488, ; 38: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 124
	i32 542030372, ; 39: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 118
	i32 545304856, ; 40: System.Runtime.Extensions => 0x2080b118 => 143
	i32 605376203, ; 41: System.IO.Compression.FileSystem => 0x24154ecb => 132
	i32 627609679, ; 42: Xamarin.AndroidX.CustomView => 0x2568904f => 52
	i32 639843206, ; 43: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 57
	i32 663517072, ; 44: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 90
	i32 666292255, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 39
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 32
	i32 691348768, ; 47: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 126
	i32 700284507, ; 48: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 121
	i32 720511267, ; 49: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 125
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 24
	i32 797065788, ; 51: BeuMobileApp.Android.dll => 0x2f82423c => 0
	i32 809851609, ; 52: System.Drawing.Common.dll => 0x30455ad9 => 131
	i32 843511501, ; 53: Xamarin.AndroidX.Print => 0x3246f6cd => 78
	i32 846667644, ; 54: Xamarin.Firebase.Installations.dll => 0x32771f7c => 101
	i32 877678880, ; 55: System.Globalization.dll => 0x34505120 => 142
	i32 882434999, ; 56: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 102
	i32 928116545, ; 57: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 114
	i32 955402788, ; 58: Newtonsoft.Json => 0x38f24a24 => 16
	i32 956575887, ; 59: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 125
	i32 957807352, ; 60: Plugin.CurrentActivity => 0x3916faf8 => 17
	i32 967690846, ; 61: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 63
	i32 974778368, ; 62: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 992768348, ; 63: System.Collections.dll => 0x3b2c715c => 137
	i32 996733531, ; 64: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 111
	i32 1012816738, ; 65: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 82
	i32 1028951442, ; 66: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 10
	i32 1035644815, ; 67: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 38
	i32 1036359102, ; 68: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 117
	i32 1042160112, ; 69: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 108
	i32 1052210849, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1084122840, ; 71: Xamarin.Kotlin.StdLib => 0x409e66d8 => 123
	i32 1098259244, ; 72: System => 0x41761b2c => 23
	i32 1110309514, ; 73: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 12
	i32 1137654822, ; 74: Plugin.Permissions.dll => 0x43cf3c26 => 19
	i32 1141947663, ; 75: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 103
	i32 1173126369, ; 76: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 11
	i32 1175144683, ; 77: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 88
	i32 1178241025, ; 78: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 75
	i32 1204270330, ; 79: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 39
	i32 1264511973, ; 80: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 84
	i32 1267360935, ; 81: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 89
	i32 1275534314, ; 82: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 126
	i32 1278448581, ; 83: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 36
	i32 1293217323, ; 84: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 54
	i32 1309284514, ; 85: Plugin.FirebasePushNotification => 0x4e0a18a2 => 18
	i32 1333047053, ; 86: Xamarin.Firebase.Common => 0x4f74af0d => 95
	i32 1365406463, ; 87: System.ServiceModel.Internals.dll => 0x516272ff => 135
	i32 1376866003, ; 88: Xamarin.AndroidX.SavedState => 0x52114ed3 => 82
	i32 1379897097, ; 89: Xamarin.JavaX.Inject => 0x523f8f09 => 120
	i32 1395857551, ; 90: Xamarin.AndroidX.Media.dll => 0x5333188f => 72
	i32 1406073936, ; 91: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 48
	i32 1411638395, ; 92: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 29
	i32 1434647657, ; 93: BeuMobileApp.dll => 0x5582fc69 => 6
	i32 1457743152, ; 94: System.Runtime.Extensions.dll => 0x56e36530 => 143
	i32 1460219004, ; 95: Xamarin.Forms.Xaml => 0x57092c7c => 109
	i32 1462112819, ; 96: System.IO.Compression.dll => 0x57261233 => 24
	i32 1469204771, ; 97: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 37
	i32 1470490898, ; 98: Microsoft.Extensions.Primitives => 0x57a5e912 => 13
	i32 1531040989, ; 99: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 100
	i32 1550322496, ; 100: System.Reflection.Extensions.dll => 0x5c680b40 => 2
	i32 1582372066, ; 101: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 53
	i32 1592978981, ; 102: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 103: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1624863272, ; 104: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 92
	i32 1635184631, ; 105: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 57
	i32 1636350590, ; 106: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 51
	i32 1639515021, ; 107: System.Net.Http.dll => 0x61b9038d => 26
	i32 1657153582, ; 108: System.Runtime => 0x62c6282e => 30
	i32 1658241508, ; 109: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 86
	i32 1658251792, ; 110: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 113
	i32 1670060433, ; 111: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 47
	i32 1698840827, ; 112: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 122
	i32 1701541528, ; 113: System.Diagnostics.Debug.dll => 0x656b7698 => 139
	i32 1726116996, ; 114: System.Reflection.dll => 0x66e27484 => 140
	i32 1729485958, ; 115: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 43
	i32 1765942094, ; 116: System.Reflection.Extensions => 0x6942234e => 2
	i32 1766324549, ; 117: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 85
	i32 1776026572, ; 118: System.Core.dll => 0x69dc03cc => 22
	i32 1788241197, ; 119: Xamarin.AndroidX.Fragment => 0x6a96652d => 58
	i32 1808609942, ; 120: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813058853, ; 121: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 123
	i32 1813201214, ; 122: Xamarin.Google.Android.Material => 0x6c13413e => 113
	i32 1818569960, ; 123: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 76
	i32 1867746548, ; 124: Xamarin.Essentials.dll => 0x6f538cf4 => 93
	i32 1878053835, ; 125: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 109
	i32 1885316902, ; 126: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 40
	i32 1908813208, ; 127: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 116
	i32 1919157823, ; 128: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 73
	i32 1933215285, ; 129: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 104
	i32 1983156543, ; 130: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 122
	i32 2011961780, ; 131: System.Buffers.dll => 0x77ec19b4 => 21
	i32 2019465201, ; 132: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2055257422, ; 133: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 64
	i32 2079903147, ; 134: System.Runtime.dll => 0x7bf8cdab => 30
	i32 2090596640, ; 135: System.Numerics.Vectors => 0x7c9bf920 => 28
	i32 2097448633, ; 136: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 60
	i32 2113902067, ; 137: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 106
	i32 2124230737, ; 138: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 111
	i32 2126786730, ; 139: Xamarin.Forms.Platform.Android => 0x7ec430aa => 107
	i32 2129483829, ; 140: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 115
	i32 2174878672, ; 141: Xamarin.Firebase.Annotations => 0x81a203d0 => 94
	i32 2193016926, ; 142: System.ObjectModel.dll => 0x82b6c85e => 136
	i32 2201107256, ; 143: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 127
	i32 2201231467, ; 144: System.Net.Http => 0x8334206b => 26
	i32 2217644978, ; 145: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 88
	i32 2244775296, ; 146: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 71
	i32 2256548716, ; 147: Xamarin.AndroidX.MultiDex => 0x8680336c => 73
	i32 2261435625, ; 148: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 62
	i32 2266799131, ; 149: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 9
	i32 2279755925, ; 150: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 80
	i32 2315684594, ; 151: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 34
	i32 2397082276, ; 152: Xamarin.Forms.PancakeView => 0x8ee092a4 => 106
	i32 2403452196, ; 153: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 56
	i32 2409053734, ; 154: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 77
	i32 2465532216, ; 155: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 46
	i32 2471841756, ; 156: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 157: Java.Interop.dll => 0x93918882 => 8
	i32 2483661569, ; 158: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 103
	i32 2483742551, ; 159: Xamarin.Firebase.Messaging => 0x940ae757 => 104
	i32 2486410006, ; 160: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 117
	i32 2501346920, ; 161: System.Data.DataSetExtensions => 0x95178668 => 130
	i32 2505896520, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 67
	i32 2581819634, ; 163: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 89
	i32 2592341985, ; 164: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 11
	i32 2605712449, ; 165: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 127
	i32 2620111890, ; 166: Xamarin.Firebase.Encoders.dll => 0x9c2bbc12 => 98
	i32 2620871830, ; 167: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 51
	i32 2623491480, ; 168: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 102
	i32 2624644809, ; 169: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 55
	i32 2633051222, ; 170: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 65
	i32 2639764100, ; 171: Xamarin.Firebase.Encoders => 0x9d579a84 => 98
	i32 2701096212, ; 172: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 86
	i32 2715334215, ; 173: System.Threading.Tasks.dll => 0xa1d8b647 => 138
	i32 2732626843, ; 174: Xamarin.AndroidX.Activity => 0xa2e0939b => 33
	i32 2737747696, ; 175: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 37
	i32 2766581644, ; 176: Xamarin.Forms.Core => 0xa4e6af8c => 105
	i32 2768457651, ; 177: PropertyChanged => 0xa5034fb3 => 20
	i32 2770495804, ; 178: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 121
	i32 2778768386, ; 179: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 91
	i32 2779977773, ; 180: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 81
	i32 2804607052, ; 181: Xamarin.Firebase.Components.dll => 0xa72ae84c => 96
	i32 2806986428, ; 182: Plugin.CurrentActivity.dll => 0xa74f36bc => 17
	i32 2810250172, ; 183: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 48
	i32 2819470561, ; 184: System.Xml.dll => 0xa80db4e1 => 31
	i32 2821294376, ; 185: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 81
	i32 2847418871, ; 186: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 115
	i32 2853208004, ; 187: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 91
	i32 2855708567, ; 188: Xamarin.AndroidX.Transition => 0xaa36a797 => 87
	i32 2883826422, ; 189: Xamarin.Firebase.Installations => 0xabe3b2f6 => 101
	i32 2901442782, ; 190: System.Reflection => 0xacf080de => 140
	i32 2903344695, ; 191: System.ComponentModel.Composition => 0xad0d8637 => 133
	i32 2905242038, ; 192: mscorlib.dll => 0xad2a79b6 => 15
	i32 2914202368, ; 193: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 100
	i32 2916838712, ; 194: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 92
	i32 2917608622, ; 195: Behaviors.dll => 0xade72cae => 5
	i32 2919462931, ; 196: System.Numerics.Vectors.dll => 0xae037813 => 28
	i32 2921128767, ; 197: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 35
	i32 2946909580, ; 198: BeuMobileApp => 0xafa6458c => 6
	i32 2978675010, ; 199: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 54
	i32 2996846495, ; 200: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 66
	i32 3016983068, ; 201: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 84
	i32 3024354802, ; 202: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 61
	i32 3044182254, ; 203: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 204: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 74
	i32 3058099980, ; 205: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 119
	i32 3071899978, ; 206: Xamarin.Firebase.Common.dll => 0xb719794a => 95
	i32 3075834255, ; 207: System.Threading.Tasks => 0xb755818f => 138
	i32 3106737866, ; 208: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 97
	i32 3111772706, ; 209: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3155362983, ; 210: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 110
	i32 3204380047, ; 211: System.Data.dll => 0xbefef58f => 128
	i32 3211777861, ; 212: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 53
	i32 3220365878, ; 213: System.Threading => 0xbff2e236 => 141
	i32 3230466174, ; 214: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 116
	i32 3247949154, ; 215: Mono.Security => 0xc197c562 => 144
	i32 3258312781, ; 216: Xamarin.AndroidX.CardView => 0xc235e84d => 43
	i32 3267021929, ; 217: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 41
	i32 3317135071, ; 218: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 52
	i32 3317144872, ; 219: System.Data => 0xc5b79d28 => 128
	i32 3331531814, ; 220: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 118
	i32 3340431453, ; 221: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 40
	i32 3345895724, ; 222: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 79
	i32 3346324047, ; 223: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 75
	i32 3353484488, ; 224: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 60
	i32 3362522851, ; 225: Xamarin.AndroidX.Core => 0xc86c06e3 => 50
	i32 3366347497, ; 226: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 227: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 80
	i32 3383578424, ; 228: Xamarin.Firebase.Encoders.JSON => 0xc9ad4f38 => 99
	i32 3395150330, ; 229: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 29
	i32 3401559547, ; 230: Plugin.FirebasePushNotification.dll => 0xcabfadfb => 18
	i32 3404865022, ; 231: System.ServiceModel.Internals => 0xcaf21dfe => 135
	i32 3429136800, ; 232: System.Xml => 0xcc6479a0 => 31
	i32 3430777524, ; 233: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 234: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 55
	i32 3476120550, ; 235: Mono.Android => 0xcf3163e6 => 14
	i32 3486566296, ; 236: System.Transactions => 0xcfd0c798 => 129
	i32 3493954962, ; 237: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 45
	i32 3501239056, ; 238: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 41
	i32 3509114376, ; 239: System.Xml.Linq => 0xd128d608 => 32
	i32 3536029504, ; 240: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 107
	i32 3567349600, ; 241: System.ComponentModel.Composition.dll => 0xd4a16f60 => 133
	i32 3618140916, ; 242: Xamarin.AndroidX.Preference => 0xd7a872f4 => 77
	i32 3627220390, ; 243: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 78
	i32 3632359727, ; 244: Xamarin.Forms.Platform => 0xd881692f => 108
	i32 3633644679, ; 245: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 35
	i32 3641597786, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 64
	i32 3657292374, ; 247: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 9
	i32 3672681054, ; 248: Mono.Android.dll => 0xdae8aa5e => 14
	i32 3676310014, ; 249: System.Web.Services.dll => 0xdb2009fe => 134
	i32 3682565725, ; 250: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 42
	i32 3684561358, ; 251: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 45
	i32 3688380121, ; 252: Behaviors => 0xdbd836d9 => 5
	i32 3689375977, ; 253: System.Drawing.Common => 0xdbe768e9 => 131
	i32 3706696989, ; 254: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 49
	i32 3718780102, ; 255: Xamarin.AndroidX.Annotation => 0xdda814c6 => 34
	i32 3724971120, ; 256: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 74
	i32 3758932259, ; 257: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 62
	i32 3786282454, ; 258: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 44
	i32 3814836167, ; 259: AndroidAltBeaconLibrary.dll => 0xe361c7c7 => 4
	i32 3822602673, ; 260: Xamarin.AndroidX.Media => 0xe3d849b1 => 72
	i32 3829621856, ; 261: System.Numerics.dll => 0xe4436460 => 27
	i32 3841636137, ; 262: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 10
	i32 3885922214, ; 263: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 87
	i32 3888767677, ; 264: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 79
	i32 3896760992, ; 265: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 50
	i32 3920810846, ; 266: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 132
	i32 3921031405, ; 267: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 90
	i32 3931092270, ; 268: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 76
	i32 3934056515, ; 269: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 120
	i32 3945713374, ; 270: System.Data.DataSetExtensions.dll => 0xeb2ecede => 130
	i32 3955647286, ; 271: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 38
	i32 3959773229, ; 272: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 66
	i32 3970018735, ; 273: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 119
	i32 4015948917, ; 274: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 36
	i32 4025784931, ; 275: System.Memory => 0xeff49a63 => 25
	i32 4073602200, ; 276: System.Threading.dll => 0xf2ce3c98 => 141
	i32 4078967171, ; 277: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 12
	i32 4101593132, ; 278: Xamarin.AndroidX.Emoji2 => 0xf479582c => 56
	i32 4105002889, ; 279: Mono.Security.dll => 0xf4ad5f89 => 144
	i32 4151237749, ; 280: System.Core => 0xf76edc75 => 22
	i32 4170290435, ; 281: BeuMobileApp.Android => 0xf8919503 => 0
	i32 4182413190, ; 282: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4184000013, ; 283: PropertyChanged.dll => 0xf962c60d => 20
	i32 4192648326, ; 284: Xamarin.Firebase.Encoders.JSON.dll => 0xf9e6bc86 => 99
	i32 4256097574, ; 285: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 49
	i32 4260525087, ; 286: System.Buffers => 0xfdf2741f => 21
	i32 4269159614, ; 287: Xamarin.Firebase.Datatransport => 0xfe7634be => 97
	i32 4284549794, ; 288: Xamarin.Firebase.Components => 0xff610aa2 => 96
	i32 4292120959 ; 289: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [290 x i32] [
	i32 67, i32 114, i32 16, i32 19, i32 4, i32 105, i32 83, i32 94, ; 0..7
	i32 83, i32 124, i32 44, i32 85, i32 42, i32 139, i32 61, i32 142, ; 8..15
	i32 134, i32 47, i32 65, i32 59, i32 33, i32 27, i32 63, i32 25, ; 16..23
	i32 46, i32 93, i32 137, i32 58, i32 15, i32 23, i32 59, i32 112, ; 24..31
	i32 71, i32 112, i32 136, i32 110, i32 13, i32 129, i32 124, i32 118, ; 32..39
	i32 143, i32 132, i32 52, i32 57, i32 90, i32 39, i32 32, i32 126, ; 40..47
	i32 121, i32 125, i32 24, i32 0, i32 131, i32 78, i32 101, i32 142, ; 48..55
	i32 102, i32 114, i32 16, i32 125, i32 17, i32 63, i32 7, i32 137, ; 56..63
	i32 111, i32 82, i32 10, i32 38, i32 117, i32 108, i32 68, i32 123, ; 64..71
	i32 23, i32 12, i32 19, i32 103, i32 11, i32 88, i32 75, i32 39, ; 72..79
	i32 84, i32 89, i32 126, i32 36, i32 54, i32 18, i32 95, i32 135, ; 80..87
	i32 82, i32 120, i32 72, i32 48, i32 29, i32 6, i32 143, i32 109, ; 88..95
	i32 24, i32 37, i32 13, i32 100, i32 2, i32 53, i32 3, i32 70, ; 96..103
	i32 92, i32 57, i32 51, i32 26, i32 30, i32 86, i32 113, i32 47, ; 104..111
	i32 122, i32 139, i32 140, i32 43, i32 2, i32 85, i32 22, i32 58, ; 112..119
	i32 70, i32 123, i32 113, i32 76, i32 93, i32 109, i32 40, i32 116, ; 120..127
	i32 73, i32 104, i32 122, i32 21, i32 68, i32 64, i32 30, i32 28, ; 128..135
	i32 60, i32 106, i32 111, i32 107, i32 115, i32 94, i32 136, i32 127, ; 136..143
	i32 26, i32 88, i32 71, i32 73, i32 62, i32 9, i32 80, i32 34, ; 144..151
	i32 106, i32 56, i32 77, i32 46, i32 1, i32 8, i32 103, i32 104, ; 152..159
	i32 117, i32 130, i32 67, i32 89, i32 11, i32 127, i32 98, i32 51, ; 160..167
	i32 102, i32 55, i32 65, i32 98, i32 86, i32 138, i32 33, i32 37, ; 168..175
	i32 105, i32 20, i32 121, i32 91, i32 81, i32 96, i32 17, i32 48, ; 176..183
	i32 31, i32 81, i32 115, i32 91, i32 87, i32 101, i32 140, i32 133, ; 184..191
	i32 15, i32 100, i32 92, i32 5, i32 28, i32 35, i32 6, i32 54, ; 192..199
	i32 66, i32 84, i32 61, i32 7, i32 74, i32 119, i32 95, i32 138, ; 200..207
	i32 97, i32 3, i32 110, i32 128, i32 53, i32 141, i32 116, i32 144, ; 208..215
	i32 43, i32 41, i32 52, i32 128, i32 118, i32 40, i32 79, i32 75, ; 216..223
	i32 60, i32 50, i32 8, i32 80, i32 99, i32 29, i32 18, i32 135, ; 224..231
	i32 31, i32 1, i32 55, i32 14, i32 129, i32 45, i32 41, i32 32, ; 232..239
	i32 107, i32 133, i32 77, i32 78, i32 108, i32 35, i32 64, i32 9, ; 240..247
	i32 14, i32 134, i32 42, i32 45, i32 5, i32 131, i32 49, i32 34, ; 248..255
	i32 74, i32 62, i32 44, i32 4, i32 72, i32 27, i32 10, i32 87, ; 256..263
	i32 79, i32 50, i32 132, i32 90, i32 76, i32 120, i32 130, i32 38, ; 264..271
	i32 66, i32 119, i32 36, i32 25, i32 141, i32 12, i32 56, i32 144, ; 272..279
	i32 22, i32 0, i32 69, i32 20, i32 99, i32 49, i32 21, i32 97, ; 280..287
	i32 96, i32 69 ; 288..289
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
