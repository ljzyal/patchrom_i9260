.class Lcom/android/OriginalSettings/SatelliteView$4;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 15
    .parameter "location"

    .prologue
    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 434
    .local v6, latitute:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 435
    .local v8, longitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 436
    .local v1, Altitute:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    .line 437
    .local v3, Bearing:F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 438
    .local v4, Speed:F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 439
    .local v0, Accuracy:F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    .line 441
    .local v10, time:J
    invoke-static {v8, v9}, Lcom/android/OriginalSettings/SatelliteView;->access$202(D)D

    .line 442
    invoke-static {v6, v7}, Lcom/android/OriginalSettings/SatelliteView;->access$302(D)D

    .line 443
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/SatelliteView;->access$402(D)D

    .line 444
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$502(F)F

    .line 445
    iget-object v12, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    float-to-double v13, v4

    #setter for: Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D
    invoke-static {v12, v13, v14}, Lcom/android/OriginalSettings/SatelliteView;->access$602(Lcom/android/OriginalSettings/SatelliteView;D)D

    .line 446
    iget-object v12, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #setter for: Lcom/android/OriginalSettings/SatelliteView;->mAccuracy:F
    invoke-static {v12, v0}, Lcom/android/OriginalSettings/SatelliteView;->access$702(Lcom/android/OriginalSettings/SatelliteView;F)F

    .line 447
    iget-object v12, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #setter for: Lcom/android/OriginalSettings/SatelliteView;->mTime:J
    invoke-static {v12, v10, v11}, Lcom/android/OriginalSettings/SatelliteView;->access$802(Lcom/android/OriginalSettings/SatelliteView;J)J

    .line 449
    new-instance v5, Ljava/util/Date;

    iget-object v12, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->mTime:J
    invoke-static {v12}, Lcom/android/OriginalSettings/SatelliteView;->access$800(Lcom/android/OriginalSettings/SatelliteView;)J

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 450
    .local v5, date:Ljava/util/Date;
    iget-object v12, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 452
    iget-object v12, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 453
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 457
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 461
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView$4;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 465
    return-void
.end method
