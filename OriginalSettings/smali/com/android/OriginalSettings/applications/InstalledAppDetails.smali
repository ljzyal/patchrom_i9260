.class public Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

.field private static isDisableNotificationDialogVisible:Z

.field private static final isSupportInstallExternal:Z


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

.field private mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sprint.w.installer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sprint.zone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.coremobility.app.vnotes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.locationlabs.v3client"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sprint.dsa"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.birdstep.android.cm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sprint.ce.updater"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.telespree.android.client"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.sec.sprextension"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.sprextension.phoneinfo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .line 174
    sput-boolean v3, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    .line 210
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_AllowExternalApkUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isSupportInstallExternal:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 107
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 149
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 175
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 176
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 177
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 178
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 179
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 180
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 181
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 216
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1182
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1230
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-boolean p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method private applyKioskModePolicy(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v1, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1352
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, kioskPackage:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1354
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1356
    :cond_1
    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1199
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1214
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 1215
    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1205
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1207
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1209
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1173
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1174
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1175
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_0

    .line 1177
    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 1179
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1180
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 303
    const-string v0, ""

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905ec

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905ed

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905ee

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905ef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 301
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 264
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0905b5

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 286
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0905c7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 284
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 308
    sget-boolean v5, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isSupportInstallExternal:Z

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    .line 310
    .local v1, emulated:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    :goto_1
    return-void

    .end local v1           #emulated:Z
    :cond_0
    move v1, v4

    .line 308
    goto :goto_0

    .line 314
    .restart local v1       #emulated:Z
    :cond_1
    const/4 v0, 0x0

    .line 315
    .local v0, dataOnly:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_2

    move v0, v3

    .line 316
    :goto_2
    const/4 v2, 0x1

    .line 317
    .local v2, moveDisable:Z
    if-eqz v0, :cond_3

    .line 318
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0905e8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 328
    :goto_3
    if-eqz v2, :cond_6

    .line 329
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .end local v2           #moveDisable:Z
    :cond_2
    move v0, v4

    .line 315
    goto :goto_2

    .line 319
    .restart local v2       #moveDisable:Z
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 320
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0905e9

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 322
    const/4 v2, 0x0

    goto :goto_3

    .line 324
    :cond_4
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v6, 0x7f0905ea

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 325
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->init()V

    .line 326
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :goto_4
    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_4

    .line 331
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 495
    sget-boolean v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isDisableNotificationDialogVisible:Z

    if-eqz v2, :cond_0

    .line 496
    const-string v2, "InstalledAppDetails"

    const-string v3, " ,,,,,,,,,,,,,,,,LEAVING CHECKBOX AS SUCH & RETURNING, SINCE NOTIFICATION DIALOG IS VISIBLE ,,,,,,,,,,,,,,,,,"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 501
    :cond_0
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 503
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 505
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 509
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 511
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isCustomerRequestPackage()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.sec.android.fotaclient"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 515
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 506
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private initUninstallButtons()V
    .locals 17

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 387
    const/4 v6, 0x1

    .line 388
    .local v6, enabled:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v14, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f0905b6

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 459
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 460
    const/4 v6, 0x0

    .line 463
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 464
    const/4 v6, 0x0

    .line 483
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    if-eqz v6, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 488
    :cond_3
    return-void

    .line 386
    .end local v6           #enabled:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 391
    .restart local v6       #enabled:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_e

    .line 392
    const/4 v6, 0x0

    .line 398
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v15, "android"

    const/16 v16, 0x40

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 400
    .local v13, sys:Landroid/content/pm/PackageInfo;
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v9, intent:Landroid/content/Intent;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 404
    .local v7, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 406
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f0905b3

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 417
    :goto_2
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v12

    .line 418
    .local v12, sales_code:Ljava/lang/String;
    const-string v14, "SPR"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "BST"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "VMU"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 420
    :cond_8
    sget-object v4, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->SPRINT_NO_DISABLE_APP_LIST:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v10, :cond_9

    aget-object v11, v4, v8

    .line 421
    .local v11, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 422
    const/4 v6, 0x0

    .line 439
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v11           #pkgName:Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 440
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Setting_RemoveDisableButtonInAppMgr"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, BlockPackageString:Ljava/lang/String;
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, BlockPackageList:[Ljava/lang/String;
    move-object v4, v1

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_4
    if-ge v8, v10, :cond_0

    aget-object v3, v4, v8

    .line 443
    .local v3, app:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 444
    const/4 v6, 0x0

    .line 445
    goto/16 :goto_1

    .line 407
    .end local v1           #BlockPackageList:[Ljava/lang/String;
    .end local v2           #BlockPackageString:Ljava/lang/String;
    .end local v3           #app:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #sales_code:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v14, v14, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v14, :cond_b

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f0905b3

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    .line 409
    const/4 v6, 0x1

    goto :goto_2

    .line 411
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f0905b4

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 420
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v11       #pkgName:Ljava/lang/String;
    .restart local v12       #sales_code:Ljava/lang/String;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 442
    .end local v11           #pkgName:Ljava/lang/String;
    .restart local v1       #BlockPackageList:[Ljava/lang/String;
    .restart local v2       #BlockPackageString:Ljava/lang/String;
    .restart local v3       #app:Ljava/lang/String;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 449
    .end local v1           #BlockPackageList:[Ljava/lang/String;
    .end local v2           #BlockPackageString:Ljava/lang/String;
    .end local v3           #app:Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #i$:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #len$:I
    .end local v12           #sales_code:Ljava/lang/String;
    .end local v13           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 450
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "InstalledAppDetails"

    const-string v15, "Unable to get package info"

    invoke-static {v14, v15, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 454
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v15, 0x7f0905b2

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 948
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 951
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 953
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 957
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 958
    if-nez v0, :cond_1

    .line 960
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 965
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0905d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isCustomerRequestPackage()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 347
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, sales_code:Ljava/lang/String;
    const/4 v3, 0x0

    .line 351
    .local v3, packageList:[Ljava/lang/String;
    const-string v8, "DCM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 352
    const/16 v8, 0x12

    new-array v3, v8, [Ljava/lang/String;

    .end local v3           #packageList:[Ljava/lang/String;
    const-string v8, "com.mcafee.vsm_android_dcm"

    aput-object v8, v3, v7

    const-string v8, "com.android.contacts"

    aput-object v8, v3, v6

    const/4 v8, 0x2

    const-string v9, "com.nttdocomo.android.socialphonebook"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-string v9, "jp.co.nttdocomo.carriermail"

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "jp.co.nttdocomo.spmodemail"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    const-string v9, "com.nttdocomo.android.anmane"

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "com.nttdocomo.android.remotelock"

    aput-object v9, v3, v8

    const/4 v8, 0x7

    const-string v9, "com.nttdocomo.android.areamail"

    aput-object v9, v3, v8

    const/16 v8, 0x8

    const-string v9, "com.nttdocomo.android.applicationmanager"

    aput-object v9, v3, v8

    const/16 v8, 0x9

    const-string v9, "com.rsupport.rs.activity.ntt"

    aput-object v9, v3, v8

    const/16 v8, 0xa

    const-string v9, "jp.co.nttdocomo.lcsapp"

    aput-object v9, v3, v8

    const/16 v8, 0xb

    const-string v9, "jp.co.nttdocomo.lcsappsub"

    aput-object v9, v3, v8

    const/16 v8, 0xc

    const-string v9, "jp.co.nttdocomo.Koe_no_Takuhaibin"

    aput-object v9, v3, v8

    const/16 v8, 0xd

    const-string v9, "jp.co.nttdocomo.docomo_WiFi"

    aput-object v9, v3, v8

    const/16 v8, 0xe

    const-string v9, "jp.co.nttdocomo.docomo_WiFi.preinstall"

    aput-object v9, v3, v8

    const/16 v8, 0xf

    const-string v9, "com.nttdocomo.communicase.carriermail"

    aput-object v9, v3, v8

    const/16 v8, 0x10

    const-string v9, "com.nttdocomo.android.gs.utility"

    aput-object v9, v3, v8

    const/16 v8, 0x11

    const-string v9, "com.android.phone"

    aput-object v9, v3, v8

    .line 374
    .restart local v3       #packageList:[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .line 375
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 376
    .local v4, pkgName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 382
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pkgName:Ljava/lang/String;
    :goto_1
    return v6

    .line 375
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    move v6, v7

    .line 382
    goto :goto_1
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 338
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 339
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 342
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 903
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 904
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 905
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0905b5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 906
    if-ne v0, v4, :cond_0

    .line 907
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 912
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 913
    return-void

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 929
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 930
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 932
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 933
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 934
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 940
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 941
    return-void

    .line 938
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 918
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 919
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 920
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 926
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0905eb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 923
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/16 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 830
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v6, -0x2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 832
    :cond_0
    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v10, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 833
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v4, :cond_1

    .line 834
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 840
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 895
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateButtonsForOperator()V

    .line 896
    return-void

    .line 843
    :cond_2
    iput-boolean v9, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 844
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 845
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 846
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_3
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 849
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 850
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    :cond_4
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 853
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 854
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    sub-long v2, v4, v6

    .line 857
    .local v2, nonCacheExtDataSize:J
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 858
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 859
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    :cond_6
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    add-long v0, v4, v6

    .line 862
    .local v0, cacheSize:J
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_7

    .line 863
    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 864
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    :cond_7
    iget-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 867
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 868
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    add-long/2addr v4, v2

    cmp-long v4, v4, v12

    if-lez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v4, :cond_a

    .line 872
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    :goto_1
    cmp-long v4, v0, v12

    if-gtz v4, :cond_d

    .line 889
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 876
    :cond_a
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 877
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_b

    .line 878
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 886
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 880
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 883
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 891
    :cond_d
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 892
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 644
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v0, :cond_1

    move v4, v5

    .line 811
    :cond_0
    :goto_0
    return v4

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_3

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 649
    :goto_1
    if-nez v1, :cond_17

    .line 650
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 652
    :goto_2
    if-eqz v0, :cond_17

    .line 653
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 656
    :goto_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 658
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2240

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v6, v2}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 682
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v3, v0

    .line 686
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 689
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 690
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0b0154

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 691
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    move v6, v5

    .line 692
    :goto_5
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 693
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 732
    :goto_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 734
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 745
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 750
    new-instance v1, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v3

    if-lez v3, :cond_16

    .line 752
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 754
    const v3, 0x7f0b015b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 756
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 757
    invoke-virtual {v1}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 760
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 761
    if-eqz v1, :cond_11

    array-length v0, v1

    if-le v0, v5, :cond_11

    .line 762
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v4

    .line 763
    :goto_7
    array-length v3, v1

    if-ge v0, v3, :cond_10

    .line 764
    aget-object v3, v1, v0

    .line 765
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 763
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 648
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 650
    :cond_4
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto/16 :goto_2

    .line 668
    :catch_0
    move-exception v0

    .line 669
    const-string v1, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 683
    :catch_1
    move-exception v0

    .line 684
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.hasDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    goto/16 :goto_4

    :cond_5
    move v6, v4

    .line 691
    goto/16 :goto_5

    .line 695
    :cond_6
    if-eqz v7, :cond_b

    if-eqz v6, :cond_b

    move v3, v5

    .line 697
    :goto_9
    if-eqz v7, :cond_c

    .line 698
    const v8, 0x7f0905a5

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 703
    :goto_a
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 706
    if-eqz v6, :cond_8

    .line 707
    const v6, 0x7f0905b7

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 708
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 709
    if-eqz v3, :cond_7

    .line 710
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v9, v10, v4, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 712
    :cond_7
    if-nez v0, :cond_d

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v4

    const-string v6, "\n"

    aput-object v6, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 715
    :cond_8
    :goto_b
    if-eqz v7, :cond_a

    .line 716
    const v6, 0x7f0905b8

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 718
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 719
    if-eqz v3, :cond_9

    .line 720
    new-instance v3, Landroid/text/style/BulletSpan;

    invoke-direct {v3, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v7, v3, v4, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 723
    :cond_9
    if-nez v0, :cond_e

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v4

    const-string v3, "\n"

    aput-object v3, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 726
    :cond_a
    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_b
    move v3, v4

    .line 695
    goto :goto_9

    .line 700
    :cond_c
    const v8, 0x7f0905a4

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 712
    :cond_d
    new-array v6, v13, [Ljava/lang/CharSequence;

    aput-object v0, v6, v4

    const-string v0, "\n"

    aput-object v0, v6, v5

    aput-object v9, v6, v11

    const-string v0, "\n"

    aput-object v0, v6, v12

    invoke-static {v6}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 723
    :cond_e
    new-array v3, v13, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    const-string v0, "\n"

    aput-object v0, v3, v5

    aput-object v7, v3, v11

    const-string v0, "\n"

    aput-object v0, v3, v12

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    .line 769
    :cond_f
    :try_start_2
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 770
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    .line 771
    :catch_2
    move-exception v3

    goto/16 :goto_8

    .line 774
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 775
    if-lez v7, :cond_11

    .line 776
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 778
    if-ne v7, v5, :cond_12

    .line 779
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 792
    :goto_d
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v3, 0x7f0b015a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 794
    const v3, 0x7f0905df

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v1, v6, v5

    invoke-virtual {v8, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    :cond_11
    :goto_e
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 803
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 804
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 805
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 808
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->applyKioskModePolicy(Ljava/lang/String;)V

    move v4, v5

    .line 811
    goto/16 :goto_0

    .line 780
    :cond_12
    if-ne v7, v11, :cond_13

    .line 781
    const v0, 0x7f0905e0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_d

    .line 784
    :cond_13
    add-int/lit8 v0, v7, -0x2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    add-int/lit8 v0, v7, -0x3

    move-object v3, v1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_15

    .line 786
    if-nez v1, :cond_14

    const v0, 0x7f0905e2

    :goto_10
    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v4

    aput-object v3, v9, v5

    invoke-virtual {v8, v0, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 785
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 786
    :cond_14
    const v0, 0x7f0905e3

    goto :goto_10

    .line 789
    :cond_15
    const v0, 0x7f0905e1

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v3, v1, v4

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_d

    .line 799
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e

    :cond_17
    move-object v2, v1

    goto/16 :goto_3
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 815
    const v0, 0x7f0905a4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 816
    const v0, 0x7f0905b9

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 818
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 819
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "pkgInfo"

    .prologue
    const/4 v8, 0x0

    .line 580
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0b013e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, appSnippet:Landroid/view/View;
    const v3, 0x7f0b00b1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 582
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 583
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 585
    const v3, 0x7f0b0176

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 586
    .local v2, label:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    const v3, 0x7f0b0186

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 590
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 591
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0905e7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 823
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 824
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 825
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 826
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 827
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1251
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1252
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1255
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1256
    .local v0, enable:Z
    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1257
    :catch_0
    move-exception v1

    .line 1258
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 968
    invoke-static {p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 969
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 970
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1165
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1166
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 1167
    invoke-direct {p0, v3, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 1168
    return-void
.end method

.method private updateButtonsForOperator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1220
    const-string v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1222
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1223
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1225
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1228
    :cond_2
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    return-void
.end method


# virtual methods
.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1330
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1331
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1333
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1334
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1336
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1338
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 1339
    if-nez p2, :cond_4

    .line 1340
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1342
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1267
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1268
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    .line 1269
    iget-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 1270
    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1274
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1276
    :cond_2
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1281
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1285
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1287
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, v2}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1292
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1294
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0b0154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1295
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1296
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1297
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1298
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1305
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1307
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1309
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_8

    .line 1310
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1312
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1313
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_a

    .line 1314
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1316
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_b

    .line 1318
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1320
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    move v0, v1

    .line 1322
    :cond_c
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1323
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1324
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 525
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->newSession(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    .line 526
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 527
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 528
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 529
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 530
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 532
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 534
    new-instance v1, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    .line 535
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0b01e5

    const v5, 0x7f0b01e4

    .line 539
    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 541
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0905e4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 544
    const v3, 0x7f0b0143

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 545
    const v3, 0x7f0b0145

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 546
    const v3, 0x7f0b014a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 547
    const v3, 0x7f0b0147

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 548
    const v3, 0x7f0b014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 551
    const v3, 0x7f0b013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 552
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 553
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f0905ac

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 554
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 555
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 558
    const v3, 0x7f0b014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 559
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 560
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 563
    const v3, 0x7f0b0151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 564
    const v3, 0x7f0b0152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 566
    const v3, 0x7f0b0155

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 569
    const v3, 0x7f0b0156

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 570
    const v3, 0x7f0b0157

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 571
    const v3, 0x7f0b0158

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 573
    const v3, 0x7f0b0140

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 575
    return-object v2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 979
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    .line 980
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->dismiss()V

    .line 985
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 986
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 626
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 637
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 611
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->pause()V

    .line 613
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 601
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 603
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->resume()V

    .line 604
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-direct {p0, v1, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 607
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 641
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 990
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 991
    return-void
.end method
