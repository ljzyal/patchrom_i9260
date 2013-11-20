.class Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;
.super Ljava/lang/Object;
.source "WifiOffloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    #calls: Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->disableHomePopup()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->access$000(Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;)V

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiOffloadDialog;->finish()V

    .line 113
    return-void
.end method
