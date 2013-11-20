.class Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$2;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$2;->this$0:Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1084
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1085
    invoke-static {}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->access$900()Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    move-result-object v0

    invoke-static {}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1086
    return-void
.end method
