.class public Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;,
        Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static isConnectivityModeOn:I

.field private static isSimStatusOff:I

.field private static mContext:Landroid/content/Context;

.field private static final sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private static final sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;


# instance fields
.field private mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 69
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.OriginalSettings"

    const-string v2, "com.android.OriginalSettings.powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 72
    sput-object v3, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 102
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 104
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 106
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 108
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    invoke-direct {v0, v3}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 112
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 114
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 116
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 120
    new-instance v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    .line 66
    return-void
.end method

.method static synthetic access$600()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 609
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040028

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 611
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b005e

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 613
    const v1, 0x7f0b0061

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 615
    const v1, 0x7f0b0065

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 617
    const v1, 0x7f0b0069

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 619
    const v1, 0x7f0b006d

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 621
    const v1, 0x7f0b0071

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 624
    invoke-static {v0, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 625
    return-object v0
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 994
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 996
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 804
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 805
    const-class v1, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 806
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 808
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 809
    return-object v0
.end method

.method private static getOffState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 1006
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v4

    .line 1007
    .local v4, wifiState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 1008
    .local v0, btState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 1009
    .local v1, dataState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    .line 1010
    .local v3, syncState:I
    sget-object v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    .line 1015
    .local v2, gpsState:I
    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-ne v1, v5, :cond_0

    sget v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v6, :cond_0

    sget v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-eqz v6, :cond_1

    :cond_0
    if-eq v3, v5, :cond_1

    if-ne v2, v5, :cond_2

    .line 1021
    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 929
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 930
    .local v0, sync:Z
    return v0
.end method

.method private mobileDataOffAlert(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1058
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1060
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f040090

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1063
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0b0198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1065
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$1;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1079
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090811

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1081
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1082
    const v5, 0x104000a

    new-instance v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$2;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$2;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1088
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$3;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$3;-><init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1093
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1095
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1096
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1097
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1098
    return-void
.end method

.method private toogleOffMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1025
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1027
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1029
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 1030
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 1032
    .local v3, sync:Z
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1033
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1034
    :cond_0
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1036
    :cond_1
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1037
    :cond_2
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1039
    :cond_3
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1040
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v5, :cond_4

    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-nez v5, :cond_4

    .line 1041
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1044
    :cond_4
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 1045
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1047
    :cond_5
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1048
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v6}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1050
    new-instance v2, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v2, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1055
    .end local v2           #intent_widget:Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f0202ae

    const v6, 0x7f0d0017

    const v5, 0x7f0202ad

    const/4 v4, 0x0

    const v3, 0x7f0d0018

    .line 649
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 650
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 651
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 652
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 653
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 655
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 687
    :pswitch_0
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : WiFi state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 692
    const v0, 0x7f0b0072

    const v1, 0x7f0202b8

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 693
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 694
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 700
    :goto_1
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    const v0, 0x7f0b006e

    const v1, 0x7f0202b6

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 702
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 703
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 709
    :goto_2
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 710
    const v0, 0x7f0b005f

    const v1, 0x7f0202ba

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 711
    const v0, 0x7f0b0060

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 716
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 718
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 732
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_6

    .line 734
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    .line 740
    :goto_4
    sget v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 741
    :cond_1
    const v0, 0x7f0b006a

    const v1, 0x7f0202b3

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 742
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 743
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 756
    :goto_5
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 789
    :pswitch_1
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : BT state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :goto_6
    return-void

    .line 657
    :pswitch_2
    const v0, 0x7f0b0062

    const v1, 0x7f0202bb

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 658
    const v0, 0x7f0b0063

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 660
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 663
    :pswitch_3
    const v0, 0x7f0b0062

    const v1, 0x7f0202bc

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 664
    const v0, 0x7f0b0063

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 666
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 674
    :pswitch_4
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 675
    const v0, 0x7f0b0062

    const v1, 0x7f0201fd

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 676
    const v0, 0x7f0b0063

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 678
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 680
    :cond_2
    const v0, 0x7f0b0062

    const v1, 0x7f0201fc

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 681
    const v0, 0x7f0b0063

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 683
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 696
    :cond_3
    const v0, 0x7f0b0072

    const v1, 0x7f0202b7

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 697
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 698
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 705
    :cond_4
    const v0, 0x7f0b006e

    const v1, 0x7f0202b5

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 706
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 707
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 713
    :cond_5
    const v0, 0x7f0b005f

    const v1, 0x7f0202b9

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 714
    const v0, 0x7f0b0060

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    .line 736
    :cond_6
    sput v4, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    goto/16 :goto_4

    .line 745
    :cond_7
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 746
    const v0, 0x7f0b006a

    const v1, 0x7f0202b4

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 747
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 748
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 750
    :cond_8
    const v0, 0x7f0b006a

    const v1, 0x7f0202b3

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 751
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 752
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 758
    :pswitch_5
    const v0, 0x7f0b0066

    const v1, 0x7f0202b1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 759
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 761
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 764
    :pswitch_6
    const v0, 0x7f0b0066

    const v1, 0x7f0202b2

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 765
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 767
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 775
    :pswitch_7
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 776
    const v0, 0x7f0b0066

    const v1, 0x7f0202b2

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 777
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 779
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 781
    :cond_9
    const v0, 0x7f0b0066

    const v1, 0x7f0202b1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 783
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 785
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_6

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 756
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 634
    invoke-static {p0}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 637
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 638
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 639
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 603
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 593
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 594
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    .line 595
    sget-object v0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 597
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 820
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 821
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, action:Ljava/lang/String;
    const-string v5, "ConnectivityLocationWidgetProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 824
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 907
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 908
    :cond_1
    return-void

    .line 825
    :cond_2
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 826
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 827
    :cond_3
    const-string v5, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 828
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 838
    :cond_4
    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 840
    :cond_5
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, p2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 842
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 845
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 846
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 847
    :cond_7
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 848
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 849
    :cond_8
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 850
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 851
    :cond_9
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 853
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 855
    .local v1, buttonId:I
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    if-nez v5, :cond_0

    .line 856
    if-nez v1, :cond_a

    .line 857
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->toogleOffMode(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 858
    :cond_a
    if-ne v1, v9, :cond_b

    .line 859
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 860
    :cond_b
    const/4 v5, 0x2

    if-ne v1, v5, :cond_c

    .line 862
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 863
    :cond_c
    const/4 v5, 0x3

    if-ne v1, v5, :cond_10

    .line 864
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-eq v5, v9, :cond_d

    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isSimStatusOff:I

    if-ne v5, v9, :cond_e

    .line 865
    :cond_d
    sget v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v5, v9, :cond_0

    .line 866
    const v5, 0x7f090e54

    invoke-static {p1, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 870
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "quickpanel_mobiledata_checked"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 872
    .local v4, mChecked:I
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_f

    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    .line 873
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 876
    :cond_f
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 879
    .end local v4           #mChecked:I
    :cond_10
    const/4 v5, 0x4

    if-ne v1, v5, :cond_11

    .line 880
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 882
    :cond_11
    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    .line 883
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 885
    new-instance v3, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 896
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 899
    sget-object v5, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1, v8}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 584
    invoke-static {p1}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 586
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 587
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_0
    return-void
.end method
