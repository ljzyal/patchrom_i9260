.class Lcom/android/OriginalSettings/SecuritySettings$4;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 452
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 453
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "http://www.samsungdive.cn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    :goto_0
    const-string v1, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    #calls: Lcom/android/OriginalSettings/SecuritySettings;->isWifiConnected()Z
    invoke-static {v1}, Lcom/android/OriginalSettings/SecuritySettings;->access$000(Lcom/android/OriginalSettings/SecuritySettings;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 461
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 473
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 474
    :goto_2
    return v3

    .line 456
    :cond_2
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "http://www.samsungdive.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 462
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    #calls: Lcom/android/OriginalSettings/SecuritySettings;->isNetConnected()Z
    invoke-static {v1}, Lcom/android/OriginalSettings/SecuritySettings;->access$100(Lcom/android/OriginalSettings/SecuritySettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    #calls: Lcom/android/OriginalSettings/SecuritySettings;->isBrowserApnInternet()Z
    invoke-static {v1}, Lcom/android/OriginalSettings/SecuritySettings;->access$200(Lcom/android/OriginalSettings/SecuritySettings;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 466
    :cond_4
    const-string v1, "SecuritySettings"

    const-string v2, "SamsungDive cannot connect"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings$4;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    #calls: Lcom/android/OriginalSettings/SecuritySettings;->warnExchangeBrowserApn()V
    invoke-static {v1}, Lcom/android/OriginalSettings/SecuritySettings;->access$300(Lcom/android/OriginalSettings/SecuritySettings;)V

    goto :goto_2
.end method
