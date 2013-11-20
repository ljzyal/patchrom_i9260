.class public Lcom/android/OriginalSettings/PenSettingsMenu;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

.field public static mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPenNotificationListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packagelist:[Ljava/lang/String;


# instance fields
.field protected MESSAGE_DELAY:I

.field private mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

.field private mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

.field private mOpenQuicknote:Landroid/preference/CheckBoxPreference;

.field private mPenApplication:Landroid/preference/ListPreference;

.field private mPenApplicationEntries:Ljava/util/Vector;

.field private mPenApplicationValues:Ljava/util/Vector;

.field private mPenBatterySaving:Landroid/preference/CheckBoxPreference;

.field private mPenDetachSound:Landroid/preference/PreferenceScreen;

.field private mPenGestureGuide:Landroid/preference/CheckBoxPreference;

.field private mPenHovering:Landroid/preference/SwitchPreferenceScreen;

.field private mPenHoveringSound:Landroid/preference/CheckBoxPreference;

.field protected mPenHoveringUncheckerHandler:Landroid/os/Handler;

.field private mPenKeeperNotiDialog:Landroid/app/AlertDialog;

.field private mPenPreferredHand:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "None"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.launcher,com.android.launcher2.Launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snotebook,com.infraware.filemanager.FmFileTreeListActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.calendar,com.android.calendar.AllInOneActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.acrodea.crayonphysics,com.acrodea.crayonphysics.crayonphysics"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "air.com.adobe.pstouch.oem1,air.com.adobe.pstouch.oem1.AppEntry"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.infraware.PolarisOfficeStdForTablet,com.infraware.splash.SplashActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.diotek.mini_penmemo,com.diotek.mini_penmemo.Mini_PenMemo_Service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->packagelist:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->MESSAGE_DELAY:I

    .line 107
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    .line 108
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    .line 311
    new-instance v0, Lcom/android/OriginalSettings/PenSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/PenSettingsMenu$1;-><init>(Lcom/android/OriginalSettings/PenSettingsMenu;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private makePenNotificationList()V
    .locals 3

    .prologue
    .line 441
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 442
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c11

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c12

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c13

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090c14

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/OriginalSettings/PenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    sget-object v0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/OriginalSettings/PenSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/PenSettingsMenu$3;-><init>(Lcom/android/OriginalSettings/PenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/PenSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/PenSettingsMenu$2;-><init>(Lcom/android/OriginalSettings/PenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 339
    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.OriginalSettings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, i:Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    const-string v1, "PenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method private setPenApplicationEntriesAndValues()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 399
    const/4 v8, 0x0

    .line 403
    .local v8, tempPkgList:[Ljava/lang/String;
    sget-object v8, Lcom/android/OriginalSettings/PenSettingsMenu;->packagelist:[Ljava/lang/String;

    .line 406
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_5

    .line 407
    aget-object v6, v8, v2

    .line 408
    .local v6, packageInfo:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 409
    .local v3, index:I
    if-lez v3, :cond_1

    .line 410
    invoke-virtual {v6, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 411
    .local v7, packageName:Ljava/lang/String;
    const-string v9, "PenSettingsMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 414
    .local v5, mPm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 415
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, appName:Ljava/lang/String;
    const-string v9, "TouchWiz Home"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 418
    const-string v0, "S pen page"

    .line 420
    :cond_0
    iget-object v9, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v9, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #mPm:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 423
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PenSettingsMenu"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 428
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_1
    const-string v9, "None"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 429
    iget-object v9, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090c19

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 430
    :cond_3
    const-string v9, "Shortcuts toolbar"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 431
    iget-object v9, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090c1a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 432
    :cond_4
    const-string v9, "S pen page"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 433
    iget-object v9, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090c1b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 438
    .end local v3           #index:I
    .end local v6           #packageInfo:Ljava/lang/String;
    :cond_5
    return-void

    .line 424
    .restart local v3       #index:I
    .restart local v6       #packageInfo:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private updateDetachNotiPref()V
    .locals 4

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, currentNotiSound:Ljava/lang/String;
    sget-object v2, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 457
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 458
    const/4 v1, 0x1

    .line 459
    const-string v2, "PenSettingsMenu"

    const-string v3, "updateDetachNotiPref() file exist error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenDetachSound:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    return-void
.end method

.method private updatePenApplicationPref()V
    .locals 7

    .prologue
    .line 473
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, currentValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, currentEntry:Ljava/lang/String;
    :goto_0
    const-string v4, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePenApplicationPref() - currentValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / currentEntry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v3, 0x0

    .line 479
    .local v3, summary:Ljava/lang/String;
    const-string v4, "None"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    move-object v3, v0

    .line 485
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 486
    return-void

    .line 475
    .end local v0           #currentEntry:Ljava/lang/String;
    .end local v3           #summary:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 482
    .restart local v0       #currentEntry:Ljava/lang/String;
    .restart local v3       #summary:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c18

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, s:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    const-string v0, "PenSettingsMenu"

    const-string v3, "updateState() "

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->updateDetachNotiPref()V

    .line 238
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pen_hovering"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 244
    return-void

    :cond_1
    move v0, v2

    .line 241
    goto :goto_0

    :cond_2
    move v1, v2

    .line 242
    goto :goto_1
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 221
    .local v3, hoveringPointer:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 222
    .local v1, hoveringInformationPreview:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, hoveringIconLabel:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 224
    .local v2, hoveringListScroll:I
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 226
    const/4 v4, 0x1

    .line 228
    :cond_0
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    const-string v0, "PenSettingsMenu"

    const-string v3, "onCreate() "

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 118
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->addPreferencesFromResource(I)V

    .line 122
    const-string v0, "pen_hand_side"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hand_side"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "pen_general_category"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :cond_0
    const-string v0, "pen_deatachment_sound"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenDetachSound:Landroid/preference/PreferenceScreen;

    .line 131
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->makePenNotificationList()V

    .line 133
    const-string v0, "battery_saving"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 135
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_detect_mode_disabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->setPenApplicationEntriesAndValues()V

    .line 138
    const-string v0, "application"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    .line 139
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 140
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_applications"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->updatePenApplicationPref()V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    const-string v0, "open_quick_note"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_detach_application"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    const-string v0, "pen_hovering"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    .line 157
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    const-string v0, "pen_hovering_menu"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    .line 160
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pen_hovering"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    :cond_1
    const-string v0, "pen_hovering_sound"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_sound"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    const-string v0, "pen_gesture_guide"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 172
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_gesture_guide"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    const-string v0, "loss_prevention_alert"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_detachment_alert"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisablePenDetachmentAlert"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    return-void

    :cond_4
    move v0, v2

    .line 135
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 150
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 157
    goto/16 :goto_2

    :cond_7
    move v0, v2

    .line 160
    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 168
    goto/16 :goto_4

    :cond_9
    move v0, v2

    .line 172
    goto :goto_5

    :cond_a
    move v1, v2

    .line 179
    goto :goto_6
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 248
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, key:Ljava/lang/String;
    const-string v3, "pen_hand_side"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, value:I
    :try_start_0
    const-string v3, "PenSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(KEY_PEN_PREFERRED_HAND): value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hand_side"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 256
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->updateState()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v2           #value:I
    :cond_0
    :goto_0
    return v7

    .line 258
    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v4, "could not persist pen setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 261
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_1
    const-string v3, "pen_deatachment_sound"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    const-string v3, "pen_hovering_menu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 274
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 277
    .local v2, value:Z
    :try_start_1
    const-string v3, "PenSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(KEY_PEN_HOVERING_MENU): value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 280
    const-string v3, "PenSettingsMenu"

    const-string v4, "Hovering mode changed ignored cause all sub options are disabled "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->MESSAGE_DELAY:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v4, "could not persist pen setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 283
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    if-eqz v2, :cond_4

    .line 284
    :try_start_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/PenHoveringEnabler;->isEnabledScreenReaderService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->makeTalkBackDisablePopup()V

    .line 292
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->updateState()V

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 290
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 297
    .end local v2           #value:Z
    .restart local p2
    :cond_5
    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 298
    check-cast v2, Ljava/lang/String;

    .line 300
    .local v2, value:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_applications"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    iget-object v3, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->updatePenApplicationPref()V

    .line 303
    const-string v3, "PenSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pen application : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_applications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 304
    :catch_2
    move-exception v0

    .line 305
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    sget-boolean v3, Lcom/android/OriginalSettings/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PenSettingsMenu"

    const-string v4, "could not persist pen application setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 343
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 344
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 345
    .local v2, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen_hovering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v2           #value:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :cond_1
    :goto_2
    return v3

    .restart local v2       #value:Z
    :cond_2
    move v3, v4

    .line 345
    goto :goto_0

    .line 347
    .end local v2           #value:Z
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 348
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    .line 349
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    if-eqz v2, :cond_4

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen_hovering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v3, v4

    .line 349
    goto :goto_3

    .line 351
    .end local v2           #value:Z
    :cond_5
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 352
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 353
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detect_mode_disabled"

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 355
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery saving : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detect_mode_disabled"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move v5, v4

    .line 353
    goto :goto_4

    :cond_7
    move v5, v4

    .line 354
    goto :goto_5

    .line 357
    .end local v2           #value:Z
    :cond_8
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 358
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 359
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detach_application"

    if-eqz v2, :cond_9

    move v5, v3

    :goto_6
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen detach application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detach_application"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move v5, v4

    .line 359
    goto :goto_6

    .line 362
    .end local v2           #value:Z
    :cond_a
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 363
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 364
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_sound"

    if-eqz v2, :cond_b

    move v5, v3

    :goto_7
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen sound : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering_sound"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v5, v4

    .line 364
    goto :goto_7

    .line 367
    .end local v2           #value:Z
    :cond_c
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 368
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 369
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_gesture_guide"

    if-eqz v2, :cond_d

    move v5, v3

    :goto_8
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pen Gesture Guide : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_gesture_guide"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    move v5, v4

    .line 369
    goto :goto_8

    .line 377
    .end local v2           #value:Z
    :cond_e
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 378
    iget-object v5, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 379
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detachment_alert"

    if-eqz v2, :cond_f

    move v5, v3

    :goto_9
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/PenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 381
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loss prevention alert : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_alert"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.OriginalSettings_pen_keeper_noti_pref"

    invoke-virtual {v5, v6, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 384
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 385
    const-string v5, "PenKeeperDoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 386
    .local v0, doNotShow:Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->showPenKeeperNotiDialog()V

    goto/16 :goto_2

    .end local v0           #doNotShow:Z
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_f
    move v5, v4

    .line 379
    goto :goto_9
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "PenSettingsMenu"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 215
    invoke-direct {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->updateState()V

    .line 216
    return-void
.end method

.method public showPenKeeperNotiDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 504
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 506
    iput-object v6, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 510
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040053

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 511
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b00f0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 513
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090a0e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 514
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 515
    const v4, 0x7f090a0d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 516
    const v4, 0x7f0905d5

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 519
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 521
    iget-object v4, p0, Lcom/android/OriginalSettings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/PenSettingsMenu$4;

    invoke-direct {v5, p0, v2}, Lcom/android/OriginalSettings/PenSettingsMenu$4;-><init>(Lcom/android/OriginalSettings/PenSettingsMenu;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 532
    return-void
.end method
