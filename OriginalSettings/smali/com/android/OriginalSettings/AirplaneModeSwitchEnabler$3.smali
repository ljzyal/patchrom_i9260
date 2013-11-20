.class Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;

    iput-boolean p2, p0, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;->val$value:Z

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler$3;->val$value:Z

    #calls: Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;->access$200(Lcom/android/OriginalSettings/AirplaneModeSwitchEnabler;Z)V

    .line 182
    :cond_0
    return-void
.end method
