.class public Lcom/android/OriginalSettings/wfd/WfdPickerActivity;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private final ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

.field private final ACTION_WFD_RESTART:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEST:Ljava/lang/Boolean;

.field private TICKS_PER_SEC:J

.field private TOT_CONNECT_TIME:I

.field private TOT_CONNECT_TIME_MS:J

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivityStartedByAllShare:Z

.field private mAutoConnStartedFromInv:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCanShake:Z

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mConnectingDialogCalled:Z

.field private mControlByWfdService:I

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableControlByWfdService:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field private mInPickerDialog:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectRequestedFlag:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItemHelp:Landroid/view/MenuItem;

.field private mMenuItemScanStop:Landroid/view/MenuItem;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNfcWriteMode:Z

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mNotNfcEntry:Z

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

.field private mScanningTimer:Landroid/os/CountDownTimer;

.field private mTerminatedFlag:Z

.field private mTickCount:I

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdEnabled:Z

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdState:I

.field private mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private final wfdStateArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 94
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    .line 105
    iput v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 117
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 119
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    .line 120
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 121
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 128
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WFD_PICKER_STATE_UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "WFD_PICKER_STATE_DISABLED"

    aput-object v1, v0, v5

    const-string v1, "WFD_PICKER_STATE_ENABLED"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "WFD_PICKER_STATE_SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WFD_PICKER_STATE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WFD_PICKER_STATE_ESTABLISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WFD_PICKER_STATE_SCANSTOP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WFD_PICKER_STATE_DISCONNECTED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    .line 147
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 148
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    .line 149
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    .line 151
    iput v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 153
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 155
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 156
    iput v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdState:I

    .line 157
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 158
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 159
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 163
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 165
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 167
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 169
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 170
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 178
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->ACTION_WFD_RESTART:Ljava/lang/String;

    .line 179
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

    .line 185
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 186
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 190
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 192
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 193
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 194
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 195
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 196
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 197
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 199
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 200
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 201
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 203
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 204
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 208
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 211
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 215
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 217
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

    .line 218
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 220
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 433
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3110(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/android/OriginalSettings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$700()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    return-void
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 675
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v0, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter

    .prologue
    .line 1885
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1887
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1889
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1894
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1895
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1896
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1897
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1899
    :cond_1
    return-void
.end method

.method private autoConnecting()V
    .locals 4

    .prologue
    .line 2181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 2183
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$16;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2202
    return-void
.end method

.method private cancelWfdConnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1625
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1629
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1630
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isWfdConnected() == true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1635
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1655
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1657
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    goto :goto_0

    .line 1660
    :cond_2
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$12;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1671
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1673
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1675
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1676
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1677
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method private changeActionBar()V
    .locals 5

    .prologue
    const/16 v2, 0x10

    const/4 v4, -0x2

    .line 1202
    const-string v0, "WfdPickerActivity"

    const-string v1, "changeActionBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1207
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 1218
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1213
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private clearLastConnectedDeviceInfo()V
    .locals 2

    .prologue
    .line 1746
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1749
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1750
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1752
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    return-void
.end method

.method private connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1361
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is found in the list device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1367
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1369
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    .line 1371
    :cond_0
    return-void
.end method

.method private connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1353
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1354
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    .line 1356
    :cond_1
    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1493
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 1497
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1498
    const v0, 0x7f04010b

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1499
    const v0, 0x7f0b0329

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1500
    const v3, 0x7f0903a9

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1501
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 1503
    const v0, 0x7f040104

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1505
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1508
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1510
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1512
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 1514
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;

    iget-wide v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    iget-wide v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 1527
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1529
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-nez v0, :cond_0

    .line 1530
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 1531
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1555
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0905d6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1576
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 1433
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 1435
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1437
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903ac

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0905d5

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1465
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 1440
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903ad

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWfdTerminateDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1388
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 1391
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1393
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0903ab

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0905d5

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1419
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f0905d6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1428
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private displayConnectionFailed()V
    .locals 2

    .prologue
    .line 1477
    const-string v0, "WfdPickerActivity"

    const-string v1, "displayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1481
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V

    .line 1483
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1484
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1485
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1489
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1490
    return-void
.end method

.method private finishScanDevice(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2073
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishScanDevice << result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2077
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2078
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_0
    :goto_0
    return-void

    .line 2082
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2083
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishScanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2087
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2088
    packed-switch p1, :pswitch_data_0

    .line 2116
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2123
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    .line 2124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToScan()V

    .line 2129
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 2130
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2131
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2090
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc dev info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2097
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    goto :goto_1

    .line 2102
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2105
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0

    .line 2111
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2134
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 2137
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 2139
    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2141
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2143
    :cond_6
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2149
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_0

    .line 2088
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLastConnectedDeviceInfo()V
    .locals 4

    .prologue
    .line 1688
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1690
    const-string v1, "wlan.wfd.lastdevicename"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1692
    const-string v2, "wlan.wfd.lastdeviceaddr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1696
    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1699
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1700
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1703
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    return-void
.end method

.method private getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1377
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1378
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting by nfc dev addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1383
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 636
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 638
    if-eqz v0, :cond_1

    .line 639
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 641
    :cond_0
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 647
    :cond_1
    :goto_0
    return-void

    .line 642
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.wfd.SELECT_DEV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iput-boolean v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    goto :goto_0
.end method

.method private initConnectedDevUI(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1333
    const-string v0, "WfdPickerActivity"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1337
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1338
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1340
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090370

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1341
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1343
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1345
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1347
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1348
    return-void
.end method

.method private initMemberVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 542
    const-string v0, "WfdPickerActivity"

    const-string v1, "Initializing member variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 545
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInPickerDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iput v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 549
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 551
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 552
    iput v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 553
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 556
    const-string v0, "wlan.wfd.autoconnect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 557
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isNotNfcEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 561
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 562
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 613
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    .line 615
    const-string v0, "allsharecast_available"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    .line 616
    const-string v0, "allsharecast_connected"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 617
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 619
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 622
    const-string v0, "allsharecast_switch"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 624
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 627
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    .line 628
    return-void
.end method

.method private isNotNfcEntry()Z
    .locals 4

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, msgs:[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 569
    .local v1, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 570
    const/4 v2, 0x0

    .line 572
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2258
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2261
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2264
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    .line 2265
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v0, 0x1

    .line 2275
    :goto_0
    return v0

    .line 2268
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2269
    goto :goto_0

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2275
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2280
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2283
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2286
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const/4 v0, 0x1

    .line 2297
    :goto_0
    return v0

    .line 2290
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2291
    goto :goto_0

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2297
    goto :goto_0
.end method

.method private isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 2224
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2226
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckItemWifiBusy >> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is busy device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/4 v0, 0x1

    .line 2230
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2205
    .line 2207
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    if-eqz v2, :cond_1

    .line 2208
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    and-int/2addr v2, v0

    .line 2210
    if-ne v2, v0, :cond_0

    .line 2220
    :goto_0
    return v0

    .line 2213
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "CheckItemForWifiDisplay >> this peer wasn\'t setted sink flag !"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2215
    goto :goto_0

    .line 2219
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v2, "CheckItemForWifiDisplay >> wfdDevInfo is 0 !!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2220
    goto :goto_0
.end method

.method private makeConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1586
    const-string v0, "WfdPickerActivity"

    const-string v1, "makeConnConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1590
    if-nez p1, :cond_0

    .line 1591
    const-string v0, "WfdPickerActivity"

    const-string v1, "try to connect with last connected info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1597
    const-string v0, "WfdPickerActivity"

    const-string v1, "we do not have mP2pDevice...so set use default WpsInfo info..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1600
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1601
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1602
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1620
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0

    .line 1604
    :cond_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1609
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1611
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1613
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1614
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1616
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private printWfdSettingState()V
    .locals 3

    .prologue
    .line 1757
    const-string v0, "printWfdSettingState << curr WFDState is "

    .line 1758
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 1759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1764
    :goto_0
    const-string v1, "WfdPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    return-void

    .line 1761
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown! curr WFDState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1734
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1736
    const-string v1, "wlan.wfd.lastdevicename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1737
    const-string v1, "wlan.wfd.lastdeviceaddr"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1739
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1741
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return-void
.end method

.method private retrieveServiceManagers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 578
    const-string v1, "WfdPickerActivity"

    const-string v2, "Retrieving Service Managers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v1, "WfdPickerActivity"

    const-string v2, "try to getSystemService WIFI_DISPLAY_SERVICE..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v1, "wifip2p"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 583
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 584
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 587
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 588
    const-string v1, "WfdPickerActivity"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    sput-object v5, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 596
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cause"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 598
    .local v0, option:I
    packed-switch v0, :pswitch_data_0

    .line 604
    :goto_1
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 607
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 610
    :cond_1
    return-void

    .line 593
    .end local v0           #option:I
    :cond_2
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .restart local v0       #option:I
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    goto :goto_1

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x22077
        :pswitch_0
    .end packed-switch
.end method

.method private scanDevice()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 1985
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1988
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 1992
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v3, :cond_2

    .line 1993
    const-string v0, "WfdPickerActivity"

    const-string v1, "already scanning devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1997
    :cond_2
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1998
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTickCount:I

    .line 2000
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2002
    iput v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2004
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 2007
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2008
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v1, 0x7f09036f

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 2009
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2011
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2013
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 2014
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2015
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2018
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2019
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2021
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2022
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    .line 2023
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToStop()V

    .line 2026
    :cond_4
    new-instance v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;

    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2036
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2039
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2041
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2042
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$14;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 2056
    :cond_5
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$15;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private setAllShareCastSwitch()V
    .locals 9

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 710
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 711
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 713
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 714
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 715
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 717
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 720
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 721
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 724
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 732
    .end local v1           #padding:I
    :cond_1
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 734
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 742
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 743
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 744
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 746
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 748
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 754
    :goto_1
    return-void

    .line 736
    .restart local v2       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_3
    new-instance v3, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    .line 737
    iput-boolean v7, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    goto :goto_0

    .line 751
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    goto :goto_1
.end method

.method private setCastMenu(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 1902
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCastMenu in with menuType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 1906
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    if-nez v2, :cond_3

    .line 1907
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "setCastMenu menu item is not created yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1904
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1911
    :cond_3
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v2, :cond_1

    .line 1913
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_7

    .line 1914
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v3, 0x7f02027b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1915
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1923
    :cond_5
    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1928
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_6

    if-eqz v0, :cond_8

    .line 1930
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f02008a

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1931
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1939
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1940
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f09037d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1942
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1

    .line 1917
    :cond_7
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_5

    .line 1918
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1919
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 1935
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1936
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1946
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_a

    .line 1948
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f02008c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1949
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1957
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1958
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f090610

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1960
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 1962
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 1953
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1954
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1966
    :pswitch_3
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_ENDCONNECT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_b

    if-eqz v0, :cond_c

    .line 1968
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f020086

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1969
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1974
    :goto_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1975
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f09037e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1971
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1972
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1709
    if-nez p1, :cond_1

    .line 1710
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1713
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 1728
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    return-void

    .line 1715
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1717
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 1721
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1723
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2162
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2164
    iget-object v0, p1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2166
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 2168
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-eqz v0, :cond_1

    .line 2169
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay with ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2171
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay without ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private stopConnectingCountDown()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1583
    :cond_0
    return-void
.end method

.method private terminateWfdActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 921
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 924
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 926
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    if-ne v0, v2, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iput-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 932
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 933
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    sparse-switch v0, :sswitch_data_0

    .line 952
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no problem! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 958
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 959
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 960
    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 962
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "lock release!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 966
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 968
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 941
    :sswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateWfdActivity >> picker is finished by WfdService! cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 936
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method finishWfdPickerDialog()V
    .locals 2

    .prologue
    .line 459
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 461
    return-void
.end method

.method getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 651
    const/4 v3, 0x0

    .line 653
    .local v3, msgs:[Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 654
    .local v4, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    .line 655
    array-length v6, v4

    new-array v3, v6, [Landroid/nfc/NdefMessage;

    .line 656
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 657
    aget-object v6, v4, v1

    check-cast v6, Landroid/nfc/NdefMessage;

    aput-object v6, v3, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    .end local v1           #i:I
    :cond_0
    new-array v0, v7, [B

    .line 662
    .local v0, empty:[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v0, v0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 663
    .local v5, record:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v5, v6, v7

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 666
    .local v2, msg:Landroid/nfc/NdefMessage;
    new-array v3, v8, [Landroid/nfc/NdefMessage;

    .end local v3           #msgs:[Landroid/nfc/NdefMessage;
    aput-object v2, v3, v7

    .line 671
    .end local v0           #empty:[B
    .end local v2           #msg:Landroid/nfc/NdefMessage;
    .end local v5           #record:Landroid/nfc/NdefRecord;
    .restart local v3       #msgs:[Landroid/nfc/NdefMessage;
    :cond_1
    return-object v3
.end method

.method handleP2pStateChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1814
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 1817
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdState:I

    .line 1818
    packed-switch p1, :pswitch_data_0

    .line 1881
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1822
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 1824
    iput-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 1826
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    .line 1828
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1829
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1831
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 1832
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1834
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1835
    iput v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 1839
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 1842
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1843
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wfd state is already established, don\'t need to set Wfd state enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1847
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 1848
    iput v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1849
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 1852
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1854
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    if-eqz v0, :cond_4

    .line 1855
    const-string v0, "WfdPickerActivity"

    const-string v1, "wait... scanDevice is called next time! received on WfdManager.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1859
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0

    .line 1863
    :cond_5
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1864
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 1870
    :pswitch_3
    iput v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 1818
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isWfdConnected()Z
    .locals 3

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2236
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 2239
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2253
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2243
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/4 v0, 0x1

    goto :goto_1

    .line 2247
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2239
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 703
    const-string v0, "WfdPickerActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setAllShareCastSwitch()V

    .line 706
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 707
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1180
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->changeActionBar()V

    .line 1184
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1186
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1189
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1192
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    .line 1194
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1197
    :cond_2
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 496
    const-string v2, "WfdPickerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 501
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 504
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    :cond_0
    if-nez v1, :cond_1

    .line 519
    const-string v2, "WfdPickerActivity"

    const-string v3, "intent is null! check!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 539
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 525
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 530
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->initMemberVariables()V

    .line 532
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->retrieveServiceManagers()V

    .line 534
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 536
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->initUI()V

    .line 538
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1134
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iput p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1139
    packed-switch p1, :pswitch_data_0

    .line 1154
    const/4 v0, 0x0

    .line 1174
    :goto_0
    return-object v0

    .line 1141
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1157
    :goto_1
    if-eqz v0, :cond_0

    .line 1158
    new-instance v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1173
    :cond_0
    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1144
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1148
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1139
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f020089

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 975
    const-string v0, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu has entered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    move v0, v1

    .line 978
    :goto_0
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_1

    .line 980
    const v3, 0x7f09037d

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    .line 984
    const v3, 0x7f09037e

    invoke-interface {p1, v2, v6, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 988
    const/4 v3, 0x3

    const v4, 0x7f090382

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    .line 992
    iget-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    if-eqz v3, :cond_0

    .line 993
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 999
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1000
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1001
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1009
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f02008a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1016
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v1, 0x7f02027b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1017
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1018
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1035
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1036
    return-void

    :cond_2
    move v0, v2

    .line 976
    goto/16 :goto_0

    .line 1003
    :catch_0
    move-exception v3

    .line 1004
    const-string v4, "WfdPickerActivity"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1020
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1021
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1023
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1025
    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f02008a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1027
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const v1, 0x7f02027b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1028
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 686
    const-string v1, "WfdPickerActivity"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const v1, 0x7f040105

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 689
    const v1, 0x7f0b0311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 690
    const v1, 0x7f0b0313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 692
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f02026d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 693
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f090d06

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 694
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0903b0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 696
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 880
    const-string v0, "WfdPickerActivity"

    const-string v2, "onDetach"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDetach()V

    .line 890
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string v2, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 893
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 894
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "tag_write_if_success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 895
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDetach writeIfSuccess="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 918
    :goto_1
    return-void

    .line 903
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 905
    const-string v0, "WfdPickerActivity"

    const-string v2, "onDetach mWFDSettingState != WFD_PICKER_STATE_DISABLED "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 907
    const-string v0, "WfdPickerActivity"

    const-string v2, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->terminateWfdActivity()V

    goto :goto_1

    .line 917
    :cond_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach mWFDSettingState = WFD_PICKER_STATE_DISABLED already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1053
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1114
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1055
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_SCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09037d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1058
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    :cond_0
    :goto_1
    move v0, v7

    .line 1071
    goto :goto_0

    .line 1064
    :cond_1
    iput-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1065
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1067
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1069
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    goto :goto_1

    .line 1075
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_4

    .line 1084
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v7, :cond_6

    .line 1085
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    :goto_2
    if-eqz v2, :cond_3

    .line 1092
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1093
    if-eqz v0, :cond_2

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "noaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1094
    :cond_2
    const-string v0, "called_by_settings"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_3
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v7

    .line 1103
    goto/16 :goto_0

    .line 1077
    :cond_4
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_5

    .line 1078
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wfd/WfdHelpFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903c1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1081
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1087
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1096
    :cond_7
    :try_start_1
    const-string v0, "called_by_settings"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    const-string v1, "WfdPickerActivity"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1106
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_ENDCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1109
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    :cond_8
    move v0, v7

    .line 1111
    goto/16 :goto_0

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 811
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 814
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 816
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 824
    :cond_1
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 827
    iput-boolean v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 830
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_3

    .line 831
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->pause()V

    .line 833
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 835
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 836
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause stop peer Discovery in Scanning "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 840
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v1, :cond_4

    .line 841
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 842
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 848
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v4, :cond_6

    .line 849
    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 852
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 853
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause cancelWfdConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 859
    :cond_6
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v1, :cond_7

    .line 860
    const-string v1, "WfdPickerActivity"

    const-string v2, "Dialog finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    .line 864
    :cond_7
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 865
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 867
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause requestP2pListen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1221
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPeersAvailable "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1224
    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1229
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_1
    :goto_0
    return-void

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1236
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1238
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 1239
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1243
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v3, 0x7f09036f

    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1244
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 1246
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1247
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1249
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1250
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1252
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 1253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerDialog;->changeToStop()V

    .line 1255
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1256
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1258
    const-string v1, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Address - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " peer.wfdDevInfo - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdDevInfo:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1263
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    new-instance v5, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1266
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1271
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1272
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1273
    if-eqz v3, :cond_5

    .line 1274
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1280
    :goto_2
    if-eqz v1, :cond_6

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v6, :cond_6

    .line 1281
    const-string v6, "WfdPickerActivity"

    const-string v7, "connect by nfc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-direct {p0, v0, v5, v3, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1276
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 1277
    :goto_3
    const-string v6, "WfdPickerActivity"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v2

    goto :goto_2

    .line 1285
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1287
    const-string v1, "WfdPickerActivity"

    const-string v3, "connectLastConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-direct {p0, v0, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_1

    .line 1296
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->initConnectedDevUI(Landroid/preference/PreferenceScreen;)V

    .line 1299
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1303
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceList item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >> peer.status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_8

    .line 1307
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1310
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 1312
    iput v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1313
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1315
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto/16 :goto_4

    .line 1317
    :cond_9
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check!! mPeersConnected.getPreferenceCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1326
    :cond_a
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 1327
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 1276
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1120
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bStartConnectingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v0, :cond_0

    .line 1123
    instance-of v0, p2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1124
    check-cast v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 1125
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;)V

    .line 1126
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1040
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 1042
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1043
    .local v0, searchMenu:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-eqz v1, :cond_1

    .line 1044
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1049
    .end local v0           #searchMenu:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 1046
    .restart local v0       #searchMenu:Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    .line 758
    const-string v1, "WfdPickerActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 760
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 762
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 764
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WfdSwitchEnabler;->resume()V

    .line 770
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCanShake:Z

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 774
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_3

    .line 775
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWFDSettingState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    .line 777
    .local v0, state:I
    if-lt v0, v4, :cond_5

    .line 790
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_2

    .line 791
    sget-object v1, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 795
    :cond_2
    if-lt v0, v6, :cond_4

    .line 796
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 807
    .end local v0           #state:I
    :cond_3
    :goto_0
    return-void

    .line 798
    .restart local v0       #state:I
    :cond_4
    if-ne v0, v4, :cond_3

    .line 799
    iput v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 802
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v1, v4, :cond_3

    .line 803
    iput v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 804
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method public setAutoConnStarted()V
    .locals 1

    .prologue
    .line 1469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1470
    return-void
.end method

.method setWfdEnabled()V
    .locals 3

    .prologue
    .line 480
    const-string v1, "WfdPickerActivity"

    const-string v2, "setWfdEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 482
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "WfdPickerActivity"

    const-string v2, "AllShare Cast is turned on..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 490
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 492
    return-void

    .line 486
    .end local v0           #actionIntent:Landroid/content/Intent;
    :cond_0
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWfdManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialogp(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1473
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1474
    return-void
.end method

.method startScanningWfdPickerDialog()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "WfdPickerActivity"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V

    .line 476
    :cond_0
    return-void
.end method

.method stopScanningWfdPickerDialog(Z)V
    .locals 3
    .parameter "stopPeerDiscovery"

    .prologue
    .line 464
    const-string v0, "WfdPickerActivity"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz p1, :cond_0

    .line 466
    sget-object v0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 468
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    .line 469
    return-void
.end method

.method updateScreenOnDisabled()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1769
    const-string v0, "WfdPickerActivity"

    const-string v1, "updateScreenOnDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1771
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1773
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 1774
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1775
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1779
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1781
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 1782
    const v0, 0x7f0903b0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    .line 1784
    :cond_1
    return-void
.end method

.method updateScreenOnEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1787
    const-string v0, "WfdPickerActivity"

    const-string v1, "updateScreenOnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1791
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1795
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    const v2, 0x7f09036f

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 1796
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1798
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 1799
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1800
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1803
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1807
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1811
    :cond_0
    return-void
.end method
