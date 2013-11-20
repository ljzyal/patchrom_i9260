.class Lcom/android/OriginalSettings/SatelliteView$1;
.super Ljava/util/TimerTask;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SatelliteView;->init()V
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
    .line 199
    iput-object p1, p0, Lcom/android/OriginalSettings/SatelliteView$1;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView$1;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 205
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 206
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 207
    iget-object v1, p0, Lcom/android/OriginalSettings/SatelliteView$1;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v1, v1, Lcom/android/OriginalSettings/SatelliteView;->mHandler:Lcom/android/OriginalSettings/SatelliteView$setHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 208
    return-void
.end method
