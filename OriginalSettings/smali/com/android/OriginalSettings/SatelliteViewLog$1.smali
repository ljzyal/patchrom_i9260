.class Lcom/android/OriginalSettings/SatelliteViewLog$1;
.super Ljava/lang/Object;
.source "SatelliteViewLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SatelliteViewLog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SatelliteViewLog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SatelliteViewLog;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/OriginalSettings/SatelliteViewLog$1;->this$0:Lcom/android/OriginalSettings/SatelliteViewLog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/SatelliteViewLog$1;->this$0:Lcom/android/OriginalSettings/SatelliteViewLog;

    #calls: Lcom/android/OriginalSettings/SatelliteViewLog;->clearFile()V
    invoke-static {v0}, Lcom/android/OriginalSettings/SatelliteViewLog;->access$000(Lcom/android/OriginalSettings/SatelliteViewLog;)V

    .line 70
    return-void
.end method
