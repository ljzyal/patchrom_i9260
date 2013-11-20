.class public final Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEnabalerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 229
    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    .line 79
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 82
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 83
    .local v1, manager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_0

    .line 85
    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 86
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 90
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 93
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 95
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 97
    return-void

    .line 88
    .end local v0           #EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private onSwitchChanged(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    packed-switch p1, :pswitch_data_0

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 226
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 212
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isBluetoothChecked()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->onSwitchChanged(Z)V

    .line 186
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090223

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 197
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 130
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BluetoothEnabler"

    const-string v2, "pause->IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setOnEnablerSwitchListener(Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/OriginalSettings/guide/OnInternalSwitcherListener;

    .line 238
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 144
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 149
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 150
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 152
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->onSwitchChanged(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    const/16 v0, 0xa

    .line 162
    .local v0, bluetoothState:I
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 163
    :cond_2
    const/16 v5, 0xc

    if-ne v0, v5, :cond_6

    move v2, v3

    .line 164
    .local v2, isOn:Z
    :goto_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_7

    move v1, v3

    .line 165
    .local v1, isOff:Z
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_8

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 175
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_6
    move v2, v4

    .line 163
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_7
    move v1, v4

    .line 164
    goto :goto_2

    .restart local v1       #isOff:Z
    :cond_8
    move v5, v4

    .line 166
    goto :goto_3
.end method
