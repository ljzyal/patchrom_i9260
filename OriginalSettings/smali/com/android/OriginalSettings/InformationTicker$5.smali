.class Lcom/android/OriginalSettings/InformationTicker$5;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/InformationTicker;->showNotiOfChargesDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/InformationTicker;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/InformationTicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/OriginalSettings/InformationTicker$5;->this$0:Lcom/android/OriginalSettings/InformationTicker;

    iput p2, p0, Lcom/android/OriginalSettings/InformationTicker$5;->val$value:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/OriginalSettings/InformationTicker$5;->this$0:Lcom/android/OriginalSettings/InformationTicker;

    iget v1, p0, Lcom/android/OriginalSettings/InformationTicker$5;->val$value:I

    #calls: Lcom/android/OriginalSettings/InformationTicker;->saveFBAutoRefreshRate(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/InformationTicker;->access$300(Lcom/android/OriginalSettings/InformationTicker;I)V

    .line 714
    return-void
.end method
