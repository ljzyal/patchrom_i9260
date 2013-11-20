.class Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# static fields
.field public static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field public static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLogo:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 286
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 243
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 244
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 247
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 248
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 249
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 250
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 251
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 252
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 261
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 264
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 265
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 268
    iput v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 269
    iput v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 271
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 288
    new-instance v0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setFocusableInTouchMode(Z)V

    .line 300
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsDayOrNight()Z
    .locals 5

    .prologue
    .line 684
    const/16 v0, 0x258

    .line 685
    .local v0, mnSunriseTime:I
    const/16 v1, 0x708

    .line 687
    .local v1, mnSunsetTime:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v2, v3, v4

    .line 689
    .local v2, nCurTime:I
    const/16 v3, 0x23a

    if-lt v2, v3, :cond_0

    const/16 v3, 0x726

    if-gt v2, v3, :cond_0

    .line 690
    const/4 v3, 0x0

    .line 694
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findDrawableId(I)I
    .locals 1
    .parameter "weatherIconNum"

    .prologue
    const/4 v0, 0x0

    .line 499
    packed-switch p1, :pswitch_data_0

    .line 561
    :goto_0
    :pswitch_0
    return v0

    .line 506
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 510
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 512
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 517
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 519
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 523
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 526
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 528
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 531
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 534
    :pswitch_a
    const/16 v0, 0xa

    goto :goto_0

    .line 538
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 542
    :pswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 544
    :pswitch_d
    const/16 v0, 0xd

    goto :goto_0

    .line 546
    :pswitch_e
    const/16 v0, 0xe

    goto :goto_0

    .line 548
    :pswitch_f
    const/16 v0, 0xf

    goto :goto_0

    .line 550
    :pswitch_10
    const/16 v0, 0x10

    goto :goto_0

    .line 552
    :pswitch_11
    const/16 v0, 0x11

    goto :goto_0

    .line 557
    :pswitch_12
    const/16 v0, 0x12

    goto :goto_0

    .line 559
    :pswitch_13
    const/16 v0, 0x13

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private findDrawableIdForKweather(I)I
    .locals 2
    .parameter "weatherIconNum"

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->checkIsDayOrNight()Z

    move-result v0

    .line 614
    .local v0, isNight:Z
    packed-switch p1, :pswitch_data_0

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 616
    :pswitch_0
    if-eqz v0, :cond_0

    .line 617
    const/16 v1, 0x12

    goto :goto_0

    .line 623
    :pswitch_1
    if-eqz v0, :cond_1

    .line 624
    const/16 v1, 0x13

    goto :goto_0

    .line 626
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 629
    :pswitch_2
    if-eqz v0, :cond_2

    .line 630
    const/16 v1, 0x14

    goto :goto_0

    .line 632
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 634
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 636
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 639
    :pswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 641
    :pswitch_6
    const/4 v1, 0x6

    goto :goto_0

    .line 650
    :pswitch_7
    const/16 v1, 0x8

    goto :goto_0

    .line 654
    :pswitch_8
    const/16 v1, 0x9

    goto :goto_0

    .line 658
    :pswitch_9
    const/16 v1, 0xa

    goto :goto_0

    .line 664
    :pswitch_a
    const/16 v1, 0xb

    goto :goto_0

    .line 670
    :pswitch_b
    const/16 v1, 0xd

    goto :goto_0

    .line 676
    :pswitch_c
    const/16 v1, 0xe

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private findDrawableIdForSina(I)I
    .locals 3
    .parameter "weatherIconNum"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 567
    packed-switch p1, :pswitch_data_0

    .line 608
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 571
    goto :goto_0

    .line 574
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 576
    goto :goto_0

    .line 580
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 582
    :pswitch_5
    const/16 v0, 0x11

    goto :goto_0

    .line 584
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_7
    move v0, v2

    .line 586
    goto :goto_0

    .line 588
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 591
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 593
    :pswitch_a
    const/16 v0, 0xe

    goto :goto_0

    .line 598
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 600
    :pswitch_c
    const/16 v0, 0x12

    goto :goto_0

    .line 602
    :pswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 604
    :pswitch_e
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_f
    move v0, v2

    .line 606
    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private setMarquee(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 723
    if-eqz p1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 725
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 730
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 478
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 486
    .local v1, unlock_weather_drawables:[I
    const/4 v0, 0x0

    .line 487
    .local v0, i:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForSina(I)I

    move-result v0

    .line 494
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    return-void

    .line 489
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableIdForKweather(I)I

    move-result v0

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    goto :goto_0

    .line 478
    :array_0
    .array-data 0x4
        0xb9t 0x4t 0x8t 0x1t
        0xbat 0x4t 0x8t 0x1t
        0xbbt 0x4t 0x8t 0x1t
        0xbct 0x4t 0x8t 0x1t
        0xbdt 0x4t 0x8t 0x1t
        0xbet 0x4t 0x8t 0x1t
        0xbft 0x4t 0x8t 0x1t
        0xc0t 0x4t 0x8t 0x1t
        0xc1t 0x4t 0x8t 0x1t
        0xc2t 0x4t 0x8t 0x1t
        0xc3t 0x4t 0x8t 0x1t
        0xc4t 0x4t 0x8t 0x1t
        0xc4t 0x4t 0x8t 0x1t
        0xc5t 0x4t 0x8t 0x1t
        0xc6t 0x4t 0x8t 0x1t
        0xc7t 0x4t 0x8t 0x1t
        0xc8t 0x4t 0x8t 0x1t
        0xc9t 0x4t 0x8t 0x1t
        0xcat 0x4t 0x8t 0x1t
        0xcbt 0x4t 0x8t 0x1t
        0xcct 0x4t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x104067a

    const/4 v5, 0x1

    .line 700
    const-string v0, ""

    .line 702
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 719
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 705
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 706
    .local v5, isCelsius:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 707
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040678

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 719
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_0

    .line 705
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 713
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040679

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 306
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 308
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    new-instance v1, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->updateWeatherInfo()V

    .line 338
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const v2, 0x10202ed

    .line 353
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 354
    const v0, 0x10202e7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x104066d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 356
    const v0, 0x10202e8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    .line 357
    const v0, 0x10202ec

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 358
    const v0, 0x10202e9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 359
    const v0, 0x10202eb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 360
    const v0, 0x10202ea

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    .line 362
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080431

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080428

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 736
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 737
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 12

    .prologue
    .line 377
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 378
    .local v6, mAppServiceStatus:I
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v4, 0x1

    .line 380
    .local v4, isServiceEnable:Z
    :goto_0
    const-string v0, ""

    .line 381
    .local v0, cityId:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 382
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_1
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isServiceEnable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {}, Lcom/android/internal/policy/impl/sec/ClockWidget;->access$900()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 394
    const-string v9, "ClockWidget"

    const-string v10, "EasyUx mode is on, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 397
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 470
    :goto_2
    return-void

    .line 378
    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 384
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_loc_code"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 399
    :cond_2
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 401
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, And data is ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 404
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 428
    const/4 v5, 0x0

    .line 429
    .local v5, lowTemp:I
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 430
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_high_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .line 431
    .local v2, currentTemp:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_low_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v5, v9

    .line 436
    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_temp_scale"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 437
    .local v7, tempScale:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_icon_num"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 438
    .local v3, iconNum:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, cityName:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weather Data : currentTemp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, text_currentTemp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 452
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    :goto_4
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9

    .line 460
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080421

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    :cond_3
    :goto_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 407
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:I
    .end local v3           #iconNum:I
    .end local v5           #lowTemp:I
    .end local v7           #tempScale:I
    .end local v8           #text_currentTemp:Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 409
    :cond_5
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 412
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto/16 :goto_2

    .line 418
    :cond_6
    const-string v9, "ClockWidget"

    const-string v10, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->setVisibility(I)V

    .line 421
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto/16 :goto_2

    .line 434
    .restart local v5       #lowTemp:I
    :cond_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_current_temp"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v9

    float-to-int v2, v9

    .restart local v2       #currentTemp:I
    goto/16 :goto_3

    .line 455
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v3       #iconNum:I
    .restart local v7       #tempScale:I
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #text_currentTemp:Ljava/lang/String;
    goto :goto_4

    .line 461
    :cond_9
    if-nez v7, :cond_3

    .line 462
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v10, 0x1080426

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method
