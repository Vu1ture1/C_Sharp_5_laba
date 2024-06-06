; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [338 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [670 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 26230656, ; 3: Microsoft.Extensions.DependencyModel => 0x1903f80 => 192
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 256
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 291
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 7: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 297
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 306
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 11: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 12: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 330
	i32 68219467, ; 13: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 14: Microsoft.Maui.Graphics.dll => 0x44bb714 => 206
	i32 82292897, ; 15: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 16: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 314
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 275
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 275
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 136584136, ; 21: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 329
	i32 140062828, ; 22: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 322
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 227
	i32 176265551, ; 27: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 28: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 277
	i32 184328833, ; 29: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 30: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 31: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 225
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 249
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 38: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 231
	i32 276479776, ; 39: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 252
	i32 280482487, ; 41: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 247
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 327
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 215
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 47: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 305
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 251
	i32 347068432, ; 49: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 209
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 334
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 403493213, ; 59: MediatR.Contracts => 0x180cd15d => 178
	i32 409257351, ; 60: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 325
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 232
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 245
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 247
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 262
	i32 489220957, ; 71: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 303
	i32 498788369, ; 72: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 73: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 200
	i32 526420162, ; 74: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 75: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 76: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 324
	i32 539058512, ; 77: Microsoft.Extensions.Logging => 0x20216150 => 196
	i32 540030774, ; 78: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 79: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 80: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 81: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 82: Jsr305Binding => 0x213954e7 => 288
	i32 569601784, ; 83: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 286
	i32 577335427, ; 84: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 597488923, ; 85: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 86: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 87: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 88: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 89: Xamarin.AndroidX.CustomView => 0x2568904f => 237
	i32 627931235, ; 90: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 316
	i32 639843206, ; 91: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 243
	i32 643868501, ; 92: System.Net => 0x2660a755 => 81
	i32 662205335, ; 93: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 94: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 282
	i32 666292255, ; 95: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 222
	i32 672442732, ; 96: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 97: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 98: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 99: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 294
	i32 693804605, ; 100: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 101: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 102: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 292
	i32 700358131, ; 103: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 722857257, ; 104: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 105: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 106: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 207
	i32 752232764, ; 107: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 108: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 212
	i32 759454413, ; 109: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 110: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 111: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 112: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 322
	i32 789151979, ; 113: Microsoft.Extensions.Options => 0x2f0980eb => 199
	i32 790371945, ; 114: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 238
	i32 804715423, ; 115: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 254
	i32 823281589, ; 117: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 118: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 119: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 120: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 121: Xamarin.AndroidX.Print => 0x3246f6cd => 268
	i32 869139383, ; 122: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 307
	i32 873119928, ; 123: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 124: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 125: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 126: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 321
	i32 904024072, ; 127: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 128: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 129: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 318
	i32 928116545, ; 130: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 291
	i32 952186615, ; 131: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 961460050, ; 132: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 311
	i32 966729478, ; 133: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 289
	i32 967690846, ; 134: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 251
	i32 975236339, ; 135: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 136: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 137: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 138: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 139: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 320
	i32 992768348, ; 140: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 141: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 142: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 195
	i32 1001831731, ; 143: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 144: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 272
	i32 1019214401, ; 145: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 146: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 191
	i32 1031528504, ; 147: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 290
	i32 1035644815, ; 148: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 220
	i32 1036536393, ; 149: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 150: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 301
	i32 1044663988, ; 151: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 258
	i32 1067306892, ; 153: GoogleGson => 0x3f9dcf8c => 176
	i32 1082857460, ; 154: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 155: Xamarin.Kotlin.StdLib => 0x409e66d8 => 293
	i32 1098259244, ; 156: System => 0x41761b2c => 164
	i32 1106973742, ; 157: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 188
	i32 1108272742, ; 158: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 323
	i32 1117529484, ; 159: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 317
	i32 1118262833, ; 160: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 313
	i32 1121599056, ; 161: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 257
	i32 1127624469, ; 162: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 198
	i32 1149092582, ; 163: Xamarin.AndroidX.Window => 0x447dc2e6 => 285
	i32 1157931901, ; 164: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 181
	i32 1168523401, ; 165: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 319
	i32 1170634674, ; 166: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 167: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 193
	i32 1175144683, ; 168: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 281
	i32 1178241025, ; 169: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 266
	i32 1202000627, ; 170: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 181
	i32 1204270330, ; 171: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 222
	i32 1204575371, ; 172: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 185
	i32 1208641965, ; 173: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 174: CommunityToolkit.Mvvm => 0x4868cc7b => 175
	i32 1219128291, ; 175: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1243150071, ; 176: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 286
	i32 1246548578, ; 177: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 228
	i32 1253011324, ; 178: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 179: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 299
	i32 1264511973, ; 180: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 276
	i32 1264890200, ; 181: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 295
	i32 1267360935, ; 182: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 280
	i32 1273260888, ; 183: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 229
	i32 1275534314, ; 184: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 294
	i32 1278448581, ; 185: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 219
	i32 1292207520, ; 186: SQLitePCLRaw.core.dll => 0x4d0585a0 => 208
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 240
	i32 1297007127, ; 188: 253503Kupreichyk.UI.dll => 0x4d4ec217 => 0
	i32 1308624726, ; 189: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 308
	i32 1309188875, ; 190: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 191: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 285
	i32 1324164729, ; 192: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 193: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 194: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 328
	i32 1364015309, ; 195: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 196: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 329
	i32 1376866003, ; 197: Xamarin.AndroidX.SavedState => 0x52114ed3 => 272
	i32 1379779777, ; 198: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 199: Xamarin.AndroidX.Media.dll => 0x5333188f => 263
	i32 1402170036, ; 200: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 201: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 233
	i32 1408764838, ; 202: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 203: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 204: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 205: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 297
	i32 1434145427, ; 206: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 207: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 289
	i32 1439761251, ; 208: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 209: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 210: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 211: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 212: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 213: es\Microsoft.Maui.Controls.resources => 0x57152abe => 303
	i32 1461234159, ; 214: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 215: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 216: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 217: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 221
	i32 1470490898, ; 218: Microsoft.Extensions.Primitives => 0x57a5e912 => 200
	i32 1479771757, ; 219: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 220: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1482209896, ; 221: 253503Kupreichyk.Application.dll => 0x5858ba68 => 331
	i32 1487239319, ; 222: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 223: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 273
	i32 1490351284, ; 224: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 179
	i32 1521091094, ; 225: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 195
	i32 1526286932, ; 226: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 327
	i32 1536373174, ; 227: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 228: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 229: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 230: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 231: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 232: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 233: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 234: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 235: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 239
	i32 1592978981, ; 236: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 237: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 290
	i32 1601112923, ; 238: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 239: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 240: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 241: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 261
	i32 1622358360, ; 242: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 243: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 284
	i32 1632842087, ; 244: Microsoft.Extensions.Configuration.Json => 0x61533167 => 189
	i32 1634654947, ; 245: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 246: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 243
	i32 1636350590, ; 247: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 236
	i32 1639515021, ; 248: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 249: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 250: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 251: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 252: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 278
	i32 1658251792, ; 253: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 287
	i32 1670060433, ; 254: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 231
	i32 1675553242, ; 255: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 256: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 257: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 258: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1688112883, ; 259: Microsoft.Data.Sqlite => 0x649e8ef3 => 179
	i32 1689493916, ; 260: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 180
	i32 1691477237, ; 261: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 262: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 263: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 264: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 209
	i32 1715489403, ; 265: 253503Kupreichyk.Persistence.dll => 0x66404a7b => 333
	i32 1720223769, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 254
	i32 1726116996, ; 267: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 268: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 269: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 226
	i32 1743415430, ; 270: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 298
	i32 1744735666, ; 271: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 272: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 273: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 274: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 275: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 276: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 277: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 277
	i32 1770582343, ; 278: Microsoft.Extensions.Logging.dll => 0x6988f147 => 196
	i32 1776026572, ; 279: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 280: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 281: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 282: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 314
	i32 1788241197, ; 283: Xamarin.AndroidX.Fragment => 0x6a96652d => 245
	i32 1793755602, ; 284: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 306
	i32 1808609942, ; 285: Xamarin.AndroidX.Loader => 0x6bcd3296 => 261
	i32 1813058853, ; 286: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 293
	i32 1813201214, ; 287: Xamarin.Google.Android.Material => 0x6c13413e => 287
	i32 1818569960, ; 288: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 267
	i32 1818787751, ; 289: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 290: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 291: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827237613, ; 292: 253503Kupreichyk.Domain.dll => 0x6ce96eed => 332
	i32 1828688058, ; 293: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 197
	i32 1847515442, ; 294: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 212
	i32 1853025655, ; 295: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 323
	i32 1858542181, ; 296: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 297: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 298: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 305
	i32 1879696579, ; 299: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 300: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 223
	i32 1886040351, ; 301: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 183
	i32 1888955245, ; 302: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 303: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 304: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 299
	i32 1898237753, ; 305: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 306: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 307: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 308: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1953182387, ; 309: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 310
	i32 1956758971, ; 310: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 311: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 274
	i32 1968388702, ; 312: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 186
	i32 1985761444, ; 313: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 214
	i32 2003115576, ; 314: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 302
	i32 2011961780, ; 315: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014489277, ; 316: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 183
	i32 2019465201, ; 317: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 258
	i32 2031763787, ; 318: Xamarin.Android.Glide => 0x791a414b => 211
	i32 2045470958, ; 319: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 320: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 253
	i32 2060060697, ; 321: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 322: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 301
	i32 2070888862, ; 323: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 324: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 194
	i32 2079903147, ; 325: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 326: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2097448633, ; 327: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 248
	i32 2103459038, ; 328: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 210
	i32 2127167465, ; 329: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 330: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 331: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 332: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 333: Microsoft.Maui => 0x80bd55ad => 204
	i32 2169148018, ; 334: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 309
	i32 2181898931, ; 335: Microsoft.Extensions.Options.dll => 0x820d22b3 => 199
	i32 2187225084, ; 336: 253503Kupreichyk.Persistence => 0x825e67fc => 333
	i32 2192057212, ; 337: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 197
	i32 2193016926, ; 338: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2197979891, ; 339: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 192
	i32 2201107256, ; 340: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 296
	i32 2201231467, ; 341: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 342: it\Microsoft.Maui.Controls.resources => 0x839595db => 311
	i32 2217644978, ; 343: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 281
	i32 2222056684, ; 344: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 345: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 262
	i32 2252106437, ; 346: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 347: Microsoft.EntityFrameworkCore => 0x86487ec9 => 180
	i32 2256313426, ; 348: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2261435625, ; 349: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 250
	i32 2265110946, ; 350: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 351: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 187
	i32 2267999099, ; 352: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 213
	i32 2279755925, ; 353: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 270
	i32 2293034957, ; 354: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 355: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 356: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 357: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 315
	i32 2305521784, ; 358: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 359: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 217
	i32 2320631194, ; 360: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 361: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 362: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 363: System.Net.Primitives => 0x8c40e0db => 70
	i32 2366048013, ; 364: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 309
	i32 2368005991, ; 365: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 366: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 186
	i32 2378619854, ; 367: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 368: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 369: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 310
	i32 2401565422, ; 370: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 371: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 242
	i32 2421380589, ; 372: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 373: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 229
	i32 2427813419, ; 374: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 307
	i32 2435356389, ; 375: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 376: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 377: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 378: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 379: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 380: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 207
	i32 2465532216, ; 381: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 232
	i32 2471841756, ; 382: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 383: Java.Interop.dll => 0x93918882 => 168
	i32 2477367478, ; 384: 253503Kupreichyk.Domain => 0x93a9a0b6 => 332
	i32 2480646305, ; 385: Microsoft.Maui.Controls => 0x93dba8a1 => 202
	i32 2483903535, ; 386: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 387: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 388: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 389: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503351294, ; 390: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 313
	i32 2505896520, ; 391: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 256
	i32 2522472828, ; 392: Xamarin.Android.Glide.dll => 0x9659e17c => 211
	i32 2538310050, ; 393: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 394: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 308
	i32 2562349572, ; 395: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 396: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 397: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 312
	i32 2581783588, ; 398: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 257
	i32 2581819634, ; 399: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 280
	i32 2585220780, ; 400: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 401: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 402: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 403: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 193
	i32 2593496499, ; 404: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 317
	i32 2605712449, ; 405: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 296
	i32 2615233544, ; 406: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 246
	i32 2615519321, ; 407: MediatR => 0x9be5a859 => 177
	i32 2616218305, ; 408: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 198
	i32 2617129537, ; 409: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 410: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 411: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 236
	i32 2624644809, ; 412: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 241
	i32 2626831493, ; 413: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 312
	i32 2627185994, ; 414: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 415: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 416: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 252
	i32 2634653062, ; 417: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 182
	i32 2663391936, ; 418: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 213
	i32 2663698177, ; 419: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 420: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 421: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 422: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 295
	i32 2676780864, ; 423: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677943566, ; 424: MediatR.Contracts.dll => 0x9f9e2d0e => 178
	i32 2686887180, ; 425: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 426: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 427: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 278
	i32 2715334215, ; 428: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 429: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 430: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 431: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 432: Xamarin.AndroidX.Activity => 0xa2e0939b => 215
	i32 2735172069, ; 433: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 434: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 221
	i32 2740698338, ; 435: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 298
	i32 2740948882, ; 436: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 437: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 438: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 318
	i32 2758225723, ; 439: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 203
	i32 2764765095, ; 440: Microsoft.Maui.dll => 0xa4caf7a7 => 204
	i32 2765824710, ; 441: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 442: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 292
	i32 2778768386, ; 443: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 283
	i32 2779977773, ; 444: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 271
	i32 2785988530, ; 445: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 324
	i32 2788224221, ; 446: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 246
	i32 2801831435, ; 447: Microsoft.Maui.Graphics => 0xa7008e0b => 206
	i32 2803228030, ; 448: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 449: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 233
	i32 2819470561, ; 450: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 451: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 452: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 271
	i32 2824502124, ; 453: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2838993487, ; 454: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 259
	i32 2847789619, ; 455: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 182
	i32 2849599387, ; 456: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 457: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 283
	i32 2855708567, ; 458: Xamarin.AndroidX.Transition => 0xaa36a797 => 279
	i32 2861098320, ; 459: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 460: Microsoft.Maui.Essentials => 0xaa8a4878 => 205
	i32 2868488919, ; 461: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 462: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 216
	i32 2875164099, ; 463: Jsr305Binding.dll => 0xab5f85c3 => 288
	i32 2875220617, ; 464: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 465: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 244
	i32 2887636118, ; 466: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 467: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 468: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 469: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 470: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 471: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 472: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 194
	i32 2916838712, ; 473: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 284
	i32 2919462931, ; 474: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 475: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 218
	i32 2936416060, ; 476: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 477: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 478: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 479: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 480: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 481: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 482: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 240
	i32 2987532451, ; 483: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 274
	i32 2996846495, ; 484: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 255
	i32 3016983068, ; 485: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 276
	i32 3023353419, ; 486: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 487: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 249
	i32 3038032645, ; 488: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 334
	i32 3053864966, ; 489: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 304
	i32 3056245963, ; 490: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 273
	i32 3057625584, ; 491: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 264
	i32 3059408633, ; 492: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 493: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 494: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 184
	i32 3075834255, ; 495: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 496: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 497: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 498: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 499: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 500: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 501: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 502: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 503: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 504: GoogleGson.dll => 0xbba64c02 => 176
	i32 3159123045, ; 505: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 506: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 507: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 265
	i32 3192346100, ; 508: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 509: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 510: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 184
	i32 3204380047, ; 511: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 512: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 513: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 239
	i32 3220365878, ; 514: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 515: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 516: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 517: Xamarin.AndroidX.CardView => 0xc235e84d => 226
	i32 3265493905, ; 518: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 519: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3267021929, ; 520: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 224
	i32 3277815716, ; 521: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 522: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 523: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 524: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 525: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 526: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 527: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 304
	i32 3316684772, ; 528: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 529: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 237
	i32 3317144872, ; 530: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 531: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 223
	i32 3345895724, ; 532: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 269
	i32 3346324047, ; 533: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 266
	i32 3353484488, ; 534: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 248
	i32 3357674450, ; 535: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 321
	i32 3358260929, ; 536: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 537: SQLitePCLRaw.core => 0xc849ca45 => 208
	i32 3362336904, ; 538: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 216
	i32 3362522851, ; 539: Xamarin.AndroidX.Core => 0xc86c06e3 => 234
	i32 3366347497, ; 540: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 541: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 270
	i32 3381016424, ; 542: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 300
	i32 3395150330, ; 543: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 544: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 545: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 238
	i32 3428513518, ; 546: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 190
	i32 3429136800, ; 547: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 548: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 549: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 241
	i32 3445260447, ; 550: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 551: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 201
	i32 3458724246, ; 552: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 319
	i32 3471940407, ; 553: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 554: Mono.Android => 0xcf3163e6 => 171
	i32 3484440000, ; 555: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 320
	i32 3485117614, ; 556: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 557: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 558: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 230
	i32 3501239056, ; 559: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 224
	i32 3509114376, ; 560: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 561: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 562: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 563: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 564: System.Threading.Timer => 0xd432d20b => 147
	i32 3561544364, ; 565: 253503Kupreichyk.UI => 0xd448daac => 0
	i32 3570554715, ; 566: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 567: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 328
	i32 3592228221, ; 568: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 330
	i32 3597029428, ; 569: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 214
	i32 3598340787, ; 570: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 571: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 572: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 573: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 268
	i32 3633644679, ; 574: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 218
	i32 3638274909, ; 575: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 576: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 253
	i32 3643446276, ; 577: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 325
	i32 3643854240, ; 578: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 265
	i32 3645089577, ; 579: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 580: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 187
	i32 3660523487, ; 581: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 582: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 583: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 225
	i32 3684561358, ; 584: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 230
	i32 3700866549, ; 585: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 586: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 235
	i32 3716563718, ; 587: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 588: Xamarin.AndroidX.Annotation => 0xdda814c6 => 217
	i32 3722202641, ; 589: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 189
	i32 3724971120, ; 590: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 264
	i32 3732100267, ; 591: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 592: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 593: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 594: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3751619990, ; 595: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 300
	i32 3754567612, ; 596: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 210
	i32 3758424670, ; 597: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 188
	i32 3758932259, ; 598: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 250
	i32 3786282454, ; 599: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 227
	i32 3792276235, ; 600: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 601: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 201
	i32 3802395368, ; 602: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 603: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 604: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 605: Xamarin.AndroidX.Media => 0xe3d849b1 => 263
	i32 3823082795, ; 606: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 607: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 608: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 191
	i32 3844307129, ; 609: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 610: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 611: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 612: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 613: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 614: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 615: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 279
	i32 3888767677, ; 616: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 269
	i32 3896106733, ; 617: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 618: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 234
	i32 3901907137, ; 619: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 620: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 228
	i32 3920221145, ; 621: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 316
	i32 3920810846, ; 622: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 623: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 282
	i32 3928044579, ; 624: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 625: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 626: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 267
	i32 3945713374, ; 627: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 628: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 629: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 220
	i32 3959773229, ; 630: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 255
	i32 3995751179, ; 631: 253503Kupreichyk.Application => 0xee2a530b => 331
	i32 4003436829, ; 632: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 633: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 219
	i32 4025784931, ; 634: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 635: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 203
	i32 4054681211, ; 636: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 637: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 638: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4091086043, ; 639: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 302
	i32 4094352644, ; 640: Microsoft.Maui.Essentials.dll => 0xf40add04 => 205
	i32 4099507663, ; 641: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 642: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 643: Xamarin.AndroidX.Emoji2 => 0xf479582c => 242
	i32 4101842092, ; 644: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 185
	i32 4103439459, ; 645: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 326
	i32 4126470640, ; 646: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 190
	i32 4127667938, ; 647: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 648: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 649: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 650: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 326
	i32 4151237749, ; 651: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 652: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 653: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 654: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 655: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 656: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 260
	i32 4185676441, ; 657: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 658: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 659: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 660: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 315
	i32 4256097574, ; 661: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 235
	i32 4258378803, ; 662: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 259
	i32 4260525087, ; 663: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 664: Microsoft.Maui.Controls.dll => 0xfea12dee => 202
	i32 4274623895, ; 665: CommunityToolkit.Mvvm.dll => 0xfec99597 => 175
	i32 4274976490, ; 666: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 667: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 260
	i32 4292200793, ; 668: MediatR.dll => 0xffd5c959 => 177
	i32 4294763496 ; 669: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 244
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [670 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 192, ; 3
	i32 256, ; 4
	i32 291, ; 5
	i32 48, ; 6
	i32 297, ; 7
	i32 80, ; 8
	i32 306, ; 9
	i32 145, ; 10
	i32 30, ; 11
	i32 330, ; 12
	i32 124, ; 13
	i32 206, ; 14
	i32 102, ; 15
	i32 314, ; 16
	i32 275, ; 17
	i32 107, ; 18
	i32 275, ; 19
	i32 139, ; 20
	i32 329, ; 21
	i32 322, ; 22
	i32 77, ; 23
	i32 124, ; 24
	i32 13, ; 25
	i32 227, ; 26
	i32 132, ; 27
	i32 277, ; 28
	i32 151, ; 29
	i32 18, ; 30
	i32 225, ; 31
	i32 26, ; 32
	i32 249, ; 33
	i32 1, ; 34
	i32 59, ; 35
	i32 42, ; 36
	i32 91, ; 37
	i32 231, ; 38
	i32 147, ; 39
	i32 252, ; 40
	i32 247, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 327, ; 44
	i32 215, ; 45
	i32 83, ; 46
	i32 305, ; 47
	i32 251, ; 48
	i32 209, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 334, ; 57
	i32 165, ; 58
	i32 178, ; 59
	i32 325, ; 60
	i32 232, ; 61
	i32 12, ; 62
	i32 245, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 247, ; 69
	i32 262, ; 70
	i32 303, ; 71
	i32 84, ; 72
	i32 200, ; 73
	i32 150, ; 74
	i32 60, ; 75
	i32 324, ; 76
	i32 196, ; 77
	i32 51, ; 78
	i32 103, ; 79
	i32 114, ; 80
	i32 40, ; 81
	i32 288, ; 82
	i32 286, ; 83
	i32 120, ; 84
	i32 173, ; 85
	i32 52, ; 86
	i32 44, ; 87
	i32 119, ; 88
	i32 237, ; 89
	i32 316, ; 90
	i32 243, ; 91
	i32 81, ; 92
	i32 136, ; 93
	i32 282, ; 94
	i32 222, ; 95
	i32 8, ; 96
	i32 73, ; 97
	i32 155, ; 98
	i32 294, ; 99
	i32 154, ; 100
	i32 92, ; 101
	i32 292, ; 102
	i32 45, ; 103
	i32 109, ; 104
	i32 129, ; 105
	i32 207, ; 106
	i32 25, ; 107
	i32 212, ; 108
	i32 72, ; 109
	i32 55, ; 110
	i32 46, ; 111
	i32 322, ; 112
	i32 199, ; 113
	i32 238, ; 114
	i32 22, ; 115
	i32 254, ; 116
	i32 86, ; 117
	i32 43, ; 118
	i32 160, ; 119
	i32 71, ; 120
	i32 268, ; 121
	i32 307, ; 122
	i32 3, ; 123
	i32 42, ; 124
	i32 63, ; 125
	i32 321, ; 126
	i32 16, ; 127
	i32 53, ; 128
	i32 318, ; 129
	i32 291, ; 130
	i32 105, ; 131
	i32 311, ; 132
	i32 289, ; 133
	i32 251, ; 134
	i32 34, ; 135
	i32 158, ; 136
	i32 85, ; 137
	i32 32, ; 138
	i32 320, ; 139
	i32 12, ; 140
	i32 51, ; 141
	i32 195, ; 142
	i32 56, ; 143
	i32 272, ; 144
	i32 36, ; 145
	i32 191, ; 146
	i32 290, ; 147
	i32 220, ; 148
	i32 35, ; 149
	i32 301, ; 150
	i32 58, ; 151
	i32 258, ; 152
	i32 176, ; 153
	i32 17, ; 154
	i32 293, ; 155
	i32 164, ; 156
	i32 188, ; 157
	i32 323, ; 158
	i32 317, ; 159
	i32 313, ; 160
	i32 257, ; 161
	i32 198, ; 162
	i32 285, ; 163
	i32 181, ; 164
	i32 319, ; 165
	i32 153, ; 166
	i32 193, ; 167
	i32 281, ; 168
	i32 266, ; 169
	i32 181, ; 170
	i32 222, ; 171
	i32 185, ; 172
	i32 29, ; 173
	i32 175, ; 174
	i32 52, ; 175
	i32 286, ; 176
	i32 228, ; 177
	i32 5, ; 178
	i32 299, ; 179
	i32 276, ; 180
	i32 295, ; 181
	i32 280, ; 182
	i32 229, ; 183
	i32 294, ; 184
	i32 219, ; 185
	i32 208, ; 186
	i32 240, ; 187
	i32 0, ; 188
	i32 308, ; 189
	i32 85, ; 190
	i32 285, ; 191
	i32 61, ; 192
	i32 112, ; 193
	i32 328, ; 194
	i32 57, ; 195
	i32 329, ; 196
	i32 272, ; 197
	i32 99, ; 198
	i32 263, ; 199
	i32 19, ; 200
	i32 233, ; 201
	i32 111, ; 202
	i32 101, ; 203
	i32 102, ; 204
	i32 297, ; 205
	i32 104, ; 206
	i32 289, ; 207
	i32 71, ; 208
	i32 38, ; 209
	i32 32, ; 210
	i32 103, ; 211
	i32 73, ; 212
	i32 303, ; 213
	i32 9, ; 214
	i32 123, ; 215
	i32 46, ; 216
	i32 221, ; 217
	i32 200, ; 218
	i32 9, ; 219
	i32 43, ; 220
	i32 331, ; 221
	i32 4, ; 222
	i32 273, ; 223
	i32 179, ; 224
	i32 195, ; 225
	i32 327, ; 226
	i32 31, ; 227
	i32 138, ; 228
	i32 92, ; 229
	i32 93, ; 230
	i32 49, ; 231
	i32 141, ; 232
	i32 112, ; 233
	i32 140, ; 234
	i32 239, ; 235
	i32 115, ; 236
	i32 290, ; 237
	i32 157, ; 238
	i32 76, ; 239
	i32 79, ; 240
	i32 261, ; 241
	i32 37, ; 242
	i32 284, ; 243
	i32 189, ; 244
	i32 174, ; 245
	i32 243, ; 246
	i32 236, ; 247
	i32 64, ; 248
	i32 138, ; 249
	i32 15, ; 250
	i32 116, ; 251
	i32 278, ; 252
	i32 287, ; 253
	i32 231, ; 254
	i32 48, ; 255
	i32 70, ; 256
	i32 80, ; 257
	i32 126, ; 258
	i32 179, ; 259
	i32 180, ; 260
	i32 94, ; 261
	i32 121, ; 262
	i32 26, ; 263
	i32 209, ; 264
	i32 333, ; 265
	i32 254, ; 266
	i32 97, ; 267
	i32 28, ; 268
	i32 226, ; 269
	i32 298, ; 270
	i32 149, ; 271
	i32 169, ; 272
	i32 4, ; 273
	i32 98, ; 274
	i32 33, ; 275
	i32 93, ; 276
	i32 277, ; 277
	i32 196, ; 278
	i32 21, ; 279
	i32 41, ; 280
	i32 170, ; 281
	i32 314, ; 282
	i32 245, ; 283
	i32 306, ; 284
	i32 261, ; 285
	i32 293, ; 286
	i32 287, ; 287
	i32 267, ; 288
	i32 2, ; 289
	i32 134, ; 290
	i32 111, ; 291
	i32 332, ; 292
	i32 197, ; 293
	i32 212, ; 294
	i32 323, ; 295
	i32 58, ; 296
	i32 95, ; 297
	i32 305, ; 298
	i32 39, ; 299
	i32 223, ; 300
	i32 183, ; 301
	i32 25, ; 302
	i32 94, ; 303
	i32 299, ; 304
	i32 89, ; 305
	i32 99, ; 306
	i32 10, ; 307
	i32 87, ; 308
	i32 310, ; 309
	i32 100, ; 310
	i32 274, ; 311
	i32 186, ; 312
	i32 214, ; 313
	i32 302, ; 314
	i32 7, ; 315
	i32 183, ; 316
	i32 258, ; 317
	i32 211, ; 318
	i32 88, ; 319
	i32 253, ; 320
	i32 154, ; 321
	i32 301, ; 322
	i32 33, ; 323
	i32 194, ; 324
	i32 116, ; 325
	i32 82, ; 326
	i32 248, ; 327
	i32 210, ; 328
	i32 20, ; 329
	i32 11, ; 330
	i32 162, ; 331
	i32 3, ; 332
	i32 204, ; 333
	i32 309, ; 334
	i32 199, ; 335
	i32 333, ; 336
	i32 197, ; 337
	i32 84, ; 338
	i32 192, ; 339
	i32 296, ; 340
	i32 64, ; 341
	i32 311, ; 342
	i32 281, ; 343
	i32 143, ; 344
	i32 262, ; 345
	i32 157, ; 346
	i32 180, ; 347
	i32 41, ; 348
	i32 250, ; 349
	i32 117, ; 350
	i32 187, ; 351
	i32 213, ; 352
	i32 270, ; 353
	i32 131, ; 354
	i32 75, ; 355
	i32 66, ; 356
	i32 315, ; 357
	i32 172, ; 358
	i32 217, ; 359
	i32 143, ; 360
	i32 106, ; 361
	i32 151, ; 362
	i32 70, ; 363
	i32 309, ; 364
	i32 156, ; 365
	i32 186, ; 366
	i32 121, ; 367
	i32 127, ; 368
	i32 310, ; 369
	i32 152, ; 370
	i32 242, ; 371
	i32 141, ; 372
	i32 229, ; 373
	i32 307, ; 374
	i32 20, ; 375
	i32 14, ; 376
	i32 135, ; 377
	i32 75, ; 378
	i32 59, ; 379
	i32 207, ; 380
	i32 232, ; 381
	i32 167, ; 382
	i32 168, ; 383
	i32 332, ; 384
	i32 202, ; 385
	i32 15, ; 386
	i32 74, ; 387
	i32 6, ; 388
	i32 23, ; 389
	i32 313, ; 390
	i32 256, ; 391
	i32 211, ; 392
	i32 91, ; 393
	i32 308, ; 394
	i32 1, ; 395
	i32 136, ; 396
	i32 312, ; 397
	i32 257, ; 398
	i32 280, ; 399
	i32 134, ; 400
	i32 69, ; 401
	i32 146, ; 402
	i32 193, ; 403
	i32 317, ; 404
	i32 296, ; 405
	i32 246, ; 406
	i32 177, ; 407
	i32 198, ; 408
	i32 88, ; 409
	i32 96, ; 410
	i32 236, ; 411
	i32 241, ; 412
	i32 312, ; 413
	i32 31, ; 414
	i32 45, ; 415
	i32 252, ; 416
	i32 182, ; 417
	i32 213, ; 418
	i32 109, ; 419
	i32 158, ; 420
	i32 35, ; 421
	i32 295, ; 422
	i32 22, ; 423
	i32 178, ; 424
	i32 114, ; 425
	i32 57, ; 426
	i32 278, ; 427
	i32 144, ; 428
	i32 118, ; 429
	i32 120, ; 430
	i32 110, ; 431
	i32 215, ; 432
	i32 139, ; 433
	i32 221, ; 434
	i32 298, ; 435
	i32 54, ; 436
	i32 105, ; 437
	i32 318, ; 438
	i32 203, ; 439
	i32 204, ; 440
	i32 133, ; 441
	i32 292, ; 442
	i32 283, ; 443
	i32 271, ; 444
	i32 324, ; 445
	i32 246, ; 446
	i32 206, ; 447
	i32 159, ; 448
	i32 233, ; 449
	i32 163, ; 450
	i32 132, ; 451
	i32 271, ; 452
	i32 161, ; 453
	i32 259, ; 454
	i32 182, ; 455
	i32 140, ; 456
	i32 283, ; 457
	i32 279, ; 458
	i32 169, ; 459
	i32 205, ; 460
	i32 174, ; 461
	i32 216, ; 462
	i32 288, ; 463
	i32 40, ; 464
	i32 244, ; 465
	i32 81, ; 466
	i32 56, ; 467
	i32 37, ; 468
	i32 97, ; 469
	i32 166, ; 470
	i32 172, ; 471
	i32 194, ; 472
	i32 284, ; 473
	i32 82, ; 474
	i32 218, ; 475
	i32 98, ; 476
	i32 30, ; 477
	i32 159, ; 478
	i32 18, ; 479
	i32 127, ; 480
	i32 119, ; 481
	i32 240, ; 482
	i32 274, ; 483
	i32 255, ; 484
	i32 276, ; 485
	i32 165, ; 486
	i32 249, ; 487
	i32 334, ; 488
	i32 304, ; 489
	i32 273, ; 490
	i32 264, ; 491
	i32 170, ; 492
	i32 16, ; 493
	i32 184, ; 494
	i32 144, ; 495
	i32 125, ; 496
	i32 118, ; 497
	i32 38, ; 498
	i32 115, ; 499
	i32 47, ; 500
	i32 142, ; 501
	i32 117, ; 502
	i32 34, ; 503
	i32 176, ; 504
	i32 95, ; 505
	i32 53, ; 506
	i32 265, ; 507
	i32 129, ; 508
	i32 153, ; 509
	i32 184, ; 510
	i32 24, ; 511
	i32 161, ; 512
	i32 239, ; 513
	i32 148, ; 514
	i32 104, ; 515
	i32 89, ; 516
	i32 226, ; 517
	i32 60, ; 518
	i32 142, ; 519
	i32 224, ; 520
	i32 100, ; 521
	i32 5, ; 522
	i32 13, ; 523
	i32 122, ; 524
	i32 135, ; 525
	i32 28, ; 526
	i32 304, ; 527
	i32 72, ; 528
	i32 237, ; 529
	i32 24, ; 530
	i32 223, ; 531
	i32 269, ; 532
	i32 266, ; 533
	i32 248, ; 534
	i32 321, ; 535
	i32 137, ; 536
	i32 208, ; 537
	i32 216, ; 538
	i32 234, ; 539
	i32 168, ; 540
	i32 270, ; 541
	i32 300, ; 542
	i32 101, ; 543
	i32 123, ; 544
	i32 238, ; 545
	i32 190, ; 546
	i32 163, ; 547
	i32 167, ; 548
	i32 241, ; 549
	i32 39, ; 550
	i32 201, ; 551
	i32 319, ; 552
	i32 17, ; 553
	i32 171, ; 554
	i32 320, ; 555
	i32 137, ; 556
	i32 150, ; 557
	i32 230, ; 558
	i32 224, ; 559
	i32 155, ; 560
	i32 130, ; 561
	i32 19, ; 562
	i32 65, ; 563
	i32 147, ; 564
	i32 0, ; 565
	i32 47, ; 566
	i32 328, ; 567
	i32 330, ; 568
	i32 214, ; 569
	i32 79, ; 570
	i32 61, ; 571
	i32 106, ; 572
	i32 268, ; 573
	i32 218, ; 574
	i32 49, ; 575
	i32 253, ; 576
	i32 325, ; 577
	i32 265, ; 578
	i32 14, ; 579
	i32 187, ; 580
	i32 68, ; 581
	i32 171, ; 582
	i32 225, ; 583
	i32 230, ; 584
	i32 78, ; 585
	i32 235, ; 586
	i32 108, ; 587
	i32 217, ; 588
	i32 189, ; 589
	i32 264, ; 590
	i32 67, ; 591
	i32 63, ; 592
	i32 27, ; 593
	i32 160, ; 594
	i32 300, ; 595
	i32 210, ; 596
	i32 188, ; 597
	i32 250, ; 598
	i32 227, ; 599
	i32 10, ; 600
	i32 201, ; 601
	i32 11, ; 602
	i32 173, ; 603
	i32 78, ; 604
	i32 263, ; 605
	i32 126, ; 606
	i32 83, ; 607
	i32 191, ; 608
	i32 66, ; 609
	i32 107, ; 610
	i32 65, ; 611
	i32 128, ; 612
	i32 122, ; 613
	i32 77, ; 614
	i32 279, ; 615
	i32 269, ; 616
	i32 8, ; 617
	i32 234, ; 618
	i32 2, ; 619
	i32 228, ; 620
	i32 316, ; 621
	i32 44, ; 622
	i32 282, ; 623
	i32 156, ; 624
	i32 128, ; 625
	i32 267, ; 626
	i32 23, ; 627
	i32 133, ; 628
	i32 220, ; 629
	i32 255, ; 630
	i32 331, ; 631
	i32 29, ; 632
	i32 219, ; 633
	i32 62, ; 634
	i32 203, ; 635
	i32 90, ; 636
	i32 87, ; 637
	i32 148, ; 638
	i32 302, ; 639
	i32 205, ; 640
	i32 36, ; 641
	i32 86, ; 642
	i32 242, ; 643
	i32 185, ; 644
	i32 326, ; 645
	i32 190, ; 646
	i32 50, ; 647
	i32 6, ; 648
	i32 90, ; 649
	i32 326, ; 650
	i32 21, ; 651
	i32 162, ; 652
	i32 96, ; 653
	i32 50, ; 654
	i32 113, ; 655
	i32 260, ; 656
	i32 130, ; 657
	i32 76, ; 658
	i32 27, ; 659
	i32 315, ; 660
	i32 235, ; 661
	i32 259, ; 662
	i32 7, ; 663
	i32 202, ; 664
	i32 175, ; 665
	i32 110, ; 666
	i32 260, ; 667
	i32 177, ; 668
	i32 244 ; 669
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
