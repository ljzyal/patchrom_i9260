.class Lcom/android/OriginalSettings/SmartNetworkPreference$1;
.super Ljava/lang/Object;
.source "SmartNetworkPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SmartNetworkPreference;->showGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SmartNetworkPreference;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SmartNetworkPreference;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->this$0:Lcom/android/OriginalSettings/SmartNetworkPreference;

    iput-object p2, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->this$0:Lcom/android/OriginalSettings/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SmartNetworkPreference;->toggleValue(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->this$0:Lcom/android/OriginalSettings/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SmartNetworkPreference;->disableGuideDialog(Landroid/content/Context;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->this$0:Lcom/android/OriginalSettings/SmartNetworkPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/SmartNetworkPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 128
    return-void
.end method
