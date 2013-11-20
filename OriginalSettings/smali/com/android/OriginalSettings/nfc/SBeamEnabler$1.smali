.class Lcom/android/OriginalSettings/nfc/SBeamEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SBeamEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/nfc/SBeamEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/nfc/SBeamEnabler;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/nfc/SBeamEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/OriginalSettings/nfc/SBeamEnabler$1;->this$0:Lcom/android/OriginalSettings/nfc/SBeamEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeamEnabler$1;->this$0:Lcom/android/OriginalSettings/nfc/SBeamEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/OriginalSettings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v1, "com.android.OriginalSettings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/OriginalSettings/nfc/SBeamEnabler$1;->this$0:Lcom/android/OriginalSettings/nfc/SBeamEnabler;

    #calls: Lcom/android/OriginalSettings/nfc/SBeamEnabler;->changedSbeamState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/OriginalSettings/nfc/SBeamEnabler;->access$000(Lcom/android/OriginalSettings/nfc/SBeamEnabler;Landroid/content/Intent;)V

    goto :goto_0
.end method
