; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [274 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 47
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 9
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 36
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 74
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 75
	i64 316157742385208084, ; 5: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 41
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 59
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 107
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 123
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 52
	i64 780939990273577431, ; 10: BeuMobileApp.dll => 0xad674c8972751d7 => 6
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 46
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 121
	i64 996343623809489702, ; 13: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 100
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 136
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 105
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 31
	i64 1400031058434376889, ; 17: Plugin.Permissions.dll => 0x136de8d4787ec4b9 => 14
	i64 1425944114962822056, ; 18: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1465843056802068477, ; 19: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 88
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 29
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 61
	i64 1636321030536304333, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 53
	i64 1731380447121279447, ; 23: Newtonsoft.Json => 0x18071957e9b889d7 => 11
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 30
	i64 1836611346387731153, ; 25: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 74
	i64 1837131419302612636, ; 26: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x197ecd4ad53dce9c => 103
	i64 1875917498431009007, ; 27: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 26
	i64 1981742497975770890, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 60
	i64 2064708342624596306, ; 29: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 116
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 11
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 65
	i64 2137969380975227603, ; 32: PropertyChanged => 0x1dab97d315b0b2d3 => 15
	i64 2165725771938924357, ; 33: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 34
	i64 2262844636196693701, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 46
	i64 2284400282711631002, ; 35: System.Web.Services => 0x1fb3d1f42fd4249a => 126
	i64 2304837677853103545, ; 36: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 73
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 56
	i64 2470498323731680442, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 40
	i64 2479423007379663237, ; 39: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 80
	i64 2497223385847772520, ; 40: System.Runtime => 0x22a7eb7046413568 => 22
	i64 2547086958574651984, ; 41: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 25
	i64 2592350477072141967, ; 42: System.Xml.dll => 0x23f9e10627330e8f => 23
	i64 2624866290265602282, ; 43: mscorlib.dll => 0x246d65fbde2db8ea => 10
	i64 2694427813909235223, ; 44: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 69
	i64 2765588859203016484, ; 45: BeuMobileApp.Android => 0x2661586a2b92d724 => 0
	i64 2787234703088983483, ; 46: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 76
	i64 2801558180824670388, ; 47: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 12
	i64 2960931600190307745, ; 48: Xamarin.Forms.Core => 0x2917579a49927da1 => 97
	i64 3017704767998173186, ; 49: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 105
	i64 3143515969535650208, ; 50: Xamarin.Firebase.Encoders => 0x2ba0031e85f0a9a0 => 90
	i64 3289520064315143713, ; 51: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 55
	i64 3303437397778967116, ; 52: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 27
	i64 3311221304742556517, ; 53: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 21
	i64 3344514922410554693, ; 54: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 119
	i64 3364695309916733813, ; 55: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 87
	i64 3411255996856937470, ; 56: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 108
	i64 3493805808809882663, ; 57: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 78
	i64 3522470458906976663, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 77
	i64 3531994851595924923, ; 59: System.Numerics => 0x31042a9aade235bb => 20
	i64 3571415421602489686, ; 60: System.Runtime.dll => 0x319037675df7e556 => 22
	i64 3609787854626478660, ; 61: Plugin.CurrentActivity => 0x32188aeda587da44 => 12
	i64 3716579019761409177, ; 62: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 63: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 72
	i64 3772598417116884899, ; 64: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 47
	i64 4201423742386704971, ; 65: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 41
	i64 4239882675311405204, ; 66: Xamarin.Firebase.Encoders.JSON => 0x3ad716d44f44e894 => 91
	i64 4247996603072512073, ; 67: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 111
	i64 4335356748765836238, ; 68: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3c2a47fe48c7b3ce => 103
	i64 4525561845656915374, ; 69: System.ServiceModel.Internals => 0x3ece06856b710dae => 127
	i64 4636684751163556186, ; 70: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 82
	i64 4702770163853758138, ; 71: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 88
	i64 4759461199762736555, ; 72: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 58
	i64 4782108999019072045, ; 73: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 33
	i64 4794310189461587505, ; 74: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 25
	i64 4795410492532947900, ; 75: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 77
	i64 5142919913060024034, ; 76: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 99
	i64 5203618020066742981, ; 77: Xamarin.Essentials => 0x4836f704f0e652c5 => 85
	i64 5205316157927637098, ; 78: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 63
	i64 5348796042099802469, ; 79: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 64
	i64 5375264076663995773, ; 80: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 98
	i64 5376510917114486089, ; 81: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 80
	i64 5408338804355907810, ; 82: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 79
	i64 5446034149219586269, ; 83: System.Diagnostics.Debug => 0x4b94333452e150dd => 131
	i64 5451019430259338467, ; 84: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 39
	i64 5507995362134886206, ; 85: System.Core.dll => 0x4c705499688c873e => 16
	i64 5574231584441077149, ; 86: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 28
	i64 5692067934154308417, ; 87: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 84
	i64 5757522595884336624, ; 88: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 37
	i64 5814345312393086621, ; 89: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 69
	i64 5896680224035167651, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 57
	i64 6085203216496545422, ; 91: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 100
	i64 6086316965293125504, ; 92: FormsViewGroup.dll => 0x5476f10882baef80 => 7
	i64 6092862891035488599, ; 93: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 95
	i64 6319713645133255417, ; 94: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 59
	i64 6401687960814735282, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 56
	i64 6504860066809920875, ; 96: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 34
	i64 6548213210057960872, ; 97: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 44
	i64 6554405243736097249, ; 98: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 110
	i64 6591024623626361694, ; 99: System.Web.Services.dll => 0x5b7805f9751a1b5e => 126
	i64 6659513131007730089, ; 100: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 52
	i64 6876862101832370452, ; 101: System.Xml.Linq => 0x5f6f85a57d108914 => 24
	i64 6878582369430612696, ; 102: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x5f75a238802d2ad8 => 104
	i64 6894844156784520562, ; 103: System.Numerics.Vectors => 0x5faf683aead1ad72 => 21
	i64 6975328107116786489, ; 104: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 86
	i64 7036436454368433159, ; 105: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 54
	i64 7103753931438454322, ; 106: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 51
	i64 7338192458477945005, ; 107: System.Reflection => 0x65d67f295d0740ad => 132
	i64 7385250113861300937, ; 108: Xamarin.Firebase.Iid.Interop.dll => 0x667dadd98e1db2c9 => 92
	i64 7394893729458727919, ; 109: Behaviors => 0x669ff0aac826abef => 5
	i64 7476537270401454554, ; 110: Xamarin.Firebase.Encoders.JSON.dll => 0x67c1ff08f83f51da => 91
	i64 7488575175965059935, ; 111: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 24
	i64 7489048572193775167, ; 112: System.ObjectModel => 0x67ee71ff6b419e3f => 128
	i64 7635363394907363464, ; 113: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 97
	i64 7637365915383206639, ; 114: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 85
	i64 7654504624184590948, ; 115: System.Net.Http => 0x6a3a4366801b8264 => 19
	i64 7735352534559001595, ; 116: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 115
	i64 7820441508502274321, ; 117: System.Data => 0x6c87ca1e14ff8111 => 120
	i64 7836164640616011524, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 29
	i64 7904570928025870493, ; 119: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 93
	i64 7940488133782528123, ; 120: Xamarin.GooglePlayServices.CloudMessaging => 0x6e3247e31d4fe07b => 109
	i64 7969431548154767168, ; 121: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 93
	i64 8044118961405839122, ; 122: System.ComponentModel.Composition => 0x6fa2739369944712 => 125
	i64 8064050204834738623, ; 123: System.Collections.dll => 0x6fe942efa61731bf => 129
	i64 8083354569033831015, ; 124: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 55
	i64 8103644804370223335, ; 125: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 122
	i64 8113615946733131500, ; 126: System.Reflection.Extensions => 0x70995ab73cf916ec => 2
	i64 8167236081217502503, ; 127: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 8
	i64 8185542183669246576, ; 128: System.Collections => 0x7198e33f4794aa70 => 129
	i64 8187640529827139739, ; 129: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 118
	i64 8290740647658429042, ; 130: System.Runtime.Extensions => 0x730ea0b15c929a72 => 135
	i64 8398329775253868912, ; 131: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 38
	i64 8400357532724379117, ; 132: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 68
	i64 8426919725312979251, ; 133: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 58
	i64 8465511506719290632, ; 134: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 96
	i64 8598790081731763592, ; 135: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 49
	i64 8601935802264776013, ; 136: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 79
	i64 8626175481042262068, ; 137: Java.Interop => 0x77b654e585b55834 => 8
	i64 8639588376636138208, ; 138: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 67
	i64 8684531736582871431, ; 139: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 124
	i64 8844506025403580595, ; 140: Plugin.FirebasePushNotification => 0x7abdff5eb1fb80b3 => 13
	i64 8853378295825400934, ; 141: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 114
	i64 8951477988056063522, ; 142: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 71
	i64 9062314019782848226, ; 143: BeuMobileApp => 0x7dc3ce963832eee2 => 6
	i64 9312692141327339315, ; 144: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 84
	i64 9324707631942237306, ; 145: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 30
	i64 9662334977499516867, ; 146: System.Numerics.dll => 0x8617827802b0cfc3 => 20
	i64 9678050649315576968, ; 147: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 40
	i64 9704315356731487263, ; 148: Plugin.FirebasePushNotification.dll => 0x86aca766ba59341f => 13
	i64 9711637524876806384, ; 149: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 64
	i64 9774216967140627647, ; 150: Xamarin.Firebase.Datatransport.dll => 0x87a4fe8bac0354bf => 89
	i64 9796610708422913120, ; 151: Xamarin.Firebase.Iid.Interop => 0x87f48d88de55ec60 => 92
	i64 9808709177481450983, ; 152: Mono.Android.dll => 0x881f890734e555e7 => 9
	i64 9825649861376906464, ; 153: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 37
	i64 9834056768316610435, ; 154: System.Transactions.dll => 0x8879968718899783 => 121
	i64 9875200773399460291, ; 155: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 107
	i64 9907349773706910547, ; 156: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 49
	i64 9998632235833408227, ; 157: Mono.Security => 0x8ac2470b209ebae3 => 136
	i64 10038780035334861115, ; 158: System.Net.Http.dll => 0x8b50e941206af13b => 19
	i64 10226222362177979215, ; 159: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 116
	i64 10229024438826829339, ; 160: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 44
	i64 10321854143672141184, ; 161: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 113
	i64 10352330178246763130, ; 162: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 95
	i64 10376576884623852283, ; 163: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 78
	i64 10406448008575299332, ; 164: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 119
	i64 10430153318873392755, ; 165: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 42
	i64 10566960649245365243, ; 166: System.Globalization.dll => 0x92a562b96dcd13fb => 134
	i64 10714184849103829812, ; 167: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 135
	i64 10847732767863316357, ; 168: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 31
	i64 11019817191295005410, ; 169: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 28
	i64 11023048688141570732, ; 170: System.Core => 0x98f9bc61168392ac => 16
	i64 11037814507248023548, ; 171: System.Xml => 0x992e31d0412bf7fc => 23
	i64 11162124722117608902, ; 172: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 83
	i64 11171845786728836392, ; 173: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x9b0a5e8d536aad28 => 109
	i64 11336891506707244397, ; 174: Xamarin.Firebase.Datatransport => 0x9d54bac28a6da56d => 89
	i64 11340910727871153756, ; 175: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 43
	i64 11376351552967644903, ; 176: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 86
	i64 11392833485892708388, ; 177: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 70
	i64 11529969570048099689, ; 178: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 83
	i64 11578238080964724296, ; 179: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 54
	i64 11580057168383206117, ; 180: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 26
	i64 11591352189662810718, ; 181: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 76
	i64 11597940890313164233, ; 182: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 183: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 51
	i64 11743665907891708234, ; 184: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 130
	i64 12123043025855404482, ; 185: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 2
	i64 12137774235383566651, ; 186: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 81
	i64 12346958216201575315, ; 187: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 112
	i64 12451044538927396471, ; 188: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 50
	i64 12466513435562512481, ; 189: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 62
	i64 12487638416075308985, ; 190: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 45
	i64 12538491095302438457, ; 191: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 35
	i64 12550732019250633519, ; 192: System.IO.Compression => 0xae2d28465e8e1b2f => 18
	i64 12588570128817262746, ; 193: AndroidAltBeaconLibrary => 0xaeb395d5c63f109a => 4
	i64 12700543734426720211, ; 194: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 36
	i64 12745401390556244874, ; 195: AndroidAltBeaconLibrary.dll => 0xb0e0c30963dfeb8a => 4
	i64 12828192437253469131, ; 196: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 117
	i64 12854524964145442905, ; 197: Xamarin.Firebase.Encoders.dll => 0xb26472594447b059 => 90
	i64 12963446364377008305, ; 198: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 123
	i64 13129914918964716986, ; 199: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 48
	i64 13370592475155966277, ; 200: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 201: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 81
	i64 13404347523447273790, ; 202: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 38
	i64 13454009404024712428, ; 203: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 106
	i64 13465488254036897740, ; 204: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 115
	i64 13491513212026656886, ; 205: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 32
	i64 13572454107664307259, ; 206: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 72
	i64 13647894001087880694, ; 207: System.Data.dll => 0xbd670f48cb071df6 => 120
	i64 13828521679616088467, ; 208: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 114
	i64 13829530607229561650, ; 209: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 94
	i64 13959074834287824816, ; 210: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 50
	i64 13967638549803255703, ; 211: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 99
	i64 14030805823765547820, ; 212: PropertyChanged.dll => 0xc2b76f8eee070b2c => 15
	i64 14124974489674258913, ; 213: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 35
	i64 14125464355221830302, ; 214: System.Threading.dll => 0xc407bafdbc707a9e => 133
	i64 14172845254133543601, ; 215: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 65
	i64 14261073672896646636, ; 216: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 70
	i64 14327695147300244862, ; 217: System.Reflection.dll => 0xc6d632d338eb4d7e => 132
	i64 14486659737292545672, ; 218: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 57
	i64 14495724990987328804, ; 219: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 73
	i64 14524915121004231475, ; 220: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 112
	i64 14644440854989303794, ; 221: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 63
	i64 14789919016435397935, ; 222: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 87
	i64 14792063746108907174, ; 223: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 106
	i64 14809388726477333247, ; 224: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 110
	i64 14822551159344889270, ; 225: BeuMobileApp.Android.dll => 0xcdb447bf05ce7db6 => 0
	i64 14852515768018889994, ; 226: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 43
	i64 14987728460634540364, ; 227: System.IO.Compression.dll => 0xcfff1ba06622494c => 18
	i64 14988210264188246988, ; 228: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 45
	i64 15076659072870671916, ; 229: System.ObjectModel.dll => 0xd13b0d8c1620662c => 128
	i64 15150743910298169673, ; 230: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 71
	i64 15279429628684179188, ; 231: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 118
	i64 15370334346939861994, ; 232: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 42
	i64 15582737692548360875, ; 233: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 61
	i64 15609085926864131306, ; 234: System.dll => 0xd89e9cf3334914ea => 17
	i64 15777549416145007739, ; 235: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 75
	i64 15810740023422282496, ; 236: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 101
	i64 15817206913877585035, ; 237: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 130
	i64 15930129725311349754, ; 238: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 111
	i64 16154507427712707110, ; 239: System => 0xe03056ea4e39aa26 => 17
	i64 16423015068819898779, ; 240: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 117
	i64 16467346005009053642, ; 241: Xamarin.Google.Android.DataTransport.TransportApi => 0xe487c3f19e0337ca => 102
	i64 16565028646146589191, ; 242: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 125
	i64 16621146507174665210, ; 243: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 39
	i64 16677317093839702854, ; 244: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 68
	i64 16822611501064131242, ; 245: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 122
	i64 16833383113903931215, ; 246: mscorlib => 0xe99c30c1484d7f4f => 10
	i64 16895806301542741427, ; 247: Plugin.Permissions => 0xea79f6503d42f5b3 => 14
	i64 17024911836938395553, ; 248: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 27
	i64 17031351772568316411, ; 249: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 66
	i64 17037200463775726619, ; 250: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 53
	i64 17162136034847712714, ; 251: Behaviors.dll => 0xee2c27cb780765ca => 5
	i64 17434242208926550937, ; 252: Xamarin.Google.Android.DataTransport.TransportRuntime => 0xf1f2deeb1f304b99 => 104
	i64 17544493274320527064, ; 253: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 33
	i64 17627500474728259406, ; 254: System.Globalization => 0xf4a176498a351f4e => 134
	i64 17677828421478984182, ; 255: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 94
	i64 17685921127322830888, ; 256: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 131
	i64 17704177640604968747, ; 257: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 62
	i64 17710060891934109755, ; 258: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 60
	i64 17827832363535584534, ; 259: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 98
	i64 17882897186074144999, ; 260: FormsViewGroup => 0xf82cd03e3ac830e7 => 7
	i64 17891337867145587222, ; 261: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 113
	i64 17892495832318972303, ; 262: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 101
	i64 17928294245072900555, ; 263: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 124
	i64 17945795017270165205, ; 264: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0xf90c457cc05cfed5 => 102
	i64 17986907704309214542, ; 265: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 108
	i64 18025913125965088385, ; 266: System.Threading => 0xfa28e87b91334681 => 133
	i64 18116111925905154859, ; 267: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 32
	i64 18121036031235206392, ; 268: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 66
	i64 18129453464017766560, ; 269: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 127
	i64 18260797123374478311, ; 270: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 48
	i64 18305135509493619199, ; 271: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 67
	i64 18337470502355292274, ; 272: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 96
	i64 18380184030268848184 ; 273: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 82
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [274 x i32] [
	i32 47, i32 9, i32 36, i32 74, i32 75, i32 41, i32 59, i32 107, ; 0..7
	i32 123, i32 52, i32 6, i32 46, i32 121, i32 100, i32 136, i32 105, ; 8..15
	i32 31, i32 14, i32 3, i32 88, i32 29, i32 61, i32 53, i32 11, ; 16..23
	i32 30, i32 74, i32 103, i32 26, i32 60, i32 116, i32 11, i32 65, ; 24..31
	i32 15, i32 34, i32 46, i32 126, i32 73, i32 56, i32 40, i32 80, ; 32..39
	i32 22, i32 25, i32 23, i32 10, i32 69, i32 0, i32 76, i32 12, ; 40..47
	i32 97, i32 105, i32 90, i32 55, i32 27, i32 21, i32 119, i32 87, ; 48..55
	i32 108, i32 78, i32 77, i32 20, i32 22, i32 12, i32 1, i32 72, ; 56..63
	i32 47, i32 41, i32 91, i32 111, i32 103, i32 127, i32 82, i32 88, ; 64..71
	i32 58, i32 33, i32 25, i32 77, i32 99, i32 85, i32 63, i32 64, ; 72..79
	i32 98, i32 80, i32 79, i32 131, i32 39, i32 16, i32 28, i32 84, ; 80..87
	i32 37, i32 69, i32 57, i32 100, i32 7, i32 95, i32 59, i32 56, ; 88..95
	i32 34, i32 44, i32 110, i32 126, i32 52, i32 24, i32 104, i32 21, ; 96..103
	i32 86, i32 54, i32 51, i32 132, i32 92, i32 5, i32 91, i32 24, ; 104..111
	i32 128, i32 97, i32 85, i32 19, i32 115, i32 120, i32 29, i32 93, ; 112..119
	i32 109, i32 93, i32 125, i32 129, i32 55, i32 122, i32 2, i32 8, ; 120..127
	i32 129, i32 118, i32 135, i32 38, i32 68, i32 58, i32 96, i32 49, ; 128..135
	i32 79, i32 8, i32 67, i32 124, i32 13, i32 114, i32 71, i32 6, ; 136..143
	i32 84, i32 30, i32 20, i32 40, i32 13, i32 64, i32 89, i32 92, ; 144..151
	i32 9, i32 37, i32 121, i32 107, i32 49, i32 136, i32 19, i32 116, ; 152..159
	i32 44, i32 113, i32 95, i32 78, i32 119, i32 42, i32 134, i32 135, ; 160..167
	i32 31, i32 28, i32 16, i32 23, i32 83, i32 109, i32 89, i32 43, ; 168..175
	i32 86, i32 70, i32 83, i32 54, i32 26, i32 76, i32 1, i32 51, ; 176..183
	i32 130, i32 2, i32 81, i32 112, i32 50, i32 62, i32 45, i32 35, ; 184..191
	i32 18, i32 4, i32 36, i32 4, i32 117, i32 90, i32 123, i32 48, ; 192..199
	i32 3, i32 81, i32 38, i32 106, i32 115, i32 32, i32 72, i32 120, ; 200..207
	i32 114, i32 94, i32 50, i32 99, i32 15, i32 35, i32 133, i32 65, ; 208..215
	i32 70, i32 132, i32 57, i32 73, i32 112, i32 63, i32 87, i32 106, ; 216..223
	i32 110, i32 0, i32 43, i32 18, i32 45, i32 128, i32 71, i32 118, ; 224..231
	i32 42, i32 61, i32 17, i32 75, i32 101, i32 130, i32 111, i32 17, ; 232..239
	i32 117, i32 102, i32 125, i32 39, i32 68, i32 122, i32 10, i32 14, ; 240..247
	i32 27, i32 66, i32 53, i32 5, i32 104, i32 33, i32 134, i32 94, ; 248..255
	i32 131, i32 62, i32 60, i32 98, i32 7, i32 113, i32 101, i32 124, ; 256..263
	i32 102, i32 108, i32 133, i32 32, i32 66, i32 127, i32 48, i32 67, ; 264..271
	i32 96, i32 82 ; 272..273
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
