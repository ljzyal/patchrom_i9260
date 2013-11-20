.class Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive, Action : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 65
    const-string v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 66
    .local v12, state:I
    invoke-static {}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "WifiConnectionMonitorService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive WifiState = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 68
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->startSearch()V

    .line 156
    .end local v12           #state:I
    :cond_2
    :goto_0
    return-void

    .line 71
    :cond_3
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 72
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 73
    .local v6, info:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->startMonitor()V

    goto :goto_0

    .line 76
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    invoke-virtual {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    goto :goto_0

    .line 78
    .end local v6           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v14, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v14

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 82
    monitor-exit v14

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 85
    :cond_6
    :try_start_1
    const-string v13, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 86
    .local v8, network:Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_a

    .line 87
    const-string v13, "changeReason"

    const/4 v15, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 88
    .local v9, reason:I
    invoke-static {}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "WifiConnectionMonitorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, SSID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", status:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",  reason:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_7
    const/4 v13, 0x1

    if-ne v9, v13, :cond_9

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v15, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 106
    .end local v9           #reason:I
    :cond_8
    :goto_1
    monitor-exit v14

    goto/16 :goto_0

    .line 91
    .restart local v9       #reason:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v15, v8, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    iget v15, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v15}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_1

    .line 95
    .end local v9           #reason:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_b

    .line 97
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 99
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_c
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 100
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    iget v15, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v15}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 107
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #network:Landroid/net/wifi/WifiConfiguration;
    :cond_d
    const-string v13, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v14, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v14

    .line 110
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 111
    monitor-exit v14

    goto/16 :goto_0

    .line 133
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    .line 114
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    .line 115
    .local v11, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 116
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v11, :cond_f

    if-nez v3, :cond_10

    .line 117
    :cond_f
    monitor-exit v14

    goto/16 :goto_0

    .line 120
    :cond_10
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 121
    .local v10, result:Landroid/net/wifi/ScanResult;
    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    iget v13, v10, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)I

    move-result v15

    add-int/lit8 v15, v15, 0x5

    if-lt v13, v15, :cond_11

    .line 122
    invoke-static {}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "WifiConnectionMonitorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, SSID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", RSSI:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", threashold:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mThreshold:I
    invoke-static/range {v16 .. v16}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$200(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v15}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 125
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 126
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_13

    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_13

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    iget v15, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto/16 :goto_3

    .line 133
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v10           #result:Landroid/net/wifi/ScanResult;
    :cond_14
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 134
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v11           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_15
    const-string v13, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v14, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v14

    .line 136
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 137
    monitor-exit v14

    goto/16 :goto_0

    .line 154
    :catchall_2
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v13

    .line 139
    :cond_16
    :try_start_5
    const-string v13, "netId"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 140
    .local v7, netId:I
    invoke-static {}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$000()Z

    move-result v13

    if-eqz v13, :cond_17

    const-string v13, "WifiConnectionMonitorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, REMOVE_BLACKLIST netid : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->access$100(Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 143
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_18

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v13, v13, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 145
    monitor-exit v14

    goto/16 :goto_0

    .line 148
    :cond_18
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 149
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v13, v7, :cond_19

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService$1;->this$0:Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;

    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/OriginalSettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/OriginalSettings/wifi/WifiConnectionMonitorService;->removeBlackList(Ljava/lang/String;)V

    .line 151
    monitor-exit v14

    goto/16 :goto_0

    .line 154
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0
.end method
