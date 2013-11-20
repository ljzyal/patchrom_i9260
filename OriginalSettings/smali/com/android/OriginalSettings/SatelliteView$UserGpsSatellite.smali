.class public Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;
.super Ljava/lang/Object;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserGpsSatellite"
.end annotation


# instance fields
.field private mSV:I

.field private mSat:Landroid/location/GpsSatellite;


# direct methods
.method public constructor <init>(Landroid/location/GpsSatellite;I)V
    .locals 0
    .parameter "sat"
    .parameter "j"

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;->setSat(Landroid/location/GpsSatellite;)V

    .line 300
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;->setSV(I)V

    .line 301
    return-void
.end method


# virtual methods
.method public getSat()Landroid/location/GpsSatellite;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    return-object v0
.end method

.method public setSV(I)V
    .locals 0
    .parameter "mSV"

    .prologue
    .line 304
    iput p1, p0, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;->mSV:I

    .line 305
    return-void
.end method

.method public setSat(Landroid/location/GpsSatellite;)V
    .locals 0
    .parameter "mSat"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/OriginalSettings/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    .line 313
    return-void
.end method
