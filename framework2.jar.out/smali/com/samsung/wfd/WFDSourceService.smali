.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field public static final defaultFreq:I = 0x16e360

.field private static mContext:Landroid/content/Context;

.field private static mCpuLockEnabled:Z

.field private static m_bAlive:Z


# instance fields
.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlockedRemoteEvents:Z

.field private mConnectionType:I

.field private mCurrentWDState:I

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mFrequency:I

.field private mPauseMode:Z

.field private mPhoneCall:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrivateEventsMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenLock:Z

.field private final mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 120
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 106
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 108
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 111
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 112
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 113
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    .line 118
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 119
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 122
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    .line 153
    new-instance v0, Lcom/samsung/wfd/WFDSourceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDSourceService$1;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    .line 337
    return-void
.end method

.method private StartRTSP()V
    .locals 4

    .prologue
    .line 529
    const/4 v0, 0x7

    .line 531
    .local v0, mMusicStreamVolume:I
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 534
    :cond_0
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native music volume :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {v0}, Lcom/samsung/wfd/WFDNative;->start(I)Z

    .line 539
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->startForegroundCompat()V

    .line 540
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WFDSourceService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/wfd/WFDSourceService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WFDSourceService;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 580
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method

.method private setRtpTransport(III)Z
    .locals 1
    .parameter "transportType"
    .parameter "bufferLengthMs"
    .parameter "port"

    .prologue
    .line 485
    invoke-static {p1, p2, p3}, Lcom/samsung/wfd/WFDNative;->setRtpTransport(III)Z

    move-result v0

    .line 487
    .local v0, nRet:Z
    return v0
.end method

.method private startForegroundCompat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 592
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 593
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 596
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 597
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 599
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/samsung/wfd/WFDSourceService;->startForeground(ILandroid/app/Notification;)V

    .line 600
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WFDSourceService;->stopForeground(Z)V

    .line 605
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 127
    const/4 v2, 0x0

    .line 131
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 138
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 149
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v1

    .line 144
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 14
    .parameter "arg0"

    .prologue
    const v11, 0x16e360

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 186
    const-string v8, "WFDSourceService"

    const-string v9, "Bind!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v8, "freq"

    invoke-virtual {p1, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 189
    const-string v8, "WFDSourceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "freq:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v8, :cond_0

    .line 194
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 197
    :cond_0
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v8, :cond_3

    .line 198
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v7

    .line 200
    .local v7, supportedFreq:[I
    const/4 v6, 0x0

    .line 201
    .local v6, minIdx:I
    aget v8, v7, v12

    sub-int v8, v11, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 202
    .local v5, min:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 203
    aget v8, v7, v4

    sub-int v8, v11, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v5, v8, :cond_1

    .line 204
    aget v8, v7, v4

    sub-int v8, v11, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 205
    move v6, v4

    .line 202
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    aget v10, v7, v6

    const-string v11, "WFDSourceService"

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$DVFSLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :goto_2
    const-string v8, "WFDSourceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wfd fix DVFS_MIN_LIMIT by freq:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v7, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sput-boolean v13, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 228
    .end local v4           #i:I
    .end local v5           #min:I
    .end local v6           #minIdx:I
    .end local v7           #supportedFreq:[I
    :cond_3
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 229
    .local v0, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v8, "WFDSourceService"

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 230
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 231
    const-string v8, "WFDSourceService"

    const-string v9, "wifi lock acquire!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput v12, p0, Lcom/samsung/wfd/WFDSourceService;->mCurrentWDState:I

    .line 239
    sput-boolean v13, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 241
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    .local v1, context:Landroid/content/Context;
    sput-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {v1}, Lcom/samsung/wfd/WFDNative;->setContext(Landroid/content/Context;)V

    .line 244
    sget-object v8, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    check-cast v8, Landroid/media/AudioManager;

    iput-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    .line 246
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v8, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v8, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v8, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v8, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v8, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v8, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v8, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v8, "android.intent.action.WFD_PAUSE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v8, "android.intent.action.WFD_RESUME"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v8, "android.intent.action.WFD_STOP"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    new-instance v8, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V

    iput-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->StartRTSP()V

    .line 267
    iget-object v8, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    return-object v8

    .line 211
    .end local v0           #WifiMgr:Landroid/net/wifi/WifiManager;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .restart local v4       #i:I
    .restart local v5       #min:I
    .restart local v6       #minIdx:I
    .restart local v7       #supportedFreq:[I
    :catch_0
    move-exception v2

    .line 212
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "WFDSourceService"

    const-string v9, "newDVFSLock is failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 218
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 219
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "WFDSourceService"

    const-string v9, "mDVFSLock.acquire is failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 316
    const-string v1, "WFDSourceService"

    const-string v2, "create WFD Source service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    .line 321
    const-string v1, "WFDSourceService"

    const-string v2, "check cpuLock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 334
    :cond_0
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnCreate thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WFDSourceService"

    const-string v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 546
    const-string v1, "WFDSourceService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    if-eqz v1, :cond_0

    .line 551
    const-string v1, "WFDSourceService"

    const-string v2, "check cpuLock!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 576
    :cond_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WFDSourceService"

    const-string v2, "mDVFSLock.release is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 493
    const-string v0, "WFDSourceService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 495
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 496
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 500
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 516
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 273
    const-string v2, "WFDSourceService"

    const-string v3, "unBind!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$DVFSLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :goto_0
    const-string v2, "WFDSourceService"

    const-string v3, "Wfd release DVFS_MIN_LIMIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 292
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 295
    :cond_0
    const-string v2, "WFDSourceService"

    const-string v3, "wifi lock release!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sput-boolean v4, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 304
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stop()Z

    .line 306
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->stopForegroundCompat()V

    .line 308
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v2

    return v2

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WFDSourceService"

    const-string v3, "mDVFSLock.release is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method teardownForAudioOut()V
    .locals 3

    .prologue
    .line 584
    const-string v1, "WFDSourceService"

    const-string v2, "teardownForAudioOut"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 588
    :cond_0
    return-void
.end method
