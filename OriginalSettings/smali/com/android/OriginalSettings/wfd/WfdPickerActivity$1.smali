.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadCast Received Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfd settings P2P changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v4, "wifi_p2p_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 231
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 232
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 233
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 235
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 236
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v4, v9}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 238
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdState:I
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 239
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4, v7}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    const-string v4, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 244
    const-string v4, "wfd_state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 245
    .local v3, wfdState:I
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wfd settings P2P changed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eq v3, v7, :cond_3

    if-nez v3, :cond_6

    .line 247
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 248
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 250
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 251
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v4, v9}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 254
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    .line 261
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    goto :goto_0

    .line 257
    :cond_6
    if-ne v3, v11, :cond_5

    goto :goto_1

    .line 262
    .end local v3           #wfdState:I
    :cond_7
    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 264
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 268
    const-string v4, "wifiP2pGroupInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 270
    .local v2, mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    const-string v4, "connectedDevAddress"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, devAddr:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 276
    const-string v4, "WfdPickerActivity"

    const-string v5, "WifiP2pService notifies p2p connection is failed !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4, v10}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 281
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 283
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 284
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v4, v9}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 286
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 287
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v5, 0xd

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v4, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1100(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    goto/16 :goto_0

    .line 290
    .end local v1           #devAddr:Ljava/lang/String;
    .end local v2           #mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_8
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 292
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    if-eq v4, v7, :cond_1

    .line 296
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 301
    :cond_9
    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 303
    const-string v4, "WfdPickerActivity"

    const-string v5, " onReceive << P2P_CONNECTION_ESTABLISHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4, v11}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 307
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 308
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1300(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v4, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 328
    :cond_a
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 334
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 335
    const-string v4, "WfdPickerActivity"

    const-string v5, "connection established in picker dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setResult(I)V

    .line 337
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 340
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$102(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 342
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 343
    invoke-static {}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$700()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 347
    :cond_c
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 350
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v4, v9}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 352
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 368
    :cond_d
    const-string v4, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const-string v5, "cause"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v4, v5}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1702(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)I

    .line 371
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 373
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 384
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no problem! picker is going on!!! << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curr state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 390
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 393
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v4

    if-nez v4, :cond_f

    .line 397
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v4

    if-eq v4, v10, :cond_e

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f

    .line 399
    :cond_e
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1900(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V

    .line 411
    :cond_f
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v4, v8}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1802(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_0

    .line 378
    :sswitch_0
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfdService request to finish picker! << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 406
    :cond_10
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad intent! WfdService didn\'t request to finish picker! << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v6}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
