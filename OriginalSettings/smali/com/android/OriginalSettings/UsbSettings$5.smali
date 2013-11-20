.class Lcom/android/OriginalSettings/UsbSettings$5;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/UsbSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #getter for: Lcom/android/OriginalSettings/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/UsbSettings;->access$500(Lcom/android/OriginalSettings/UsbSettings;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings$5;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/OriginalSettings/UsbSettings;->switchDisplay(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/UsbSettings;->access$300(Lcom/android/OriginalSettings/UsbSettings;Z)V

    .line 163
    return-void
.end method
