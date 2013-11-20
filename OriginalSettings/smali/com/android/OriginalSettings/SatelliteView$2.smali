.class Lcom/android/OriginalSettings/SatelliteView$2;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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
    .line 382
    iput-object p1, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 384
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 386
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v4, v4, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    if-nez v4, :cond_1

    .line 387
    const-string v4, "---XIA"

    const-string v5, "guangyu onGpsStatusChanged GpsStatus.GPS_EVENT_FIRST_FIX error: mLm ==null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v4, v4, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 391
    .local v0, gs:Landroid/location/GpsStatus;
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v5

    #setter for: Lcom/android/OriginalSettings/SatelliteView;->ttff:I
    invoke-static {v4, v5}, Lcom/android/OriginalSettings/SatelliteView;->access$102(Lcom/android/OriginalSettings/SatelliteView;I)I

    goto :goto_0

    .line 393
    .end local v0           #gs:Landroid/location/GpsStatus;
    :cond_2
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 397
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v4, v4, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    if-nez v4, :cond_3

    .line 398
    const-string v4, "---XIA"

    const-string v5, "guangyu onGpsStatusChanged GpsStatus.GPS_EVENT_SATELLITE_STATUS error: mLm ==null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v4, v4, Lcom/android/OriginalSettings/SatelliteView;->mLm:Landroid/location/LocationManager;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 403
    .restart local v0       #gs:Landroid/location/GpsStatus;
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 405
    .local v1, list:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/android/OriginalSettings/SatelliteView;->sv_list_mask:I

    .line 407
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 409
    .local v3, sat:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v2

    .line 410
    .local v2, prn:I
    const-string v4, "GPS TEST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRN NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/16 v4, 0x20

    if-gt v2, v4, :cond_4

    .line 414
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v4, v4, Lcom/android/OriginalSettings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    add-int/lit8 v5, v2, -0x1

    aput-object v3, v4, v5

    .line 415
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget v5, v4, Lcom/android/OriginalSettings/SatelliteView;->sv_list_mask:I

    const/4 v6, 0x1

    add-int/lit8 v7, v2, -0x1

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/OriginalSettings/SatelliteView;->sv_list_mask:I

    goto :goto_1

    .line 417
    .end local v2           #prn:I
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_5
    const-string v4, "GPS TEST"

    const-string v5, "before showSVStatus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v4, p0, Lcom/android/OriginalSettings/SatelliteView$2;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    goto/16 :goto_0
.end method
