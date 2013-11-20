.class Lcom/android/OriginalSettings/UsbSettings$8;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/UsbSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 264
    iput-object p1, p0, Lcom/android/OriginalSettings/UsbSettings$8;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/UsbSettings$8;->this$0:Lcom/android/OriginalSettings/UsbSettings;

    #calls: Lcom/android/OriginalSettings/UsbSettings;->setDefaultMode()V
    invoke-static {v0}, Lcom/android/OriginalSettings/UsbSettings;->access$700(Lcom/android/OriginalSettings/UsbSettings;)V

    .line 267
    return-void
.end method
