.class public Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentAccount;
.super Landroid/preference/PreferenceFragment;
.source "RemoteControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fmm/RemoteControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentAccount"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 3

    .prologue
    .line 262
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 264
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentAccount;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 265
    .local v1, root:Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 268
    :cond_0
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentAccount;->addPreferencesFromResource(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentAccount;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 271
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentAccount;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 272
    .local v0, AccountRegist:Landroid/preference/PreferenceCategory;
    const v2, 0x7f090915

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 273
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    return-void
.end method
