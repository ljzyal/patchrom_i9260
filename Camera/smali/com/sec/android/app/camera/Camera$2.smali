.class Lcom/sec/android/app/camera/Camera$2;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 696
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, action:Ljava/lang/String;
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$500(Lcom/sec/android/app/camera/Camera;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 699
    const-string v7, "Camera"

    const-string v8, "onReceive - camera is destroying"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 705
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 706
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 727
    :cond_3
    :goto_1
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 730
    :cond_4
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 731
    const/4 v3, 0x0

    .line 732
    .local v3, mIsSettingsMMC:Z
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 733
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 734
    const/4 v3, 0x1

    .line 740
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 741
    if-eqz v3, :cond_6

    .line 742
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 835
    .end local v3           #mIsSettingsMMC:Z
    :cond_6
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 836
    const/4 v4, 0x0

    .line 838
    .local v4, messageDisplayData:Ljava/lang/String;
    const-string v7, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 839
    const-string v7, "DisplayName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 841
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v4}, Lcom/sec/android/app/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 853
    .end local v4           #messageDisplayData:Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 854
    const-string v7, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "CAMERA_ON"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 855
    const-string v7, "Camera"

    const-string v8, "INTENT_MSG_DCMO"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 708
    :cond_8
    const-string v7, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 709
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 710
    .local v5, myExtras:Landroid/os/Bundle;
    const-string v7, "flash_led_disable"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 711
    .local v1, bLimit:Z
    if-eqz v1, :cond_3

    .line 712
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 713
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 714
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 715
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 717
    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const v8, 0x7f09017f

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 736
    .end local v1           #bLimit:Z
    .end local v5           #myExtras:Landroid/os/Bundle;
    .restart local v3       #mIsSettingsMMC:Z
    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$1100(Lcom/sec/android/app/camera/Camera;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 737
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto/16 :goto_2

    .line 743
    .end local v3           #mIsSettingsMMC:Z
    :cond_b
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 747
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    goto/16 :goto_3

    .line 748
    :cond_c
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 749
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 750
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    goto/16 :goto_3

    .line 751
    :cond_d
    const-string v7, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 752
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    goto/16 :goto_3

    .line 753
    :cond_e
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 754
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #calls: Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 755
    :cond_f
    const-string v7, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 757
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)I

    move-result v7

    sget v8, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v7, v8, :cond_10

    .line 758
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 759
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_3

    .line 762
    :cond_10
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-boolean v7, v7, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v7, :cond_6

    .line 763
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 764
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    #calls: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_3

    .line 768
    :cond_11
    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 769
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget v8, v8, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-gt v7, v8, :cond_15

    .line 771
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->battLevel:I
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$1300(Lcom/sec/android/app/camera/Camera;)I

    move-result v7

    sget v8, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v7, v8, :cond_13

    .line 772
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 773
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 774
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 776
    :cond_12
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->handleLowBattery(Z)V

    goto/16 :goto_3

    .line 779
    :cond_13
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 780
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 781
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 783
    :cond_14
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 785
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    #calls: Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/Camera;->access$1400(Lcom/sec/android/app/camera/Camera;Z)V

    goto/16 :goto_3

    .line 789
    :cond_15
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 790
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 792
    :cond_16
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 794
    :cond_17
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 795
    const-string v7, "Camera"

    const-string v8, "INTENT_MSG_SECURITY"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 807
    :cond_18
    const-string v7, "com.android.shoot.userchanged"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 808
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto/16 :goto_3

    .line 809
    :cond_19
    const-string v7, "com.android.shootshare.recvfile"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 810
    const-string v7, "filepath"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 812
    .local v2, filePath:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 813
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 814
    .local v6, timer:Ljava/util/Timer;
    new-instance v7, Lcom/sec/android/app/camera/Camera$2$1;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/camera/Camera$2$1;-><init>(Lcom/sec/android/app/camera/Camera$2;Ljava/lang/String;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 825
    .end local v2           #filePath:Ljava/lang/String;
    .end local v6           #timer:Ljava/util/Timer;
    :cond_1a
    const-string v7, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 826
    const-string v7, "Camera"

    const-string v8, "onReceive shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 829
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 830
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v7}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    goto/16 :goto_3

    .line 842
    .restart local v4       #messageDisplayData:Ljava/lang/String;
    :cond_1b
    const-string v7, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 843
    const-string v7, "DisplayName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9, v4}, Lcom/sec/android/app/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 846
    :cond_1c
    const-string v7, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 847
    const-string v7, "DisplayName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$2;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9, v4}, Lcom/sec/android/app/camera/Camera;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_4
.end method