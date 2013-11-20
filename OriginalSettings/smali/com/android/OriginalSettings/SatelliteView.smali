.class public Lcom/android/OriginalSettings/SatelliteView;
.super Landroid/app/Activity;
.source "SatelliteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/SatelliteView$setHandler;,
        Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;,
        Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;,
        Lcom/android/OriginalSettings/SatelliteView$SatComp;
    }
.end annotation


# static fields
.field private static a:[D

.field static ani_count:I

.field static ani_gap_x:D

.field static ani_gap_y:D

.field private static azimuth:[F

.field private static b:[D

.field private static circlePaint:Landroid/graphics/Paint;

.field private static elevation:[F

.field private static mAltitude:D

.field private static mBearing:F

.field private static mLatitude:D

.field private static mLongitude:D

.field static mNoOfSat:I

.field public static mStartMode:I

.field static mSvInformation:Ljava/lang/String;

.field private static px:[I

.field private static py:[I

.field private static snr:[F


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private btn_log:Landroid/widget/Button;

.field calendarDate:Ljava/lang/String;

.field private drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccuracy:F

.field mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Lcom/android/OriginalSettings/SatelliteView$setHandler;

.field mLm:Landroid/location/LocationManager;

.field mLoc:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mSpeed:D

.field private mTime:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field sv_list:[Landroid/location/GpsSatellite;

.field sv_list_mask:I

.field private text:Landroid/widget/TextView;

.field private ttff:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0xc

    .line 92
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    .line 96
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mLongitude:D

    .line 97
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mLatitude:D

    .line 116
    const/4 v0, 0x0

    sput v0, Lcom/android/OriginalSettings/SatelliteView;->mNoOfSat:I

    .line 117
    const-string v0, " "

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->mSvInformation:Ljava/lang/String;

    .line 119
    new-array v0, v1, [F

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->azimuth:[F

    .line 120
    new-array v0, v1, [F

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->elevation:[F

    .line 121
    new-array v0, v1, [F

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->snr:[F

    .line 122
    new-array v0, v1, [I

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    .line 123
    new-array v0, v1, [I

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    .line 124
    new-array v0, v1, [D

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    .line 125
    new-array v0, v1, [D

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTime:J

    .line 98
    iput v2, p0, Lcom/android/OriginalSettings/SatelliteView;->ttff:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mAccuracy:F

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 105
    iput-object v3, p0, Lcom/android/OriginalSettings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 107
    iput v2, p0, Lcom/android/OriginalSettings/SatelliteView;->sv_list_mask:I

    .line 108
    const/16 v0, 0x20

    new-array v0, v0, [Landroid/location/GpsSatellite;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    .line 382
    new-instance v0, Lcom/android/OriginalSettings/SatelliteView$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SatelliteView$2;-><init>(Lcom/android/OriginalSettings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 424
    new-instance v0, Lcom/android/OriginalSettings/SatelliteView$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SatelliteView$3;-><init>(Lcom/android/OriginalSettings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 431
    new-instance v0, Lcom/android/OriginalSettings/SatelliteView$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SatelliteView$4;-><init>(Lcom/android/OriginalSettings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    .line 638
    return-void
.end method

.method static synthetic access$1000()[F
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->snr:[F

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/SatelliteView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/OriginalSettings/SatelliteView;->ttff:I

    return p1
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    return-object v0
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    return-object v0
.end method

.method static synthetic access$1300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/SatelliteView;)Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/SatelliteView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/SatelliteView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/OriginalSettings/SatelliteView;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 63
    sget-wide v0, Lcom/android/OriginalSettings/SatelliteView;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$202(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-wide p0, Lcom/android/OriginalSettings/SatelliteView;->mLongitude:D

    return-wide p0
.end method

.method static synthetic access$300()D
    .locals 2

    .prologue
    .line 63
    sget-wide v0, Lcom/android/OriginalSettings/SatelliteView;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-wide p0, Lcom/android/OriginalSettings/SatelliteView;->mLatitude:D

    return-wide p0
.end method

.method static synthetic access$400()D
    .locals 2

    .prologue
    .line 63
    sget-wide v0, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    return-wide v0
.end method

.method static synthetic access$402(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput-wide p0, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    return-wide p0
.end method

.method static synthetic access$500()F
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/SatelliteView;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/SatelliteView;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/SatelliteView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/OriginalSettings/SatelliteView;->mAccuracy:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/SatelliteView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/SatelliteView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/OriginalSettings/SatelliteView;->mTime:J

    return-wide p1
.end method

.method private diplayCompleted()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 149
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 151
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SatelliteView;->startGPS()V

    .line 153
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mLatitude:D

    .line 154
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mLongitude:D

    .line 155
    iput-wide v2, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTime:J

    .line 157
    sput v5, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    .line 158
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    .line 161
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->azimuth:[F

    aput v5, v0, v7

    .line 164
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->elevation:[F

    aput v5, v0, v7

    .line 165
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->snr:[F

    aput v5, v0, v7

    .line 167
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    aput-wide v2, v0, v7

    .line 168
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    aput-wide v2, v0, v7

    .line 169
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    aput v4, v0, v7

    .line 170
    sget-object v0, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    aput v4, v0, v7

    .line 161
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 173
    :cond_0
    new-instance v6, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTime:J

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 174
    .local v6, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 177
    const v0, 0x7f0b0297

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_cal:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    const v0, 0x7f0b0298

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    const v0, 0x7f0b0295

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->text:Landroid/widget/TextView;

    .line 189
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    .line 196
    const v0, 0x7f090e9c

    new-array v1, v10, [Ljava/lang/Object;

    sget-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    sget v3, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, sSatelliteResult:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v0, Lcom/android/OriginalSettings/SatelliteView$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SatelliteView$1;-><init>(Lcom/android/OriginalSettings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTimerTask:Ljava/util/TimerTask;

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 211
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 486
    :goto_0
    return-void

    .line 471
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 472
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 475
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 476
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 477
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mHandler:Lcom/android/OriginalSettings/SatelliteView$setHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/SatelliteViewLog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x7f0b0297
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Lcom/android/OriginalSettings/SatelliteView$setHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/SatelliteView$setHandler;-><init>(Lcom/android/OriginalSettings/SatelliteView;Lcom/android/OriginalSettings/SatelliteView$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mHandler:Lcom/android/OriginalSettings/SatelliteView$setHandler;

    .line 136
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTimer:Ljava/util/Timer;

    .line 138
    const v0, 0x7f0400de

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->setContentView(I)V

    .line 139
    new-instance v0, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    .line 140
    const v0, 0x7f0b0296

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->draw_layout:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    const/4 v0, 0x0

    sput v0, Lcom/android/OriginalSettings/SatelliteView;->mStartMode:I

    .line 144
    invoke-direct {p0}, Lcom/android/OriginalSettings/SatelliteView;->init()V

    .line 145
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 514
    sput v0, Lcom/android/OriginalSettings/SatelliteView;->mNoOfSat:I

    .line 515
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SatelliteView;->stopGPS()V

    .line 516
    iput-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 517
    iput-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 518
    sput v0, Lcom/android/OriginalSettings/SatelliteView;->mStartMode:I

    .line 519
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 520
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->destroyDrawingCache()V

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 522
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mHandler:Lcom/android/OriginalSettings/SatelliteView$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mHandler:Lcom/android/OriginalSettings/SatelliteView$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->removeMessages(I)V

    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 510
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 490
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 493
    const v1, 0x7f090e9c

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget v4, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, sSatelliteResult:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    #calls: Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v1, v6}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->access$900(Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;I)V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 501
    return-void
.end method

.method showSVStatus()V
    .locals 15

    .prologue
    .line 324
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v2, mSatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/16 v8, 0x20

    if-ge v0, v8, :cond_1

    .line 328
    iget v8, p0, Lcom/android/OriginalSettings/SatelliteView;->sv_list_mask:I

    const/4 v9, 0x1

    shl-int/2addr v9, v0

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 326
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget-object v8, p0, Lcom/android/OriginalSettings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v3, v8, v0

    .line 332
    .local v3, sat:Landroid/location/GpsSatellite;
    new-instance v8, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;

    invoke-direct {v8, v3, v1}, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;-><init>(Landroid/location/GpsSatellite;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 336
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_1
    const-string v8, "GPS TEST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "j = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-array v6, v1, [Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;

    .line 338
    .local v6, sorted_list:[Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 339
    new-instance v4, Lcom/android/OriginalSettings/SatelliteView$SatComp;

    invoke-direct {v4}, Lcom/android/OriginalSettings/SatelliteView$SatComp;-><init>()V

    .line 341
    .local v4, satComp:Lcom/android/OriginalSettings/SatelliteView$SatComp;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, x:I
    :goto_2
    const/16 v8, 0xc

    if-ge v7, v8, :cond_2

    .line 345
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->azimuth:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 346
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->elevation:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 347
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->snr:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 349
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    .line 350
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    .line 351
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 352
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 343
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 355
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 357
    aget-object v8, v6, v0

    invoke-virtual {v8}, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v3

    .line 359
    .restart local v3       #sat:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    const/high16 v9, 0x42c8

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 361
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->azimuth:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v9

    aput v9, v8, v0

    .line 362
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->elevation:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v9

    aput v9, v8, v0

    .line 363
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->snr:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v9

    aput v9, v8, v0

    .line 365
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    sget-object v9, Lcom/android/OriginalSettings/SatelliteView;->elevation:[F

    aget v9, v9, v0

    float-to-double v9, v9

    const-wide v11, 0x3f91df3300de4c51L

    mul-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 366
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    sget-object v9, Lcom/android/OriginalSettings/SatelliteView;->azimuth:[F

    aget v9, v9, v0

    const/high16 v10, 0x42b4

    sub-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x3f91df3300de4c51L

    mul-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 368
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    const-wide v9, 0x407c200000000000L

    const-wide/high16 v11, 0x4069

    sget-object v13, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sget-object v13, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v8, v0

    .line 369
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    const-wide v9, 0x4080e00000000000L

    const-wide/high16 v11, 0x4069

    sget-object v13, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sget-object v13, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v8, v0

    .line 371
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    aget v8, v8, v0

    add-int/lit16 v8, v8, -0x1c2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sget-object v10, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    aget v10, v10, v0

    add-int/lit16 v10, v10, -0x21c

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4069

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 373
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    const/16 v9, 0x1c2

    aput v9, v8, v0

    .line 374
    sget-object v8, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    const/16 v9, 0x21c

    aput v9, v8, v0

    .line 355
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 378
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_4
    sput v1, Lcom/android/OriginalSettings/SatelliteView;->mNoOfSat:I

    .line 379
    return-void
.end method

.method startGPS()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    .line 215
    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 216
    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 218
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 222
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 224
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mLongitude:D

    .line 225
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mLatitude:D

    .line 226
    sput-wide v2, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    .line 227
    sput v4, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    .line 228
    iput-wide v2, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/SatelliteView;->ttff:I

    .line 230
    sget v0, Lcom/android/OriginalSettings/SatelliteView;->mStartMode:I

    if-nez v0, :cond_0

    .line 233
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v6, extra:Landroid/os/Bundle;
    const-string v0, "ephemeris"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v0, "position"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "time"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "iono"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v0, "utc"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v0, "health"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v0, "svdir"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "svsteer"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "sadata"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "rti"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "celldb-info"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, v6}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 248
    .end local v6           #extra:Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/android/OriginalSettings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 249
    sput v7, Lcom/android/OriginalSettings/SatelliteView;->mStartMode:I

    .line 250
    return-void
.end method

.method stopGPS()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 253
    sput-wide v3, Lcom/android/OriginalSettings/SatelliteView;->mLongitude:D

    .line 254
    sput-wide v3, Lcom/android/OriginalSettings/SatelliteView;->mLatitude:D

    .line 255
    sput-wide v3, Lcom/android/OriginalSettings/SatelliteView;->mAltitude:D

    .line 256
    sput v6, Lcom/android/OriginalSettings/SatelliteView;->mBearing:F

    .line 257
    iput-wide v3, p0, Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D

    .line 258
    iput v5, p0, Lcom/android/OriginalSettings/SatelliteView;->ttff:I

    .line 260
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 261
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 262
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 264
    sput v5, Lcom/android/OriginalSettings/SatelliteView;->mStartMode:I

    .line 265
    iput-object v7, p0, Lcom/android/OriginalSettings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 266
    iput-object v7, p0, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 267
    sput v5, Lcom/android/OriginalSettings/SatelliteView;->mNoOfSat:I

    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 271
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->azimuth:[F

    aput v6, v1, v0

    .line 272
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->elevation:[F

    aput v6, v1, v0

    .line 273
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->snr:[F

    aput v6, v1, v0

    .line 275
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->a:[D

    aput-wide v3, v1, v0

    .line 276
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->b:[D

    aput-wide v3, v1, v0

    .line 277
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->px:[I

    aput v5, v1, v0

    .line 278
    sget-object v1, Lcom/android/OriginalSettings/SatelliteView;->py:[I

    aput v5, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method
