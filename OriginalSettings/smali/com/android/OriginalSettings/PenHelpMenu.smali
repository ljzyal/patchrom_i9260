.class public Lcom/android/OriginalSettings/PenHelpMenu;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PenHelpMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpMenu;->addPreferencesFromResource(I)V

    .line 47
    :goto_0
    return-void

    .line 36
    :cond_0
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PenHelpMenu;->addPreferencesFromResource(I)V

    goto :goto_0
.end method
