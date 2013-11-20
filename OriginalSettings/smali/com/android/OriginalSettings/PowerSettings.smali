.class public Lcom/android/OriginalSettings/PowerSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PowerSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutoPowerOff:Landroid/preference/ListPreference;

.field private mFastPowerOn:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

.field private mStartUp:Landroid/preference/ListPreference;

.field private mSwitchPowerSaving:Landroid/preference/SwitchPreference;

.field private myContext:Landroid/content/Context;

.field private valueCameraAutoStartKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-object v1, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/android/OriginalSettings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_power_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v4, 0x7f070046

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PowerSettings;->addPreferencesFromResource(I)V

    .line 63
    const-string v4, "power_saving_mode"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    .line 65
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    const-string v4, "PowerSettings"

    const-string v7, "mSwitchPowerSaving is null"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    new-instance v4, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    invoke-direct {v4, v7, v8}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    .line 69
    const-string v4, "auto_power_off"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    .line 70
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_power_off"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    new-array v2, v9, [Ljava/lang/String;

    .line 74
    .local v2, mStartUpEntries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090c69

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 75
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f09093d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 77
    new-array v3, v9, [Ljava/lang/String;

    .line 78
    .local v3, mStartUpValues:[Ljava/lang/String;
    const-string v4, "ON"

    aput-object v4, v3, v6

    .line 79
    const-string v4, "OFF"

    aput-object v4, v3, v5

    .line 82
    const-string v4, "start_up"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    .line 83
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 84
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.sec.factory"

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->myContext:Landroid/content/Context;

    .line 88
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->myContext:Landroid/content/Context;

    const-string v7, "di_test_prefs"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, mPrefs:Landroid/content/SharedPreferences;
    const-string v4, "camera_auto_start_key"

    const-string v7, "ON"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->valueCameraAutoStartKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1           #mPrefs:Landroid/content/SharedPreferences;
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/PowerSettings;->valueCameraAutoStartKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    const-string v4, "fast_power_on"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    .line 101
    iget-object v7, p0, Lcom/android/OriginalSettings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "fast_power_on"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 104
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ON"

    iput-object v4, p0, Lcom/android/OriginalSettings/PowerSettings;->valueCameraAutoStartKey:Ljava/lang/String;

    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v4, v6

    .line 101
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 118
    const-string v0, "PowerSettings"

    const-string v1, "called onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/PowerSettings;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 121
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 131
    iget-object v3, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 132
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 133
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_off"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-object v3, p0, Lcom/android/OriginalSettings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/android/OriginalSettings/PowerSettings;->updateState()V

    .line 148
    .end local v2           #value:I
    :cond_0
    :goto_0
    return v6

    .line 136
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    .line 137
    check-cast v2, Ljava/lang/String;

    .line 139
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.factory"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/PowerSettings;->myContext:Landroid/content/Context;

    .line 140
    iget-object v3, p0, Lcom/android/OriginalSettings/PowerSettings;->myContext:Landroid/content/Context;

    const-string v4, "di_test_prefs"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, mPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "camera_auto_start_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mPrefs:Landroid/content/SharedPreferences;
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/android/OriginalSettings/PowerSettings;->updateState()V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, key:Ljava/lang/String;
    const-string v1, "fast_power_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_power_on"

    iget-object v1, p0, Lcom/android/OriginalSettings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    const-string v1, "PowerSettings"

    const-string v2, "fast_power_on is saved"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 156
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 109
    const-string v0, "PowerSettings"

    const-string v1, "called onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/PowerSettings;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 111
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 112
    invoke-direct {p0}, Lcom/android/OriginalSettings/PowerSettings;->updateState()V

    .line 113
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 164
    const-string v0, "power_saving_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/PowerSettings;->mPowerSavingEnabler:Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 167
    :cond_0
    return-void
.end method
