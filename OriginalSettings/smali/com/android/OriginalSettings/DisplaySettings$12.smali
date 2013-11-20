.class Lcom/android/OriginalSettings/DisplaySettings$12;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings$12;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings$12;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    #getter for: Lcom/android/OriginalSettings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/OriginalSettings/DisplaySettings;->access$700(Lcom/android/OriginalSettings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1276
    return-void
.end method
