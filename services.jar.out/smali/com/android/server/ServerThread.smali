.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private addClipServiceExtra()V
    .locals 2

    .prologue
    const-string v0, "miui.clipserviceext"

    new-instance v1, Lcom/miui/server/ClipServiceExtra;

    invoke-direct {v1}, Lcom/miui/server/ClipServiceExtra;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1221
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1223
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1225
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 124
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return-void
.end method

.method public run()V
    .locals 146

    .prologue
    .line 130
    const-string v3, "SystemServer"

    const-string v9, "!@SystemServer Thread begins..."

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, "BUILD_DESC"

    const-string v9, "ro.build.description"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 135
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 137
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 141
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 145
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v119

    .line 147
    .local v119, shutdownAction:Ljava/lang/String;
    if-eqz v119, :cond_0

    invoke-virtual/range {v119 .. v119}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 148
    const/4 v3, 0x0

    move-object/from16 v0, v119

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_16

    const/16 v113, 0x1

    .line 151
    .local v113, reboot:Z
    :goto_0
    invoke-virtual/range {v119 .. v119}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_17

    .line 152
    const/4 v3, 0x1

    invoke-virtual/range {v119 .. v119}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v119

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v112

    .line 157
    .local v112, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v113

    move-object/from16 v1, v112

    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 161
    .end local v112           #reason:Ljava/lang/String;
    .end local v113           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 162
    .local v83, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v82, 0x0

    .line 164
    .local v82, factoryTest:I
    :goto_2
    const-string v3, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 166
    .local v16, headless:Z
    const/16 v44, 0x0

    .line 167
    .local v44, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v65, 0x0

    .line 168
    .local v65, contentService:Landroid/content/ContentService;
    const/16 v90, 0x0

    .line 169
    .local v90, lights:Lcom/android/server/LightsService;
    const/16 v111, 0x0

    .line 170
    .local v111, power:Lcom/android/server/PowerManagerService;
    const/16 v53, 0x0

    .line 171
    .local v53, battery:Lcom/android/server/BatteryService;
    const/16 v133, 0x0

    .line 172
    .local v133, vibrator:Lcom/android/server/VibratorService;
    const/16 v46, 0x0

    .line 173
    .local v46, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 174
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 175
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v102, 0x0

    .line 176
    .local v102, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v62, 0x0

    .line 177
    .local v62, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v143, 0x0

    .line 178
    .local v143, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v140, 0x0

    .line 179
    .local v140, wifi:Lcom/android/server/WifiService;
    const/16 v138, 0x0

    .line 181
    .local v138, wfd:Lcom/samsung/wfd/WfdService;
    const/16 v142, 0x0

    .line 183
    .local v142, wifiOffloadService:Lcom/android/server/WifiOffloadService;
    const/16 v118, 0x0

    .line 184
    .local v118, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v110, 0x0

    .line 185
    .local v110, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 186
    .local v4, context:Landroid/content/Context;
    const/16 v145, 0x0

    .line 187
    .local v145, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v54, 0x0

    .line 188
    .local v54, bluetooth:Landroid/server/BluetoothService;
    const/16 v56, 0x0

    .line 189
    .local v56, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v50, 0x0

    .line 190
    .local v50, avrcp:Landroid/server/AvrcpStubService;
    const/16 v75, 0x0

    .line 191
    .local v75, dock:Lcom/android/server/DockObserver;
    const/16 v122, 0x0

    .line 192
    .local v122, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v131, 0x0

    .line 193
    .local v131, usb:Lcom/android/server/usb/UsbService;
    const/16 v116, 0x0

    .line 194
    .local v116, serial:Lcom/android/server/SerialService;
    const/16 v129, 0x0

    .line 195
    .local v129, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v114, 0x0

    .line 196
    .local v114, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v124, 0x0

    .line 197
    .local v124, throttle:Lcom/android/server/ThrottleService;
    const/16 v104, 0x0

    .line 198
    .local v104, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v59, 0x0

    .line 199
    .local v59, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v88, 0x0

    .line 200
    .local v88, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v69, 0x0

    .line 203
    .local v69, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    const/16 v71, 0x0

    .line 206
    .local v71, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 209
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5d

    .line 211
    .end local v111           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 213
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static/range {v82 .. v82}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 216
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 219
    const-string v3, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 223
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 225
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 228
    .local v68, cryptState:Ljava/lang/String;
    const/16 v108, 0x0

    .line 229
    .local v108, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 230
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/16 v108, 0x1

    .line 237
    :cond_1
    :goto_3
    const-string v3, "SystemServer"

    const-string v9, "!@beginofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz v82, :cond_1a

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v108

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v110

    .line 241
    const-string v3, "SystemServer"

    const-string v9, "!@endofPackageManager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    const/16 v84, 0x0

    .line 244
    .local v84, firstBoot:Z
    :try_start_2
    invoke-interface/range {v110 .. v110}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v84

    .line 248
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 250
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 254
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v45, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 256
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .local v45, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_5
    const-string v3, "account"

    move-object/from16 v0, v45

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5e

    move-object/from16 v44, v45

    .line 261
    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_6
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v3, 0x1

    move/from16 v0, v82

    if-ne v0, v3, :cond_1b

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v65

    .line 267
    new-instance v72, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 269
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .local v72, dEncService:Lcom/android/server/DirEncryptService;
    :try_start_7
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_2

    .line 270
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5f

    :cond_2
    move-object/from16 v71, v72

    .line 276
    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    :goto_8
    if-eqz v71, :cond_3

    .line 277
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual/range {v71 .. v71}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 281
    :cond_3
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v91, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 287
    .end local v90           #lights:Lcom/android/server/LightsService;
    .local v91, lights:Lcom/android/server/LightsService;
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v91

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_60

    .line 289
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_a
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 291
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v134, Lcom/android/server/VibratorService;

    move-object/from16 v0, v134

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_61

    .line 293
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .local v134, vibrator:Lcom/android/server/VibratorService;
    :try_start_b
    const-string v3, "vibrator"

    move-object/from16 v0, v134

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 297
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v91

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 299
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_62

    .line 301
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_c
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 303
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 307
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v9, "android.hardware.sensor.hub"

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 308
    const-string v3, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v3, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 311
    :cond_4
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v3, 0x1

    move/from16 v0, v82

    if-eq v0, v3, :cond_1c

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v84, :cond_1d

    const/4 v3, 0x1

    :goto_a
    move/from16 v0, v108

    invoke-static {v4, v6, v9, v3, v0}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v145

    .line 315
    const-string v3, "window"

    move-object/from16 v0, v145

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 316
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->getInputManagerService()Lcom/android/server/input/InputManagerService;

    move-result-object v88

    .line 317
    const-string v3, "input"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 319
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v145

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 322
    new-instance v3, Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V

    .line 328
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 329
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    :goto_b
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .line 365
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v108           #onlyCore:Z
    .restart local v90       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v73, 0x0

    .line 367
    .local v73, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v80, 0x0

    .line 369
    .local v80, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v120, 0x0

    .line 370
    .local v120, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v86, 0x0

    .line 371
    .local v86, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v47, 0x0

    .line 372
    .local v47, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v106, 0x0

    .line 373
    .local v106, notification:Lcom/android/server/NotificationManagerService;
    const/16 v136, 0x0

    .line 374
    .local v136, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v92, 0x0

    .line 375
    .local v92, location:Lcom/android/server/LocationManagerService;
    const/16 v66, 0x0

    .line 376
    .local v66, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v126, 0x0

    .line 377
    .local v126, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v94, 0x0

    .line 378
    .local v94, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v77, 0x0

    .line 381
    .local v77, dreamy:Landroid/service/dreams/DreamManagerService;
    const/4 v3, 0x1

    move/from16 v0, v82

    if-eq v0, v3, :cond_5

    .line 383
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v87, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v145

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 385
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .local v87, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_e
    const-string v3, "input_method"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5c

    move-object/from16 v86, v87

    .line 391
    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 401
    :cond_5
    :goto_e
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "CustomeFrequencyManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v70, Lcom/android/server/CustomFrequencyManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 403
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .local v70, custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :try_start_11
    const-string v3, "CustomFrequencyManagerService"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5b

    move-object/from16 v69, v70

    .line 409
    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :goto_f
    :try_start_12
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 415
    :goto_10
    :try_start_13
    invoke-interface/range {v110 .. v110}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_8

    .line 421
    :goto_11
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5a

    .line 428
    :goto_12
    const/4 v3, 0x1

    move/from16 v0, v82

    if-eq v0, v3, :cond_23

    .line 429
    const/16 v100, 0x0

    .line 430
    .local v100, mountService:Lcom/android/server/MountService;
    const-string v3, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 436
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v101, Lcom/android/server/MountService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9

    .line 438
    .end local v100           #mountService:Lcom/android/server/MountService;
    .local v101, mountService:Lcom/android/server/MountService;
    :try_start_16
    const-string v3, "mount"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_59

    move-object/from16 v100, v101

    .line 445
    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    :cond_6
    :goto_13
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v95, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 447
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v95, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_18
    const-string v3, "lock_settings"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_58

    move-object/from16 v94, v95

    .line 453
    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_14
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v74, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 455
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v74, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1a
    const-string v3, "device_policy"

    move-object/from16 v0, v74

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_57

    move-object/from16 v73, v74

    .line 461
    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_15
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v121, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v121

    move-object/from16 v1, v145

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 463
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v121, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1c
    const-string v3, "statusbar"

    move-object/from16 v0, v121

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_56

    move-object/from16 v120, v121

    .line 470
    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_16
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v81, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v110

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v81

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d

    .line 472
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v81, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_1e
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v81

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 473
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_55

    move-object/from16 v80, v81

    .line 480
    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_17
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    .line 491
    :goto_18
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServerThread;->addClipServiceExtra()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f

    .line 499
    :goto_19
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 501
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10

    .line 507
    :goto_1a
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v127, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .line 509
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v127, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_23
    const-string v3, "textservices"

    move-object/from16 v0, v127

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_54

    move-object/from16 v126, v127

    .line 515
    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1b
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v103, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v103

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    .line 517
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v103, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_25
    const-string v3, "netstats"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_53

    move-object/from16 v12, v103

    .line 523
    .end local v103           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1c
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_13

    .line 527
    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_27
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_52

    .line 533
    :goto_1d
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v144, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_14

    .line 535
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v144, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_29
    const-string v3, "wifip2p"

    move-object/from16 v0, v144

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_51

    move-object/from16 v143, v144

    .line 541
    .end local v144           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1e
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v141, Lcom/android/server/WifiService;

    move-object/from16 v0, v141

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 543
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .local v141, wifi:Lcom/android/server/WifiService;
    :try_start_2b
    const-string v3, "wifi"

    move-object/from16 v0, v141

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_50

    move-object/from16 v140, v141

    .line 550
    .end local v141           #wifi:Lcom/android/server/WifiService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v139, Lcom/samsung/wfd/WfdService;

    move-object/from16 v0, v139

    invoke-direct {v0, v4}, Lcom/samsung/wfd/WfdService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 552
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .local v139, wfd:Lcom/samsung/wfd/WfdService;
    :try_start_2d
    const-string v3, "wfd"

    move-object/from16 v0, v139

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_4f

    move-object/from16 v138, v139

    .line 575
    .end local v139           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    :goto_20
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v63, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    .line 578
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .local v63, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2f
    const-string v3, "connectivity"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 579
    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 580
    move-object/from16 v0, v63

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 581
    invoke-virtual/range {v140 .. v140}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 582
    invoke-virtual/range {v143 .. v143}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_4e

    move-object/from16 v62, v63

    .line 588
    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_21
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v118

    .line 590
    const-string v3, "servicediscovery"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_18

    .line 597
    :goto_22
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v125, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v125

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_19

    .line 599
    .end local v124           #throttle:Lcom/android/server/ThrottleService;
    .local v125, throttle:Lcom/android/server/ThrottleService;
    :try_start_32
    const-string v3, "throttle"

    move-object/from16 v0, v125

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_4d

    move-object/from16 v124, v125

    .line 606
    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .restart local v124       #throttle:Lcom/android/server/ThrottleService;
    :goto_23
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v3, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 618
    :goto_24
    if-eqz v100, :cond_7

    .line 620
    const-string v3, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "trigger_restart_min_framework"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 621
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 625
    :cond_7
    if-eqz v44, :cond_8

    .line 626
    :try_start_34
    invoke-virtual/range {v44 .. v44}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1b

    .line 632
    :cond_8
    :goto_25
    if-eqz v65, :cond_9

    .line 633
    :try_start_35
    invoke-virtual/range {v65 .. v65}, Landroid/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1c

    .line 639
    :cond_9
    :goto_26
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v107, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v120

    move-object/from16 v2, v90

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 641
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .local v107, notification:Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v3, "notification"

    move-object/from16 v0, v107

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 642
    move-object/from16 v0, v107

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_4c

    move-object/from16 v106, v107

    .line 648
    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    :goto_27
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    invoke-static {}, Lcom/android/server/ServerThread$Injector;->setMemoryLowThresholdProperty()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1e

    .line 656
    :goto_28
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v93, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1f

    .line 658
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .local v93, location:Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v3, "location"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_4b

    move-object/from16 v92, v93

    .line 664
    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    :goto_29
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v67, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_20

    .line 666
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v67, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v3, "country_detector"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_4a

    move-object/from16 v66, v67

    .line 672
    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2a
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 680
    :goto_2b
    :try_start_3e
    const-string v3, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v110

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 681
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v3, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v4}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_22

    .line 691
    :goto_2c
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_23

    .line 698
    :goto_2d
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x1110026

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 701
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-nez v16, :cond_a

    .line 703
    new-instance v137, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v137

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_24

    .line 704
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v137, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_41
    const-string v3, "wallpaper"

    move-object/from16 v0, v137

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_49

    move-object/from16 v136, v137

    .line 711
    .end local v137           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_2e
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 713
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .line 721
    :cond_b
    :goto_2f
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v76, Lcom/android/server/DockObserver;

    move-object/from16 v0, v76

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_26

    .end local v75           #dock:Lcom/android/server/DockObserver;
    .local v76, dock:Lcom/android/server/DockObserver;
    move-object/from16 v75, v76

    .line 729
    .end local v76           #dock:Lcom/android/server/DockObserver;
    .restart local v75       #dock:Lcom/android/server/DockObserver;
    :goto_30
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_27

    .line 737
    :goto_31
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance v123, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v123

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_28

    .end local v122           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v123, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v122, v123

    .line 745
    .end local v123           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v122       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_32
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v132, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v132

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_29

    .line 748
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .local v132, usb:Lcom/android/server/usb/UsbService;
    :try_start_47
    const-string v3, "usb"

    move-object/from16 v0, v132

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_48

    move-object/from16 v131, v132

    .line 754
    .end local v132           #usb:Lcom/android/server/usb/UsbService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    :goto_33
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v117, Lcom/android/server/SerialService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2a

    .line 757
    .end local v116           #serial:Lcom/android/server/SerialService;
    .local v117, serial:Lcom/android/server/SerialService;
    :try_start_49
    const-string v3, "serial"

    move-object/from16 v0, v117

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_47

    move-object/from16 v116, v117

    .line 763
    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v116       #serial:Lcom/android/server/SerialService;
    :goto_34
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v130, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v130

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2b

    .end local v129           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v130, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v129, v130

    .line 771
    .end local v130           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v129       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_35
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2c

    .line 779
    :goto_36
    :try_start_4c
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v48, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2d

    .line 781
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .local v48, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4d
    const-string v3, "appwidget"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_46

    move-object/from16 v47, v48

    .line 787
    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_37
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v115, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .end local v114           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v115, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v114, v115

    .line 794
    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v114       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_38
    :try_start_4f
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .line 814
    :goto_39
    :try_start_50
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_30

    .line 822
    :goto_3a
    :try_start_51
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v105, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v105

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_31

    .end local v104           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v105, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v104, v105

    .line 828
    .end local v105           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v104       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v109

    .line 831
    .local v109, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.irda_service"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 835
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "IRDA Service!! Enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v89, Landroid/app/IrdaService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 839
    .local v89, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_32

    .line 849
    .end local v89           #irda:Landroid/app/IrdaService;
    :cond_c
    :goto_3c
    const-string v3, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 851
    :try_start_53
    const-string v3, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v52, Landroid/app/BarBeamService;

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 854
    .local v52, barbeam:Landroid/app/BarBeamService;
    const-string v3, "barbeam"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_33

    .line 863
    .end local v52           #barbeam:Landroid/app/BarBeamService;
    :cond_d
    :goto_3d
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v109

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 865
    :try_start_54
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v97, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 868
    .local v97, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v99, "/data/dalvik-cache/minimode.dex"

    .line 870
    .local v99, minimodeGenDexPath:Ljava/lang/String;
    new-instance v85, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v85 .. v85}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 871
    .local v85, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v97

    move-object/from16 v1, v85

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 872
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v97

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v99

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 874
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v99

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v97

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v98, Ljava/io/File;

    invoke-direct/range {v98 .. v99}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v98, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v85

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v98

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 877
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v99

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v85

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v98           #minimodeGenDexFile:Ljava/io/File;
    :cond_e
    new-instance v58, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v58

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 885
    .local v58, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v42

    .line 886
    .local v42, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v43

    .line 888
    .local v43, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_34

    .line 899
    .end local v42           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v43           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v58           #cl:Ljava/lang/ClassLoader;
    .end local v85           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v97           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v99           #minimodeGenDexPath:Ljava/lang/String;
    :cond_f
    :goto_3e
    :try_start_55
    const-string v3, "samsung.facedetection_service"

    new-instance v9, Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {v9, v4}, Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_35

    .line 906
    :goto_3f
    :try_start_56
    const-string v3, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v60, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_36

    .line 908
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v60, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_57
    const-string v3, "commontime_management"

    move-object/from16 v0, v60

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_45

    move-object/from16 v59, v60

    .line 914
    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_40
    :try_start_58
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_37

    .line 921
    :goto_41
    :try_start_59
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/16 v128, 0x0

    .line 923
    .local v128, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v128

    .line 924
    if-nez v128, :cond_21

    .line 925
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_38

    .line 938
    .end local v128           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_42
    :try_start_5a
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_39

    .line 946
    :goto_43
    :try_start_5b
    const-string v3, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v3, Lcom/android/server/CertBlacklister;

    invoke-direct {v3, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_3a

    .line 952
    :goto_44
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111003a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 955
    :try_start_5c
    const-string v3, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    new-instance v78, Landroid/service/dreams/DreamManagerService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Landroid/service/dreams/DreamManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3b

    .line 958
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .local v78, dreamy:Landroid/service/dreams/DreamManagerService;
    :try_start_5d
    const-string v3, "dreams"

    move-object/from16 v0, v78

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_44

    move-object/from16 v77, v78

    .line 967
    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    :cond_10
    :goto_45
    const-string v3, "SystemServer"

    const-string v9, "TAG_CSCFEATURE_SEC_FMRADIO_SILICON - true"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :try_start_5e
    const-string v3, "SystemServer"

    const-string v9, "FM_RADIO_SERVICE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v3, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 971
    const-string v3, "SystemServer"

    const-string v9, "[FMPlayer]FMRadio service added.."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3c

    .line 981
    .end local v100           #mountService:Lcom/android/server/MountService;
    .end local v109           #packageMgr:Landroid/content/pm/PackageManager;
    :goto_46
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v29

    .line 982
    .local v29, safeMode:Z
    if-eqz v29, :cond_22

    .line 983
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 985
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 987
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 996
    :goto_47
    :try_start_5f
    invoke-virtual/range {v133 .. v133}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3d

    .line 1002
    :goto_48
    :try_start_60
    invoke-virtual/range {v94 .. v94}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3e

    .line 1007
    :goto_49
    if-eqz v73, :cond_11

    .line 1009
    :try_start_61
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3f

    .line 1016
    :cond_11
    :goto_4a
    if-eqz v80, :cond_12

    .line 1017
    invoke-virtual/range {v80 .. v80}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1018
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_12
    if-eqz v106, :cond_13

    .line 1024
    :try_start_62
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_40

    .line 1031
    :cond_13
    :goto_4b
    :try_start_63
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_41

    .line 1036
    :goto_4c
    if-eqz v29, :cond_14

    .line 1037
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1043
    :cond_14
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v61

    .line 1044
    .local v61, config:Landroid/content/res/Configuration;
    new-instance v96, Landroid/util/DisplayMetrics;

    invoke-direct/range {v96 .. v96}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1045
    .local v96, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v135

    check-cast v135, Landroid/view/WindowManager;

    .line 1046
    .local v135, w:Landroid/view/WindowManager;
    invoke-interface/range {v135 .. v135}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v96

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1047
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v61

    move-object/from16 v1, v96

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1049
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 1051
    :try_start_64
    invoke-interface/range {v110 .. v110}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_42

    .line 1057
    :goto_4d
    invoke-virtual/range {v90 .. v90}, Lcom/android/server/LightsService;->systemReady()V

    .line 1060
    move-object/from16 v17, v4

    .line 1061
    .local v17, contextF:Landroid/content/Context;
    move-object/from16 v18, v5

    .line 1062
    .local v18, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v19, v13

    .line 1063
    .local v19, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v20, v12

    .line 1064
    .local v20, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v21, v8

    .line 1065
    .local v21, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v22, v62

    .line 1066
    .local v22, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v23, v75

    .line 1067
    .local v23, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v24, v122

    .line 1068
    .local v24, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v25, v131

    .line 1069
    .local v25, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v35, v124

    .line 1070
    .local v35, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v26, v129

    .line 1071
    .local v26, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v28, v47

    .line 1072
    .local v28, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v30, v136

    .line 1073
    .local v30, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v31, v86

    .line 1074
    .local v31, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v27, v114

    .line 1075
    .local v27, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v33, v92

    .line 1076
    .local v33, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v34, v66

    .line 1077
    .local v34, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v104

    .line 1078
    .local v36, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v37, v59

    .line 1079
    .local v37, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v38, v126

    .line 1080
    .local v38, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v32, v120

    .line 1081
    .local v32, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v39, v77

    .line 1082
    .local v39, dreamyF:Landroid/service/dreams/DreamManagerService;
    move-object/from16 v40, v88

    .line 1083
    .local v40, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v41, v54

    .line 1090
    .local v41, bluetoothF:Landroid/server/BluetoothService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v41}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Landroid/service/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Landroid/server/BluetoothService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1210
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1211
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_15
    const-string v3, "SystemServer"

    const-string v9, "!@End of System ServerThread"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1216
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void

    .line 148
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #headless:Z
    .end local v17           #contextF:Landroid/content/Context;
    .end local v18           #batteryF:Lcom/android/server/BatteryService;
    .end local v19           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v20           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v21           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v22           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v23           #dockF:Lcom/android/server/DockObserver;
    .end local v24           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v25           #usbF:Lcom/android/server/usb/UsbService;
    .end local v26           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v27           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v28           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v29           #safeMode:Z
    .end local v30           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v31           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v32           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v33           #locationF:Lcom/android/server/LocationManagerService;
    .end local v34           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v35           #throttleF:Lcom/android/server/ThrottleService;
    .end local v36           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v37           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v38           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v39           #dreamyF:Landroid/service/dreams/DreamManagerService;
    .end local v40           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v41           #bluetoothF:Landroid/server/BluetoothService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v65           #contentService:Landroid/content/ContentService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v75           #dock:Lcom/android/server/DockObserver;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v82           #factoryTest:I
    .end local v83           #factoryTestStr:Ljava/lang/String;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v88           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v96           #metrics:Landroid/util/DisplayMetrics;
    .end local v104           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v110           #pm:Landroid/content/pm/IPackageManager;
    .end local v114           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v116           #serial:Lcom/android/server/SerialService;
    .end local v118           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v122           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v124           #throttle:Lcom/android/server/ThrottleService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v129           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .end local v135           #w:Landroid/view/WindowManager;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .end local v142           #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v145           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_16
    const/16 v113, 0x0

    goto/16 :goto_0

    .line 154
    .restart local v113       #reboot:Z
    :cond_17
    const/16 v112, 0x0

    .restart local v112       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 162
    .end local v112           #reason:Ljava/lang/String;
    .end local v113           #reboot:Z
    .restart local v83       #factoryTestStr:Ljava/lang/String;
    :cond_18
    invoke-static/range {v83 .. v83}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v82

    goto/16 :goto_2

    .line 232
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v16       #headless:Z
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v65       #contentService:Landroid/content/ContentService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v75       #dock:Lcom/android/server/DockObserver;
    .restart local v82       #factoryTest:I
    .restart local v88       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v104       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v108       #onlyCore:Z
    .restart local v110       #pm:Landroid/content/pm/IPackageManager;
    .restart local v114       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v116       #serial:Lcom/android/server/SerialService;
    .restart local v118       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v122       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v124       #throttle:Lcom/android/server/ThrottleService;
    .restart local v129       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    .restart local v142       #wifiOffloadService:Lcom/android/server/WifiOffloadService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v145       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_19
    :try_start_65
    const-string v3, "1"

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v108, 0x1

    goto/16 :goto_3

    .line 238
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 257
    .restart local v84       #firstBoot:Z
    :catch_0
    move-exception v79

    .line 258
    .local v79, e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_65} :catch_1

    goto/16 :goto_6

    .line 360
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v84           #firstBoot:Z
    .end local v108           #onlyCore:Z
    :catch_1
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .line 361
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v79, e:Ljava/lang/RuntimeException;
    :goto_4f
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 262
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v79           #e:Ljava/lang/RuntimeException;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v108       #onlyCore:Z
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 272
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_2
    move-exception v79

    .line 273
    .local v79, e:Ljava/lang/Throwable;
    :try_start_66
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_5f

    .line 274
    const/16 v71, 0x0

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    goto/16 :goto_8

    .line 312
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :cond_1c
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 330
    :cond_1e
    const/4 v3, 0x1

    move/from16 v0, v82

    if-ne v0, v3, :cond_1f

    .line 331
    :try_start_67
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 360
    :catch_3
    move-exception v79

    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto :goto_4f

    .line 333
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :cond_1f
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v55, Landroid/server/BluetoothService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_3

    .line 335
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .local v55, bluetooth:Landroid/server/BluetoothService;
    :try_start_68
    const-string v3, "bluetooth"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 336
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 338
    const-string v3, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 339
    new-instance v57, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v57

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_63

    .line 340
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v57, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_69
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 342
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v51, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_64

    .line 344
    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .local v51, avrcp:Landroid/server/AvrcpStubService;
    :try_start_6a
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 345
    invoke-virtual/range {v55 .. v55}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_65

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 386
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v91           #lights:Lcom/android/server/LightsService;
    .end local v108           #onlyCore:Z
    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v79

    .line 387
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 394
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v79

    .line 395
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 404
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v79

    .line 405
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "SystemServer"

    const-string v9, "Failure starting CustomFrequencyManagerService Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 410
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v79

    .line 411
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 416
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v79

    .line 417
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 439
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    :catch_9
    move-exception v79

    .line 440
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 448
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v79

    .line 449
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v3, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 456
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v79

    .line 457
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 464
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v79

    .line 465
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 474
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v79

    .line 475
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 483
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v79

    .line 484
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 494
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v79

    .line 495
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 502
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v79

    .line 503
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 510
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v79

    .line 511
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 518
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v79

    .line 519
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 528
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v79

    move-object/from16 v8, v102

    .line 529
    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 536
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v79

    .line 537
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 544
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v79

    .line 545
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 553
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v79

    .line 554
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v3, "starting Wi-Fi Display Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 583
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v79

    .line 584
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 592
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v79

    .line 593
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 601
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v79

    .line 602
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 609
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v79

    .line 610
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 627
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v79

    .line 628
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 634
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v79

    .line 635
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 643
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v79

    .line 644
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 651
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v79

    .line 652
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 659
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v79

    .line 660
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 667
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v79

    .line 668
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 675
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v79

    .line 676
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 685
    .end local v79           #e:Ljava/lang/Throwable;
    :cond_20
    :try_start_6b
    const-string v3, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_22

    goto/16 :goto_2c

    .line 687
    :catch_22
    move-exception v79

    .line 688
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v79

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 694
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v79

    .line 695
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 706
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v79

    .line 707
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 715
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v79

    .line 716
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 724
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v79

    .line 725
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 732
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v79

    .line 733
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 740
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v79

    .line 741
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 749
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v79

    .line 750
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 758
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v79

    .line 759
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v3, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 766
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v79

    .line 767
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 774
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v79

    .line 775
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 782
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v79

    .line 783
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_65
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 789
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v79

    .line 790
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 796
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v79

    .line 797
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 817
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v79

    .line 818
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 824
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v79

    .line 825
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 841
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v109       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_32
    move-exception v79

    .line 843
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 855
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v79

    .line 856
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    .line 891
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v79

    .line 892
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    .line 900
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v79

    .line 901
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "Fail to start face detection service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 909
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v79

    .line 910
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_66
    const-string v3, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 916
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v79

    .line 917
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 927
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v128       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_21
    :try_start_6c
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v49, v0

    .line 929
    .local v49, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v49, v3

    .line 930
    move-object/from16 v0, v128

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v64

    .line 931
    .local v64, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_38

    goto/16 :goto_42

    .line 933
    .end local v49           #arg:[Ljava/lang/Class;
    .end local v64           #constructor:Ljava/lang/reflect/Constructor;
    .end local v128           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_38
    move-exception v79

    .line 934
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v79

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 940
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v79

    .line 941
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 948
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v79

    .line 949
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 959
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v79

    .line 960
    .restart local v79       #e:Ljava/lang/Throwable;
    :goto_67
    const-string v3, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 972
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v79

    .line 973
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 990
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v100           #mountService:Lcom/android/server/MountService;
    .end local v109           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v29       #safeMode:Z
    :cond_22
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_47

    .line 997
    :catch_3d
    move-exception v79

    .line 998
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1003
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v79

    .line 1004
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1010
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v79

    .line 1011
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1025
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v79

    .line 1026
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1032
    .end local v79           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v79

    .line 1033
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1052
    .end local v79           #e:Ljava/lang/Throwable;
    .restart local v61       #config:Landroid/content/res/Configuration;
    .restart local v96       #metrics:Landroid/util/DisplayMetrics;
    .restart local v135       #w:Landroid/view/WindowManager;
    :catch_42
    move-exception v79

    .line 1053
    .restart local v79       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 245
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #safeMode:Z
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v61           #config:Landroid/content/res/Configuration;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v79           #e:Ljava/lang/Throwable;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v96           #metrics:Landroid/util/DisplayMetrics;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v135           #w:Landroid/view/WindowManager;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #onlyCore:Z
    :catch_43
    move-exception v3

    goto/16 :goto_5

    .line 959
    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v108           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v79

    move-object/from16 v77, v78

    .end local v78           #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    goto :goto_67

    .line 909
    .end local v59           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v60       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_45
    move-exception v79

    move-object/from16 v59, v60

    .end local v60           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v59       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_66

    .line 782
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v109           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v48       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_46
    move-exception v79

    move-object/from16 v47, v48

    .end local v48           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_65

    .line 758
    .end local v116           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    :catch_47
    move-exception v79

    move-object/from16 v116, v117

    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v116       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_64

    .line 749
    .end local v131           #usb:Lcom/android/server/usb/UsbService;
    .restart local v132       #usb:Lcom/android/server/usb/UsbService;
    :catch_48
    move-exception v79

    move-object/from16 v131, v132

    .end local v132           #usb:Lcom/android/server/usb/UsbService;
    .restart local v131       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_63

    .line 706
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v137       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_49
    move-exception v79

    move-object/from16 v136, v137

    .end local v137           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_62

    .line 667
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v67       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4a
    move-exception v79

    move-object/from16 v66, v67

    .end local v67           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_61

    .line 659
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .restart local v93       #location:Lcom/android/server/LocationManagerService;
    :catch_4b
    move-exception v79

    move-object/from16 v92, v93

    .end local v93           #location:Lcom/android/server/LocationManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_60

    .line 643
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v107       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4c
    move-exception v79

    move-object/from16 v106, v107

    .end local v107           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5f

    .line 601
    .end local v124           #throttle:Lcom/android/server/ThrottleService;
    .restart local v125       #throttle:Lcom/android/server/ThrottleService;
    :catch_4d
    move-exception v79

    move-object/from16 v124, v125

    .end local v125           #throttle:Lcom/android/server/ThrottleService;
    .restart local v124       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5e

    .line 583
    .end local v62           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v63       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4e
    move-exception v79

    move-object/from16 v62, v63

    .end local v63           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v62       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_5d

    .line 553
    .end local v138           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v139       #wfd:Lcom/samsung/wfd/WfdService;
    :catch_4f
    move-exception v79

    move-object/from16 v138, v139

    .end local v139           #wfd:Lcom/samsung/wfd/WfdService;
    .restart local v138       #wfd:Lcom/samsung/wfd/WfdService;
    goto/16 :goto_5c

    .line 544
    .end local v140           #wifi:Lcom/android/server/WifiService;
    .restart local v141       #wifi:Lcom/android/server/WifiService;
    :catch_50
    move-exception v79

    move-object/from16 v140, v141

    .end local v141           #wifi:Lcom/android/server/WifiService;
    .restart local v140       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5b

    .line 536
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v144       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_51
    move-exception v79

    move-object/from16 v143, v144

    .end local v144           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_5a

    .line 528
    :catch_52
    move-exception v79

    goto/16 :goto_59

    .line 518
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v103       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_53
    move-exception v79

    move-object/from16 v12, v103

    .end local v103           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_58

    .line 510
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v127       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_54
    move-exception v79

    move-object/from16 v126, v127

    .end local v127           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_57

    .line 474
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v81       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_55
    move-exception v79

    move-object/from16 v80, v81

    .end local v81           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_56

    .line 464
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v121       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_56
    move-exception v79

    move-object/from16 v120, v121

    .end local v121           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_55

    .line 456
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v74       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_57
    move-exception v79

    move-object/from16 v73, v74

    .end local v74           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_54

    .line 448
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v95       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_58
    move-exception v79

    move-object/from16 v94, v95

    .end local v95           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_53

    .line 439
    .end local v100           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :catch_59
    move-exception v79

    move-object/from16 v100, v101

    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v100       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_52

    .line 425
    .end local v100           #mountService:Lcom/android/server/MountService;
    :catch_5a
    move-exception v3

    goto/16 :goto_12

    .line 404
    .end local v69           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v70       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    :catch_5b
    move-exception v79

    move-object/from16 v69, v70

    .end local v70           #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    .restart local v69       #custFreqMgr:Lcom/android/server/CustomFrequencyManagerService;
    goto/16 :goto_51

    .line 386
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v87       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5c
    move-exception v79

    move-object/from16 v86, v87

    .end local v87           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_50

    .line 360
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v111       #power:Lcom/android/server/PowerManagerService;
    :catch_5d
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v111

    .end local v111           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_4f

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v108       #onlyCore:Z
    :catch_5e
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4f

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v71           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v72       #dEncService:Lcom/android/server/DirEncryptService;
    :catch_5f
    move-exception v79

    move-object/from16 v71, v72

    .end local v72           #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v71       #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_4f

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    :catch_60
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v53

    .end local v53           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4f

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    :catch_61
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4f

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v79

    move-object/from16 v7, v46

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4f

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v79

    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4f

    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v79

    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4f

    .end local v50           #avrcp:Landroid/server/AvrcpStubService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v56           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .restart local v51       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v57       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v79

    move-object/from16 v50, v51

    .end local v51           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v50       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v56, v57

    .end local v57           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v56       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v133, v134

    .end local v134           #vibrator:Lcom/android/server/VibratorService;
    .restart local v133       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v90, v91

    .end local v91           #lights:Lcom/android/server/LightsService;
    .restart local v90       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4f

    .line 257
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v44           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v45       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v46       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v53       #battery:Lcom/android/server/BatteryService;
    :catch_66
    move-exception v79

    move-object/from16 v44, v45

    .end local v45           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v44       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4e

    .end local v46           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v53           #battery:Lcom/android/server/BatteryService;
    .end local v68           #cryptState:Ljava/lang/String;
    .end local v84           #firstBoot:Z
    .end local v108           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v47       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v73       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v77       #dreamy:Landroid/service/dreams/DreamManagerService;
    .restart local v80       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v86       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v92       #location:Lcom/android/server/LocationManagerService;
    .restart local v94       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v106       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v120       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v126       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v136       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_23
    move-object/from16 v8, v102

    .end local v102           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_46

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v54           #bluetooth:Landroid/server/BluetoothService;
    .end local v66           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v73           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v77           #dreamy:Landroid/service/dreams/DreamManagerService;
    .end local v80           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v86           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v90           #lights:Lcom/android/server/LightsService;
    .end local v92           #location:Lcom/android/server/LocationManagerService;
    .end local v94           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v106           #notification:Lcom/android/server/NotificationManagerService;
    .end local v120           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v126           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v133           #vibrator:Lcom/android/server/VibratorService;
    .end local v136           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v55       #bluetooth:Landroid/server/BluetoothService;
    .restart local v68       #cryptState:Ljava/lang/String;
    .restart local v84       #firstBoot:Z
    .restart local v91       #lights:Lcom/android/server/LightsService;
    .restart local v102       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108       #onlyCore:Z
    .restart local v134       #vibrator:Lcom/android/server/VibratorService;
    :cond_24
    move-object/from16 v54, v55

    .end local v55           #bluetooth:Landroid/server/BluetoothService;
    .restart local v54       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b
.end method
