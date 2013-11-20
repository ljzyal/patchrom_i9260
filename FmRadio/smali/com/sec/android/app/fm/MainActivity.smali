.class public Lcom/sec/android/app/fm/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;
.implements Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
.implements Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/MainActivity$MyHandler;,
        Lcom/sec/android/app/fm/MainActivity$Callback;
    }
.end annotation


# static fields
.field public static BASE_FREQ:F

.field public static BASE_FREQ_PHILIPHINES:F

.field public static IS_BIGGER_THAN_MDPI:Z

.field public static MAXFREQ:F

.field public static MAX_CHANNEL:J

.field public static MAX_FREQ:F

.field public static MIN_CHANNEL:J

.field private static final RECORDING_VOLUME:I

.field public static _instance:Lcom/sec/android/app/fm/MainActivity;

.field static autoOffToast:Landroid/widget/Toast;

.field public static mEarphoneToast:Landroid/widget/Toast;

.field static toastTvout:Landroid/widget/Toast;

.field private static updateRTWithRTP:Z


# instance fields
.field private final DISPLAY_POWER_NONE:I

.field private final DISPLAY_POWER_OFF:I

.field private final DISPLAY_POWER_ON:I

.field private final INDEX_NEXT:I

.field private final INDEX_PLAY:I

.field private final INDEX_PREVIOUS:I

.field private final INDEX_STOP:I

.field private final INDEX_VOLUME_DOWN:I

.field private final INDEX_VOLUME_UP:I

.field private final NOTIFICATION_INFO:I

.field private RTPlus_album:Ljava/lang/String;

.field private RTPlus_perf:Ljava/lang/String;

.field SoundPathMenu:Landroid/view/Menu;

.field private checkMemFull:Z

.field count:I

.field firstScannedChannel:F

.field private img1DelIcon:Landroid/widget/ImageView;

.field private img2DelIcon:Landroid/widget/ImageView;

.field private img3DelIcon:Landroid/widget/ImageView;

.field private img4DelIcon:Landroid/widget/ImageView;

.field private img5DelIcon:Landroid/widget/ImageView;

.field private img6DelIcon:Landroid/widget/ImageView;

.field private isWarningckMemFull:Z

.field private layout1A:Landroid/view/ViewGroup;

.field private layout1B:Landroid/view/ViewGroup;

.field private mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field public mAudioManager:Landroid/media/AudioManager;

.field private mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

.field private mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

.field private mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/MainActivity$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackRunnable:Ljava/lang/Runnable;

.field private mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mChangeFreqEdit:Landroid/widget/EditText;

.field private mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

.field public mChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field mChannelSelectRunnable:Ljava/lang/Runnable;

.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mCurrentFadeVolume:I

.field public mCurrentFreq:F

.field public mCurrentchannel:J

.field private mDialAnimView:Landroid/widget/ImageView;

.field private mDialAnimation:Landroid/view/animation/AlphaAnimation;

.field private mDialerChannelChangeHandler:Landroid/os/Handler;

.field private mDisplayPower:I

.field private mDuringFirstAceess:Z

.field private mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mFavFeq:[F

.field private mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

.field private mFileName:Ljava/lang/String;

.field private mFileTitle:Ljava/lang/String;

.field private mFreqAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFreqDispView:Landroid/view/View;

.field public mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

.field private mFrqCover:Landroid/view/View;

.field private mFrqLayout:Landroid/view/View;

.field private mFrqNum2Dim:Landroid/widget/ImageView;

.field private mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

.field public mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

.field private mHiddenFileName:Ljava/lang/String;

.field private mHideBubble:Ljava/lang/Runnable;

.field private mInformationView:Landroid/view/View;

.field private mInitialAceess:Z

.field private mIsActive:Z

.field private mIsBargeInNotification:Z

.field private mIsBubbleRunable:Z

.field public mIsFadeVolume:Z

.field private mIsLastPlay:Z

.field private mIsOptionsMenuShowing:Z

.field private mIsPlaybackMode:Z

.field public mIsRecording:Z

.field private mIsRecordingPause:Z

.field private mIsRoundOn:Landroid/widget/ImageView;

.field public mIsShowCustomOptionMenu:Z

.field private mIsUpdateUI:Z

.field private mKeyListener:Landroid/view/View$OnKeyListener;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMenu:Landroid/view/Menu;

.field private mMenuView:Landroid/widget/ImageView;

.field private mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMyApps:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field mNextDown:Z

.field mNoChannelToast:Landroid/widget/Toast;

.field private mOrientation:I

.field private mPalmReceiver:Landroid/content/BroadcastReceiver;

.field private mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

.field public mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mPowerView:Landroid/widget/ImageView;

.field private mPrevButton:Landroid/widget/ImageButton;

.field mPrevDown:Z

.field public mProgressbarParent:Landroid/view/ViewGroup;

.field private mRDSChName:Ljava/lang/String;

.field private mRDSText:Ljava/lang/String;

.field private mRTPText:Ljava/lang/String;

.field private mRdsPanel:Landroid/widget/LinearLayout;

.field private mRecHour1:Landroid/widget/ImageView;

.field private mRecHour2:Landroid/widget/ImageView;

.field private mRecMin1:Landroid/widget/ImageView;

.field private mRecMin2:Landroid/widget/ImageView;

.field private mRecSec1:Landroid/widget/ImageView;

.field private mRecSec2:Landroid/widget/ImageView;

.field private mRecTime:Landroid/widget/LinearLayout;

.field private mRecordAfterOn:Z

.field private mRecordAniButton:Landroid/widget/ImageView;

.field private mRecordButton:Landroid/widget/ImageButton;

.field private mRecordCancelButton:Landroid/widget/ImageView;

.field private mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mRecordPauseResumeButton:Landroid/widget/ImageView;

.field private mRecordSaveDialog:Landroid/app/AlertDialog;

.field private mRecordStopButton:Landroid/widget/ImageView;

.field mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

.field private mRecording:Landroid/widget/LinearLayout;

.field private mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

.field private mReturnFadeVolume:I

.field private mSavedSelectedFreq:F

.field private mScanFinished:Z

.field private mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

.field private mSeconds:I

.field private mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field public mSeekBarParent:Landroid/view/ViewGroup;

.field private mSeekBarText:Landroid/widget/TextView;

.field private mSeeking:Landroid/widget/TextView;

.field private mSelFavFreq:[Ljava/lang/Object;

.field private mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

.field private mShowRecordSaveDialogOnResume:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTTSConfirmDialog:Landroid/app/AlertDialog;

.field private mTagsAvailable:Z

.field private mTagsButton:Landroid/widget/ImageButton;

.field private mToast:Landroid/widget/Toast;

.field public mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTxtRadioStatusChName:Landroid/widget/TextView;

.field private mTxtRadioStatusText:Landroid/widget/TextView;

.field private mVolumeBtn:Landroid/widget/ImageButton;

.field private mVolumeChangedFromRadio:Z

.field mVolumeRec:Landroid/content/BroadcastReceiver;

.field private mWillRemove:Z

.field private mWillRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/data/Channel;",
            ">;"
        }
    .end annotation
.end field

.field mWillTune:J

.field private mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

.field private mbtnAllChannel:Landroid/widget/Button;

.field private mbtnCanncel:Landroid/widget/Button;

.field private mbtnDone:Landroid/widget/Button;

.field private mbtnScan:Landroid/widget/Button;

.field onToast:Landroid/widget/Toast;

.field private recordToast:Landroid/widget/Toast;

.field private toast:Landroid/widget/Toast;

.field private toastAirplane:Landroid/widget/Toast;

.field private toastBatteryLow:Landroid/widget/Toast;

.field private toastError:Landroid/widget/Toast;

.field toastPlaying:Landroid/widget/Toast;

.field private txt1Freq:Landroid/widget/TextView;

.field private unableScanToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x42d8

    .line 462
    const/high16 v0, 0x42af

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 463
    const v0, 0x42b0999a

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    .line 488
    const-wide/16 v0, 0x2a30

    sput-wide v0, Lcom/sec/android/app/fm/MainActivity;->MAX_CHANNEL:J

    .line 489
    sput v2, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    .line 490
    sput v2, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    .line 506
    const-wide/16 v0, 0x222e

    sput-wide v0, Lcom/sec/android/app/fm/MainActivity;->MIN_CHANNEL:J

    .line 508
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    .line 544
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 1116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    .line 1992
    sget v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_RECORDINGVOLUME:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_RECORDINGVOLUME:I

    :goto_0
    sput v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    return-void

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 532
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    .line 545
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 546
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    .line 779
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    .line 780
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    .line 781
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    .line 782
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    .line 783
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    .line 784
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    .line 785
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    .line 786
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    .line 788
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 796
    new-array v0, v6, [Lcom/sec/android/app/fm/ui/FavoriteButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .line 802
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$1;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 807
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    .line 809
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    .line 810
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$2;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelSelectRunnable:Ljava/lang/Runnable;

    .line 843
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevDown:Z

    .line 844
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mNextDown:Z

    .line 846
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$3;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 915
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$4;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 929
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$5;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 955
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$6;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1109
    const-wide/16 v0, 0x222e

    iput-wide v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 1110
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 1111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialerChannelChangeHandler:Landroid/os/Handler;

    .line 1112
    new-array v0, v6, [F

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    .line 1113
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->SoundPathMenu:Landroid/view/Menu;

    .line 1122
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$7;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 1888
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$8;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    .line 1960
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 1962
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 1967
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordSaveDialog:Landroid/app/AlertDialog;

    .line 1968
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mShowRecordSaveDialogOnResume:Z

    .line 1972
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 1974
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 1982
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 1984
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    .line 1985
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    .line 2001
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    .line 2005
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$9;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    .line 2031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    .line 2038
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2039
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    .line 2040
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    .line 2041
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastError:Landroid/widget/Toast;

    .line 2042
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->toastPlaying:Landroid/widget/Toast;

    .line 2043
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    .line 4913
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    .line 4915
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 5268
    iput-boolean v4, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    .line 5269
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 6450
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->DISPLAY_POWER_NONE:I

    .line 6451
    iput v4, p0, Lcom/sec/android/app/fm/MainActivity;->DISPLAY_POWER_ON:I

    .line 6452
    iput v5, p0, Lcom/sec/android/app/fm/MainActivity;->DISPLAY_POWER_OFF:I

    .line 6652
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 6702
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    .line 6723
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 6842
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$40;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$40;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 6996
    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    .line 7026
    iput v3, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_NEXT:I

    .line 7027
    iput v4, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_PREVIOUS:I

    .line 7028
    iput v5, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_STOP:I

    .line 7029
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_PLAY:I

    .line 7030
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_VOLUME_UP:I

    .line 7031
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->INDEX_VOLUME_DOWN:I

    .line 7034
    const v0, 0x15e79

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->NOTIFICATION_INFO:I

    .line 7224
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$43;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$43;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->handleAFClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->handleEarPhoneClick()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordingPanelUI()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/fm/MainActivity;)[Lcom/sec/android/app/fm/ui/FavoriteButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/fm/MainActivity;FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/fm/MainActivity;->addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/fm/MainActivity;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->checkInitialAccess()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/fm/MainActivity;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/WorkerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/WorkerThread;)Lcom/sec/android/app/fm/WorkerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1A:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->layout1B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/fm/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/MainActivity;->toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->txt1Freq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/fm/MainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    return-void
.end method

.method static synthetic access$2800()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/fm/MainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/MainActivity;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/fm/MainActivity;->getNearestScanedFrequency(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideRecoder()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->startAllChannelActivity()V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->resumeFMRecording()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->pauseFMRecording()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/fm/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/sec/android/app/fm/MainActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/MainActivity;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/fm/MainActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshScanIcon()V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/android/app/fm/MainActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinished:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/app/fm/MainActivity;Lcom/sec/android/app/fm/data/Channel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/android/app/fm/MainActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/fm/MainActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/MainActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V

    return-void
.end method

.method static synthetic access$6000()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    return v0
.end method

.method static synthetic access$6002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    sput-boolean p0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FrequencyDisplayView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/android/app/fm/MainActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/FMAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/sec/android/app/fm/MainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    return-void
.end method

.method static synthetic access$7500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/data/Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/android/app/fm/MainActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    return v0
.end method

.method static synthetic access$7800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/android/app/fm/MainActivity;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/fm/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/fm/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mRTPText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V

    return-void
.end method

.method private addChannel(Lcom/sec/android/app/fm/data/Channel;)V
    .locals 4
    .parameter "channel"

    .prologue
    .line 2052
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 2053
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2055
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2056
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2057
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2058
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 2057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2061
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2063
    return-void

    .line 2061
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private addFavChannel(FLjava/lang/String;I)Lcom/sec/android/app/fm/data/Channel;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0010

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2066
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 2067
    sget p1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 2069
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 2071
    if-nez v0, :cond_1

    .line 2072
    new-instance v0, Lcom/sec/android/app/fm/data/Channel;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/fm/data/Channel;-><init>(FLjava/lang/String;)V

    .line 2073
    iput-boolean v5, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2074
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2075
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    .line 2098
    :goto_0
    return-object v0

    .line 2078
    :cond_1
    iget-boolean v1, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v1, :cond_4

    .line 2079
    iput-boolean v5, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 2081
    iget-object v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2082
    :cond_2
    iput-object p2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 2083
    :cond_3
    iput p3, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 2084
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    goto :goto_0

    .line 2089
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 2090
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 2097
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2098
    const/4 v0, 0x0

    goto :goto_0

    .line 2093
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 2094
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private cancelClicked()V
    .locals 1

    .prologue
    .line 2103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    .line 2105
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2106
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->invisibleDelIcons()V

    .line 2107
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 2108
    return-void
.end method

.method private cancelFMRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5958
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->releaseFMRecorder()V

    .line 5960
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setRecordMode(I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5965
    :goto_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 5974
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5976
    return-void

    .line 5961
    :catch_0
    move-exception v0

    .line 5962
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private changeVolume(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " changeVolume volumeAdjust = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2113
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2119
    return-void
.end method

.method private changeVolumeIcon()V
    .locals 3

    .prologue
    .line 2122
    const-string v0, "RNR"

    const-string v1, "changeVolumeIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 2126
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    .line 2128
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2141
    :goto_0
    return-void

    .line 2133
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v0

    .line 2138
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2139
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private checkInitialAccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2186
    const-string v0, "checkInitialAccess"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2187
    const-string v0, "test"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2191
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    .line 2192
    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->startScan(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2195
    const v0, 0x7f0a0040

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2197
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2204
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mInitialAceess:Z

    .line 2207
    :cond_1
    :try_start_1
    const-string v0, "test"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2209
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2217
    :cond_2
    :goto_1
    return-void

    .line 2199
    :catch_0
    move-exception v0

    .line 2201
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2202
    :catch_1
    move-exception v0

    goto :goto_0

    .line 2211
    :catch_2
    move-exception v0

    .line 2213
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 2214
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 591
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 595
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    :cond_1
    :goto_1
    const-string v0, "SettingsPreference"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autoonoff"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 603
    if-eqz v0, :cond_0

    .line 605
    invoke-static {v0, p1}, Lcom/sec/android/app/fm/MainActivity;->setOffAlarm(ILandroid/content/Context;)V

    goto :goto_0

    .line 596
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private createPalmFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 7178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7179
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7180
    return-object v0
.end method

.method private deleteRecordingHiddenFile()V
    .locals 3

    .prologue
    .line 4920
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4922
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4923
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4924
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4930
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 4926
    :catch_0
    move-exception v0

    .line 4927
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "deleteRecordingHiddenFile exception"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAvailableStorage(Z)Z
    .locals 11
    .parameter

    .prologue
    const-wide/32 v9, 0x100000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5283
    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    .line 5284
    const-string v1, "SettingsPreference"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5285
    const-string v2, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storageDirectory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5288
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 5289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stat = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5290
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v5, v1

    mul-long/2addr v3, v5

    .line 5291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avaliableSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " getAvailableBlocks = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " getBlockSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5292
    const-string v1, "LOW_STORAGE_THRESHOLD = 1048576"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5293
    if-eqz p1, :cond_2

    .line 5294
    const-wide/32 v1, 0x157800

    cmp-long v1, v3, v1

    if-gez v1, :cond_0

    .line 5295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    .line 5296
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 5297
    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 5302
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5332
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    :goto_2
    return v0

    .line 5299
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5300
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5327
    :catch_0
    move-exception v1

    .line 5329
    const-string v1, "getAvailableStorage - exception. return 0"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5305
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    if-nez v1, :cond_3

    const-wide/32 v1, 0x128870

    cmp-long v1, v3, v1

    if-gez v1, :cond_3

    .line 5306
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 5307
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_5

    .line 5308
    const v1, 0x7f0a00ce

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    sub-long v6, v3, v9

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getByte(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 5313
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5315
    :cond_3
    cmp-long v1, v3, v9

    if-gez v1, :cond_0

    .line 5317
    const-string v1, "getAvailableStorage - low"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5318
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_4

    .line 5320
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V

    .line 5323
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->checkMemFull:Z

    goto :goto_1

    .line 5310
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5311
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0a00ce

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v3, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/fm/MainActivity;->getByte(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public static getCurrentFreq(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 5559
    .line 5560
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    const-string v1, "88.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5561
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    .line 5568
    :goto_0
    const-string v1, "localpreference"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5572
    if-nez v1, :cond_1

    .line 5573
    const-string v1, "FMapp"

    const-string v2, "sharedPref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    :goto_1
    return v0

    .line 5563
    :cond_0
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    goto :goto_0

    .line 5577
    :cond_1
    const-string v2, "initialfreq"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_1
.end method

.method private getFavBtnIndex(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2341
    const/4 v0, 0x0

    .line 2342
    .local v0, pos:I
    packed-switch p1, :pswitch_data_0

    .line 2380
    :goto_0
    return v0

    .line 2344
    :pswitch_0
    const/4 v0, 0x0

    .line 2345
    goto :goto_0

    .line 2347
    :pswitch_1
    const/4 v0, 0x1

    .line 2348
    goto :goto_0

    .line 2350
    :pswitch_2
    const/4 v0, 0x2

    .line 2351
    goto :goto_0

    .line 2353
    :pswitch_3
    const/4 v0, 0x3

    .line 2354
    goto :goto_0

    .line 2356
    :pswitch_4
    const/4 v0, 0x4

    .line 2357
    goto :goto_0

    .line 2359
    :pswitch_5
    const/4 v0, 0x5

    .line 2360
    goto :goto_0

    .line 2362
    :pswitch_6
    const/4 v0, 0x6

    .line 2363
    goto :goto_0

    .line 2365
    :pswitch_7
    const/4 v0, 0x7

    .line 2366
    goto :goto_0

    .line 2368
    :pswitch_8
    const/16 v0, 0x8

    .line 2369
    goto :goto_0

    .line 2371
    :pswitch_9
    const/16 v0, 0x9

    .line 2372
    goto :goto_0

    .line 2374
    :pswitch_a
    const/16 v0, 0xa

    .line 2375
    goto :goto_0

    .line 2377
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_0

    .line 2342
    nop

    :pswitch_data_0
    .packed-switch 0x7f070059
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getFavFreq(Landroid/view/View;)[Ljava/lang/Object;
    .locals 7
    .parameter "parentView"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2414
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I

    move-result v0

    .line 2416
    .local v0, pos:I
    if-ltz v0, :cond_0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 2417
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2419
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    goto :goto_0
.end method

.method private getNearestScanedFrequency(J)J
    .locals 13
    .parameter "baseFreq"

    .prologue
    const-wide/16 v11, 0x0

    const/high16 v10, 0x447a

    .line 176
    const-wide/16 v2, 0x0

    .line 177
    .local v2, nearestFreq:J
    const-wide/16 v6, 0x0

    .line 178
    .local v6, tmpDiff:J
    const-wide/32 v4, 0xc350

    .line 181
    .local v4, smallestDiff:J
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 183
    .local v0, c:Lcom/sec/android/app/fm/data/Channel;
    iget v8, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    mul-float/2addr v8, v10

    float-to-long v8, v8

    sub-long v6, p1, v8

    .line 184
    cmp-long v8, v6, v11

    if-gez v8, :cond_1

    .line 185
    neg-long v6, v6

    .line 186
    :cond_1
    sub-long v8, v6, v4

    cmp-long v8, v8, v11

    if-gez v8, :cond_0

    .line 187
    move-wide v4, v6

    .line 188
    iget v8, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    mul-float/2addr v8, v10

    float-to-long v2, v8

    goto :goto_0

    .line 193
    .end local v0           #c:Lcom/sec/android/app/fm/data/Channel;
    :cond_2
    return-wide v2
.end method

.method private getRecordFileTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 5214
    const v0, 0x7f0a0018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5218
    const-string v8, "idx"

    .line 5220
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cast(replace(substr(_data, ?, 1000), \'.m4a\', \'\') as INTEGER) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    .line 5223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5225
    const-string v1, "_data like ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5229
    new-array v4, v11, [Ljava/lang/String;

    const-string v0, "%d"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 5232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC limit 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5234
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5238
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5240
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 5241
    if-lez v0, :cond_1

    .line 5242
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5243
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 5245
    :goto_0
    if-eqz v1, :cond_0

    .line 5246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5248
    :cond_0
    const-string v1, "%s %03d"

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v7, v2, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private handleAFClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2438
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2440
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "SettingsPreference"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "af"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2443
    if-nez v1, :cond_0

    .line 2445
    const-string v1, "af"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2446
    const-string v1, "[AF click ]AF on"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2451
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2452
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 2453
    return-void

    .line 2448
    :cond_0
    const-string v1, "af"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2449
    const-string v1, "[AF click ]AF off"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleEarPhoneClick()V
    .locals 6

    .prologue
    const v5, 0x7f0a00c3

    const v4, 0x7f0a00c2

    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 2456
    .line 2473
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2476
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2477
    const-string v0, "[speaker click ]speaker on"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2478
    const-string v0, "fm_radio_mute=1"

    .line 2479
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2481
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2486
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_3

    .line 2488
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    .line 2489
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 2494
    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 2497
    if-eqz v0, :cond_1

    .line 2499
    const-string v2, "fm_radio_mute=0"

    .line 2500
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2505
    :cond_1
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 2506
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 2510
    :goto_2
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2548
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 2550
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2551
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 2553
    :cond_2
    return-void

    .line 2482
    :catch_0
    move-exception v0

    .line 2483
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2492
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_1

    .line 2508
    :cond_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .line 2512
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2513
    const-string v0, "[speaker click ]speaker off"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2514
    const-string v0, "fm_radio_mute=1"

    .line 2515
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2517
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setSpeakerOn(Z)Z
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2522
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_7

    .line 2523
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    .line 2524
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 2528
    :goto_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 2530
    if-eqz v0, :cond_6

    .line 2532
    const-string v2, "fm_radio_mute=0"

    .line 2533
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2539
    :cond_6
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v2, :cond_8

    .line 2540
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 2544
    :goto_6
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 2518
    :catch_1
    move-exception v0

    .line 2519
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_4

    .line 2526
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_5

    .line 2542
    :cond_8
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_3
.end method

.method private hideBargeInNotification()V
    .locals 2

    .prologue
    .line 7100
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 7101
    .local v0, manager:Landroid/app/NotificationManager;
    const v1, 0x15e79

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBargeInNotification:Z

    .line 7105
    return-void
.end method

.method private hideRecoder()V
    .locals 5

    .prologue
    const/16 v4, 0xc9

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->setVisibility(I)V

    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2573
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2575
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2577
    iput v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    .line 2579
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    .line 2582
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 2583
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2587
    :cond_0
    return-void
.end method

.method private hideSeekbar()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 2591
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2593
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2594
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 2595
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2596
    return-void
.end method

.method private invisibleDelIcons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img1DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2631
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img2DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2632
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img3DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2633
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img4DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img5DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2635
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->img6DelIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2636
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showNormalSoftkeys()V

    .line 2637
    return-void
.end method

.method private isBiggerThanMDPI()Z
    .locals 9

    .prologue
    const/16 v8, 0x168

    const/16 v7, 0xf0

    const/4 v4, 0x0

    const/16 v6, 0x1e0

    const/16 v5, 0x140

    .line 3437
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3438
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 3439
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 3440
    .local v1, height:I
    if-ne v2, v7, :cond_0

    if-eq v1, v5, :cond_1

    :cond_0
    if-ne v2, v5, :cond_2

    if-ne v1, v7, :cond_2

    :cond_1
    move v3, v4

    .line 3447
    :goto_0
    return v3

    .line 3442
    :cond_2
    if-ne v2, v5, :cond_3

    if-eq v1, v6, :cond_4

    :cond_3
    if-ne v2, v6, :cond_5

    if-ne v1, v5, :cond_5

    :cond_4
    move v3, v4

    .line 3443
    goto :goto_0

    .line 3444
    :cond_5
    if-ne v2, v8, :cond_6

    if-eq v1, v6, :cond_7

    :cond_6
    if-ne v2, v6, :cond_8

    if-ne v1, v8, :cond_8

    :cond_7
    move v3, v4

    .line 3445
    goto :goto_0

    .line 3447
    :cond_8
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 7151
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7153
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 7154
    .local v1, mode:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 7155
    const/4 v2, 0x1

    .line 7158
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isOnCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 7121
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 7122
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 7123
    const/4 v1, 0x1

    .line 7132
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOnVoIP(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 7137
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 7139
    .local v1, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_0

    .line 7140
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 7141
    const/4 v2, 0x1

    .line 7147
    .end local v1           #voipCall:Landroid/os/IVoIPInterface;
    :goto_0
    return v2

    .line 7144
    :catch_0
    move-exception v0

    .line 7145
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7147
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUsedVoice(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a00c9

    const/4 v0, 0x0

    .line 7162
    invoke-static {p0}, Lcom/sec/android/app/fm/MainActivity;->isOnCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/fm/MainActivity;->isOnVoIP(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/fm/MainActivity;->isGoogleTalkVideoChatRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7165
    :cond_0
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 7166
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 7170
    :goto_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7171
    const/4 v0, 0x1

    .line 7174
    :cond_1
    return v0

    .line 7168
    :cond_2
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private myOnCreate()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/high16 v7, 0x42c8

    const v6, 0x7f0a0086

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 2654
    const-string v0, "  myOnCreate ----------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2656
    const-string v0, "  setContentView ------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v5, :cond_6

    .line 2661
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setContentView(I)V

    .line 2664
    :goto_0
    const-string v0, "  setContentView ------ end"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2665
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    .line 2666
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a0076

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2667
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setOnDegreeChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;)V

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2672
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->initFreqView()V

    .line 2675
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqLayout:Landroid/view/View;

    .line 2676
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_0

    .line 2678
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqNum2Dim:Landroid/widget/ImageView;

    .line 2679
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqNum2Dim:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2681
    :cond_0
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2685
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 2686
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setOnFrequencyChangeListener(Lcom/sec/android/app/fm/ui/FrequencyDisplayBar$OnFrequencyChangeListener;)V

    .line 2688
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    .line 2690
    :cond_1
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    .line 2691
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0074

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2694
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2695
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    .line 2696
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    .line 2697
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a008a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2698
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2700
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_2

    .line 2701
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 2702
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$11;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 2714
    :cond_2
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    .line 2715
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a008c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2716
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2718
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_3

    .line 2719
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 2720
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$12;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 2738
    :cond_3
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    .line 2739
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a008d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2740
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2741
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_4

    .line 2742
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 2743
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$13;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 2756
    :cond_4
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 2757
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0079

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2758
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2760
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2761
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2765
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2768
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    .line 2769
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0078

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2770
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2772
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2773
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2776
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2778
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    .line 2779
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2780
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    const v2, 0x7f0a0096

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2781
    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    .line 2783
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mInformationView:Landroid/view/View;

    .line 2786
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v1

    .line 2787
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v5

    .line 2788
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x2

    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2789
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v4

    .line 2790
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x4

    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2791
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x5

    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2792
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x6

    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2793
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/4 v3, 0x7

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2794
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0x8

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2795
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0x9

    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2796
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0xa

    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    .line 2797
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    const/16 v3, 0xb

    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteButton;

    aput-object v0, v2, v3

    move v0, v1

    .line 2799
    :goto_1
    const/16 v2, 0xc

    if-ge v0, v2, :cond_7

    .line 2800
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    .line 2801
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2802
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 2799
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2659
    :cond_6
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 2816
    :cond_7
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    .line 2817
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    .line 2819
    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    .line 2820
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecording:Landroid/widget/LinearLayout;

    .line 2821
    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecTime:Landroid/widget/LinearLayout;

    .line 2822
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour1:Landroid/widget/ImageView;

    .line 2823
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour2:Landroid/widget/ImageView;

    .line 2824
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin1:Landroid/widget/ImageView;

    .line 2825
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin2:Landroid/widget/ImageView;

    .line 2826
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec1:Landroid/widget/ImageView;

    .line 2827
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec2:Landroid/widget/ImageView;

    .line 2828
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    .line 2830
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    .line 2832
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    .line 2833
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0a0075

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2834
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2836
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_8

    .line 2837
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$14;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$14;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    .line 2858
    :cond_8
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 2859
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    .line 2860
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    .line 2861
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    .line 2862
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 2863
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontColor(I)V

    .line 2865
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    .line 2867
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 2869
    const-string v0, "myOnCreate ------ -mSeekBar.setMax "

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2870
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 2871
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2872
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 2873
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 2874
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 2876
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const v2, 0x7f020133

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(I)V

    .line 2877
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/high16 v2, 0x4294

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontSize(F)V

    .line 2879
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const v2, 0x7f080003

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleFontColor(I)V

    .line 2881
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, 0x7f0a0089

    invoke-virtual {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2883
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2885
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2886
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenuView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2888
    :cond_9
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPowerView:Landroid/widget/ImageView;

    .line 2890
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_a

    .line 2891
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    .line 2892
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2894
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 2895
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu()V

    .line 2899
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2900
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    .line 2901
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    .line 2902
    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 2904
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 2905
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    mul-float/2addr v1, v7

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 2910
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 2911
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v1, :cond_b

    .line 2912
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    .line 2913
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting initial freq - on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2940
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 2942
    const-string v0, "  myOnCreate ------ -End"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2943
    return-void

    .line 2920
    :cond_d
    :try_start_1
    sget-object v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DEFAULTCHANNEL:Ljava/lang/String;

    const-string v1, "88.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2921
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ_PHILIPHINES:F

    sput v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 2923
    :cond_e
    const-string v0, "localpreference"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "initialfreq"

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2926
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    .line 2927
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 2928
    :cond_f
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 2929
    mul-float v1, v0, v7

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    .line 2930
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->setFrequency(JZ)V

    .line 2931
    sget-boolean v1, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v1, :cond_10

    .line 2932
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-wide v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    .line 2933
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting initial freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2936
    :catch_0
    move-exception v0

    .line 2937
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private myOnResume()V
    .locals 6

    .prologue
    const/16 v3, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2946
    const-string v0, "  myOnResume -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 2947
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V

    .line 2948
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 2950
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->load()V

    .line 2951
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->resetFavLayout()V

    .line 2955
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2956
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2966
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 2967
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2968
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2970
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z

    .line 2976
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2977
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->resetRDS(F)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2983
    :cond_0
    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 2984
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsPlaybackMode:Z

    if-eqz v0, :cond_1

    .line 2986
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2987
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2988
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2996
    :cond_1
    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/fm/MainActivity;->mIsPlaybackMode:Z

    .line 2999
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_dialog"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3002
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mShowRecordSaveDialogOnResume:Z

    if-eqz v0, :cond_2

    .line 3003
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 3004
    iput-boolean v4, p0, Lcom/sec/android/app/fm/MainActivity;->mShowRecordSaveDialogOnResume:Z

    .line 3008
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->sendFMBackGroundPlayingStatus()V

    .line 3038
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.notification.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3044
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->updateRecordButton(Z)V

    .line 3048
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    .line 3051
    sget-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v0, :cond_6

    .line 3052
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "localpreference"

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rtplus"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3053
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3055
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3057
    if-eqz v0, :cond_3

    .line 3060
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3061
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsAvailable:Z

    .line 3067
    :cond_3
    :goto_3
    const-string v0, ""

    .line 3071
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isSeeking()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    .line 3076
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqCover:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3077
    const-string v0, "  myOnResume ------------------- end"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3078
    return-void

    .line 2958
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    :try_end_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 2959
    :catch_0
    move-exception v0

    .line 2960
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto/16 :goto_0

    .line 2979
    :catch_1
    move-exception v0

    .line 2980
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 2990
    :catch_2
    move-exception v0

    .line 2992
    :try_start_5
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 2993
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 3065
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTagsButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 3073
    :catch_4
    move-exception v1

    .line 3074
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_4
.end method

.method private pauseFMRecording()V
    .locals 2

    .prologue
    .line 5844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pauseFMRecording - Record Button mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5845
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 5846
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->pause()V

    .line 5847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    .line 5851
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5852
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5854
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 5855
    return-void
.end method

.method private refreshFavChannels(F)V
    .locals 10
    .parameter

    .prologue
    const/high16 v9, 0x4120

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 5388
    const-string v0, "refreshing Fav channels"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5390
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 5391
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 5392
    :goto_0
    if-ge v3, v4, :cond_5

    .line 5393
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 5394
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v1, :cond_1

    .line 5395
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5392
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 5401
    :cond_1
    iget v1, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    if-ltz v1, :cond_0

    .line 5403
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v1, v1, v5

    if-eqz v1, :cond_0

    .line 5406
    iget-boolean v1, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-ne v1, v8, :cond_4

    .line 5407
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    aput v6, v1, v5

    .line 5409
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v5, 0x32

    if-ne v1, v5, :cond_2

    .line 5411
    const-string v1, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    iget v7, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5418
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v6, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v5, v5, v6

    iget-object v6, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setStationFrequencyText(Ljava/lang/String;Ljava/lang/String;)V

    .line 5421
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v5, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_3

    .line 5422
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsPlay()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5431
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v0, v1, v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    goto :goto_1

    .line 5413
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFavFeq:[F

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget v1, v1, v5

    mul-float/2addr v1, v9

    float-to-long v5, v1

    .line 5414
    long-to-float v1, v5

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 5425
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v5, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setFreqTextColorAsNormal()V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 5428
    :catch_0
    move-exception v1

    .line 5429
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_3

    .line 5434
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    iget v0, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    aget-object v0, v1, v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    goto/16 :goto_1

    .line 5442
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->setPlayPauseImage()V

    .line 5443
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->noFavoritechannel()Z

    move-result v0

    .line 5444
    if-ne v0, v8, :cond_7

    .line 5445
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    array-length v3, v1

    move v0, v2

    :goto_4
    if-ge v0, v3, :cond_7

    aget-object v4, v1, v0

    .line 5446
    if-eqz v4, :cond_6

    .line 5447
    invoke-virtual {v4, v2}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 5445
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 5449
    :cond_7
    return-void
.end method

.method private refreshScanIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 7276
    const-string v0, "refresh Scan Icon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7277
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 7278
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7279
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020117

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7280
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7286
    :cond_0
    :goto_0
    return-void

    .line 7282
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020116

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7283
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private refreshVolumeIcon()V
    .locals 6

    .prologue
    const v5, 0x7f0200af

    const v4, 0x7f0200ae

    const/16 v3, 0xa

    const/high16 v2, 0x3f00

    .line 6609
    const-string v0, "refreshVolumeIcon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6610
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v0, :cond_1

    .line 6611
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6613
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 6614
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_3

    .line 6615
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 6616
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 6617
    if-nez v0, :cond_2

    .line 6618
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 6623
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 6624
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 6626
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6627
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 6649
    :cond_1
    :goto_1
    return-void

    .line 6620
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 6631
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 6632
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 6633
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 6634
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V

    goto :goto_1

    .line 6637
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 6638
    if-nez v0, :cond_5

    .line 6639
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 6643
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 6644
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 6645
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 6646
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V

    goto :goto_1

    .line 6641
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2
.end method

.method private registerBroadcastReceiverSDCard(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 6655
    if-eqz p1, :cond_1

    .line 6656
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6657
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6658
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6659
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6660
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6661
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6662
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6663
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 6665
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$37;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$37;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    .line 6693
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6700
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 6695
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 6696
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6697
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverSDCard:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastReceiverTurningOn(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 6704
    if-eqz p1, :cond_1

    .line 6705
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6706
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "action_turning_on"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6708
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$38;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$38;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    .line 6714
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6721
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 6716
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 6717
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6718
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverTurningOn:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerBroadcastScreen(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 6999
    if-eqz p1, :cond_1

    .line 7000
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7001
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 7002
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$41;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$41;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    .line 7013
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7020
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 7015
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 7016
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBroadcastReceiverScreen:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerForContextMenu()V
    .locals 4

    .prologue
    .line 5463
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .local v0, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 5464
    .local v1, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v1, :cond_0

    .line 5465
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 5463
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5467
    .end local v1           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_1
    return-void
.end method

.method private registerPalmReceiver()V
    .locals 2

    .prologue
    .line 7186
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 7187
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$42;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$42;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    .line 7201
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->createPalmFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7202
    return-void
.end method

.method private registerRestoreReceiver()V
    .locals 2

    .prologue
    .line 6725
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6726
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6728
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$39;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$39;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 6738
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6739
    return-void
.end method

.method private releaseFMRecorder()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x64

    const/16 v9, 0xc9

    const/16 v8, 0xca

    const/4 v7, 0x0

    .line 5979
    const-string v2, "fmradio_recoding=off"

    .line 5980
    .local v2, keyvalue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 5984
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v5, :cond_0

    .line 5985
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    .line 5986
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    .line 5987
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5988
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5998
    :cond_0
    :goto_0
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 6001
    .local v3, mStatusBar:Landroid/app/StatusBarManager;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6004
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 6008
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.fm.volume_unlock"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6009
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6010
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6011
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 6013
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6014
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    .line 6015
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    .line 6016
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 6017
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 6020
    iput-boolean v7, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    .line 6023
    new-instance v4, Landroid/content/Intent;

    const-string v5, "action_refresh_fmradio_setting"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6024
    .local v4, settingsActivityIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6027
    const-wide/16 v5, 0x64

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 6035
    :goto_2
    return-void

    .line 5991
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #mStatusBar:Landroid/app/StatusBarManager;
    .end local v4           #settingsActivityIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 5992
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "mRecorder : stop failed."

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6028
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #mStatusBar:Landroid/app/StatusBarManager;
    .restart local v4       #settingsActivityIntent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 6029
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6030
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 6033
    :cond_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 6002
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #settingsActivityIntent:Landroid/content/Intent;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method private removeChannel(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 5483
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5484
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5485
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5486
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5487
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 5486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5491
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method private resetFavLayout()V
    .locals 5

    .prologue
    .line 5494
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .local v0, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 5495
    .local v1, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v1, :cond_0

    .line 5496
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 5494
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5498
    .end local v1           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_1
    return-void
.end method

.method private resetRDS(F)V
    .locals 4
    .parameter "freq"

    .prologue
    .line 5502
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset RDS :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 5503
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5504
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRDSChName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5512
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5514
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5515
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V

    .line 5516
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5524
    :cond_0
    :goto_1
    return-void

    .line 5506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 5507
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_2

    .line 5508
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5521
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :catch_0
    move-exception v1

    .line 5522
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 5510
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private resumeFMRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[resumeFMRecording - Record Button mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5859
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_0

    .line 5860
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->resume()V

    .line 5861
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    .line 5865
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5867
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5868
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5869
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5871
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 5872
    return-void
.end method

.method private saveCurrentFreq()V
    .locals 2

    .prologue
    .line 5528
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq(Landroid/content/Context;F)V

    .line 5529
    return-void
.end method

.method public static saveCurrentFreq(Landroid/content/Context;F)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5535
    if-nez p0, :cond_1

    .line 5536
    const-string v0, "FMApp"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    :cond_0
    :goto_0
    return-void

    .line 5540
    :cond_1
    const-string v0, "localpreference"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5543
    if-nez v0, :cond_2

    .line 5544
    const-string v0, "FMapp"

    const-string v1, "sharedPref is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5548
    :cond_2
    const-string v1, "initialfreq"

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 5549
    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 5550
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5551
    const-string v1, "initialfreq"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 5552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private sendFMBackGroundPlayingStatus()V
    .locals 5

    .prologue
    .line 3080
    const-string v2, "SettingsPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "backgroudplaying"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3081
    .local v1, isFMBackGroundPlaying:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.backgroung.playing"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3082
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "isbackgroundplaying"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFMBackGroundPlayingStatus >> isFMBackGroundPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3085
    return-void
.end method

.method public static setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 613
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 615
    :cond_0
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "af"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 618
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AF enable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 619
    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->enableAF()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 626
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 627
    :catch_1
    move-exception v0

    goto :goto_0

    .line 622
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->disableAF()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static setOffAlarm(ILandroid/content/Context;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0a000d

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 633
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffAlarm val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 635
    if-ne p0, v4, :cond_1

    .line 636
    const/16 v0, 0xf

    .line 637
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 638
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 640
    :cond_0
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0a0047

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 642
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 667
    :goto_0
    mul-int/lit8 v0, v0, 0x3c

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 670
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/fm/AlarmReceiver;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 672
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 674
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 675
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-virtual {v0, v6, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 677
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set the alarm for :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 678
    return-void

    .line 643
    :cond_1
    if-ne p0, v6, :cond_3

    .line 644
    const/16 v0, 0x1e

    .line 645
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 646
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 648
    :cond_2
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    new-array v3, v4, [Ljava/lang/Object;

    const v4, 0x7f0a0048

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 650
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 651
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 652
    const/16 v0, 0x3c

    .line 653
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 654
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 656
    :cond_4
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v3, 0x7f0a000e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 657
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 658
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    .line 659
    const/16 v0, 0x78

    .line 660
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    if-nez v2, :cond_6

    .line 661
    invoke-static {p1, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    .line 663
    :cond_6
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    const v3, 0x7f0a000f

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f0a004a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 665
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->autoOffToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private setPauseResumeBtnImage(Z)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0086

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5875
    if-eqz p1, :cond_0

    .line 5876
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5877
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0a008b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5878
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5880
    const v0, 0x7f040006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5881
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecTime:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5889
    :goto_0
    return-void

    .line 5883
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5884
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0a008c

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5885
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordPauseResumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5887
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    goto :goto_0
.end method

.method private setPlayPauseImage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 5584
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5587
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5588
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPowerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5589
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 5590
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->updateDialPointState(Z)V

    .line 5597
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 5598
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->showPoint()V

    .line 5699
    :cond_0
    :goto_1
    return-void

    .line 5592
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5696
    :catch_0
    move-exception v0

    .line 5697
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 5607
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5608
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPowerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5609
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v0, :cond_3

    .line 5610
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5611
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqVisibility()V

    .line 5613
    :cond_3
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_9

    .line 5614
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->updateDialPointState(Z)V

    .line 5615
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    if-ne v0, v2, :cond_a

    .line 5616
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5617
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5618
    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 5619
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 5620
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 5622
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5623
    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5624
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 5625
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 5627
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5628
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 5630
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    .line 5631
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5632
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5633
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 5635
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5636
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5637
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5638
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 5640
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5641
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5643
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 5645
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5646
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 5649
    :cond_7
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$33;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$33;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5663
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5681
    :cond_8
    :goto_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    .line 5686
    :cond_9
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 5687
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5688
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->showPoint()V

    goto/16 :goto_1

    .line 5667
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5668
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 5670
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 5671
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 5673
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5674
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 5677
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    .line 5678
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5679
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "stationid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 692
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RDS enable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 693
    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->enableRDS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 706
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 707
    :catch_1
    move-exception v0

    goto :goto_0

    .line 700
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->disableRDS()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private setRadioStatusTextVisibility(I)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 6749
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6750
    if-nez p1, :cond_0

    .line 6751
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 6755
    :goto_0
    return-void

    .line 6753
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public static setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6957
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 6958
    :cond_0
    const-string v0, "FMApp"

    const-string v1, "audioManager or mPlayer is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6993
    :goto_0
    return-void

    .line 6962
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6966
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mono_audio_db"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6967
    if-nez v0, :cond_2

    .line 6969
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->setStereo()V

    .line 6970
    const-string v0, "FMApp"

    const-string v1, "setStereo() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6971
    :catch_0
    move-exception v0

    .line 6973
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 6977
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->setMono()V

    .line 6978
    const-string v0, "FMApp"

    const-string v1, "setMono() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6979
    :catch_1
    move-exception v0

    .line 6981
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 6986
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->setMono()V

    .line 6987
    const-string v0, "FMApp"

    const-string v1, "setMono() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 6988
    :catch_2
    move-exception v0

    .line 6990
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUpdateRTWithRTP(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1119
    sput-boolean p0, Lcom/sec/android/app/fm/MainActivity;->updateRTWithRTP:Z

    .line 1120
    return-void
.end method

.method private setVolume(I)V
    .locals 3
    .parameter

    .prologue
    .line 5702
    const-string v0, "RNR"

    const-string v1, " setVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5704
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    .line 5714
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5745
    :cond_0
    :goto_0
    return-void

    .line 5742
    :catch_0
    move-exception v0

    .line 5743
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private showBargeInNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7036
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicetalk_language"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7037
    const/4 v2, 0x0

    .line 7039
    const-string v1, ""

    .line 7040
    const-string v0, ""

    .line 7042
    if-eqz v3, :cond_0

    .line 7043
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 7045
    if-lez v4, :cond_0

    .line 7047
    const/16 v5, 0x2d

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 7048
    if-lez v5, :cond_0

    .line 7049
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7050
    add-int/lit8 v6, v5, 0x1

    if-ge v6, v4, :cond_0

    .line 7051
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7057
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 7058
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 7059
    if-eqz v4, :cond_3

    .line 7060
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7061
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7062
    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7063
    iput-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7064
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7066
    const v0, 0x7f060002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 7068
    iput-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7069
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 7072
    :goto_1
    if-nez v0, :cond_2

    .line 7073
    const v0, 0x7f060002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 7076
    :cond_2
    const v1, 0x7f0a00c7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v7

    aput-object v3, v2, v7

    aget-object v3, v0, v8

    aput-object v3, v2, v8

    aget-object v3, v0, v9

    aput-object v3, v2, v9

    aget-object v3, v0, v10

    aput-object v3, v2, v10

    aget-object v3, v0, v11

    aput-object v3, v2, v11

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-object v0, v0, v4

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7083
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 7084
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0200ed

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 7085
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 7087
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 7089
    const-string v4, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7091
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v4, v8, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 7092
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const v5, 0x7f0a0018

    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 7093
    const v1, 0x15e79

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 7095
    iput-boolean v8, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBargeInNotification:Z

    .line 7097
    return-void

    .line 7054
    :catch_0
    move-exception v3

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 5748
    const-string v0, "RNR"

    const-string v1, " showBubble"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5749
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 5750
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    add-int/lit8 v0, v0, -0x2f

    .line 5752
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 5753
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 5754
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 5756
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 5757
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBubbleRunable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5758
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5760
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBubbleRunable:Z

    .line 5761
    return-void
.end method

.method private showCustomOptionMenu(Landroid/view/View;)V
    .locals 2
    .parameter "anchor"

    .prologue
    .line 6568
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 6569
    .local v0, pm:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 6570
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 6571
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$35;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$35;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 6586
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$36;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$36;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 6595
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 6596
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->setIsShowCustomOptionMenu(Z)V

    .line 6597
    return-void
.end method

.method private showNormalSoftkeys()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 5764
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnAllChannel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5765
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnScan:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5766
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5767
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mbtnCanncel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 5768
    return-void
.end method

.method private showRecoder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5771
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFavScrollView:Lcom/sec/android/app/fm/ui/FavoriteScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FavoriteScrollView;->setVisibility(I)V

    .line 5772
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecording:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5773
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 5774
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 5775
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecordingPause:Z

    if-eqz v0, :cond_0

    .line 5777
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5778
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 5788
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->refreshVolumeIcon()V

    .line 5790
    return-void

    .line 5781
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5783
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5784
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBlinkAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5785
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAniButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startAllChannelActivity()V
    .locals 2

    .prologue
    .line 5818
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 5820
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 5823
    :cond_0
    return-void
.end method

.method private stopFMRecording()V
    .locals 5

    .prologue
    const v4, 0x7f0a00af

    const/4 v3, 0x0

    .line 5892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[stopFMRecording - Record Button mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5893
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-nez v0, :cond_1

    .line 5955
    :cond_0
    :goto_0
    return-void

    .line 5896
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->releaseFMRecorder()V

    .line 5898
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->setPauseResumeBtnImage(Z)V

    .line 5902
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->updateMediaStore()Z

    move-result v1

    .line 5905
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setRecordMode(I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5911
    :goto_1
    if-eqz v1, :cond_0

    .line 5918
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 5919
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    .line 5924
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5925
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5926
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 5927
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5906
    :catch_0
    move-exception v0

    .line 5907
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 5921
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 5922
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2
.end method

.method private stopSpeaking()V
    .locals 2

    .prologue
    .line 6039
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6041
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 6042
    const-string v1, "stop speaking.."

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6050
    :cond_0
    :goto_0
    return-void

    .line 6045
    :catch_0
    move-exception v0

    .line 6047
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6048
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private toggleParentLayout(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 6060
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6062
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6063
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6069
    :cond_0
    :goto_0
    return-void

    .line 6065
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private unregisterForContextMenu()V
    .locals 4

    .prologue
    .line 6120
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    .local v0, arr$:[Lcom/sec/android/app/fm/ui/FavoriteButton;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 6121
    .local v1, fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    if-eqz v1, :cond_0

    .line 6122
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterForContextMenu(Landroid/view/View;)V

    .line 6120
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6124
    .end local v1           #fav:Lcom/sec/android/app/fm/ui/FavoriteButton;
    :cond_1
    return-void
.end method

.method private unregisterPalmReceiver()V
    .locals 1

    .prologue
    .line 7205
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 7206
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPalmReceiver:Landroid/content/BroadcastReceiver;

    .line 7209
    :cond_0
    return-void
.end method

.method private unregisterRestoreReceiver()V
    .locals 1

    .prologue
    .line 6742
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 6743
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 6746
    :cond_0
    return-void
.end method

.method private updateRecordButton(Z)V
    .locals 3
    .parameter

    .prologue
    .line 6856
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6857
    if-eqz p1, :cond_0

    .line 6858
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6859
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6860
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6861
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6862
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 6863
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6886
    :goto_0
    return-void

    .line 6866
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6883
    :catch_0
    move-exception v0

    .line 6884
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 6871
    :cond_1
    if-eqz p1, :cond_2

    .line 6872
    :try_start_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6873
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6874
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6875
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6876
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 6877
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6880
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateRecordedTime()V
    .locals 6

    .prologue
    .line 5252
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    div-int/lit16 v0, v0, 0xe10

    .line 5253
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    rem-int/lit16 v1, v1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 5254
    iget v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    rem-int/lit8 v2, v2, 0x3c

    .line 5256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 5257
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 5260
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 5263
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mRecSec2:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5265
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->getAvailableStorage(Z)Z

    .line 5266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateRecordedTime seconds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minutes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " current time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5267
    return-void
.end method

.method private updateRecordingPanelUI()V
    .locals 3

    .prologue
    .line 5382
    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5383
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecMin2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5384
    const-string v0, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5385
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mRecHour2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 5386
    return-void
.end method

.method private updateTime([CLandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "charArray"
    .parameter "imgView1"
    .parameter "imgView2"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5336
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 5337
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    .line 5338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    .line 5344
    :goto_0
    return-void

    .line 5341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    .line 5342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/fm/MainActivity;->updateTimeResource(ILandroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private updateTimeResource(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5346
    packed-switch p1, :pswitch_data_0

    .line 5380
    :goto_0
    return-void

    .line 5348
    :pswitch_0
    const v0, 0x7f020081

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5351
    :pswitch_1
    const v0, 0x7f020082

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5354
    :pswitch_2
    const v0, 0x7f020083

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5357
    :pswitch_3
    const v0, 0x7f020084

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5360
    :pswitch_4
    const v0, 0x7f020085

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5363
    :pswitch_5
    const v0, 0x7f020086

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5366
    :pswitch_6
    const v0, 0x7f020087

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5369
    :pswitch_7
    const v0, 0x7f020088

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5372
    :pswitch_8
    const v0, 0x7f020089

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5375
    :pswitch_9
    const v0, 0x7f02008a

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private widgetRefresh()V
    .locals 1

    .prologue
    .line 3131
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh(Landroid/content/Context;)V

    .line 3132
    return-void
.end method

.method public static widgetRefresh(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 3135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm.widget.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3136
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3137
    return-void
.end method


# virtual methods
.method public GetFactoryRssi()I
    .locals 3

    .prologue
    .line 7251
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "SettingsPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "factoryrssi"

    const/16 v2, -0x46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetFactoryRssi :: rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7255
    return v0
.end method

.method public SetFactoryRssi(I)V
    .locals 2
    .parameter

    .prologue
    .line 7259
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 7262
    const-string v1, "factoryrssi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetFactoryRssi :: rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7265
    return-void
.end method

.method public checkBGPlayingSetting()V
    .locals 10

    .prologue
    .line 2149
    const/4 v5, 0x0

    .line 2150
    .local v5, runningTask:Ljava/lang/String;
    :try_start_0
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2151
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 2152
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 2153
    .local v4, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    .line 2154
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2155
    .local v3, info:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2156
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 2157
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2162
    .end local v1           #componentName:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    iget-boolean v6, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const-string v6, "SettingsPreference"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "backgroudplaying"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2166
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 2167
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    .line 2169
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2183
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :cond_2
    :goto_0
    return-void

    .line 2172
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v6}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/app/fm/MainActivity;->mIsLastPlay:Z

    if-nez v6, :cond_2

    .line 2173
    iget-object v6, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2178
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    :catch_0
    move-exception v2

    .line 2180
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2181
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method clearNonFavChannel()V
    .locals 3

    .prologue
    .line 2221
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2222
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2224
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v1, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-nez v1, :cond_0

    .line 2225
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->removeChannel(I)V

    .line 2222
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2228
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 2230
    return-void

    .line 2228
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 4907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dispatchTouchEvent onTouchEvent_ex action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 4909
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2238
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2240
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 2241
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 2242
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0062

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2244
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2295
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z

    .line 2297
    return-void

    .line 2245
    :cond_1
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2247
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 2248
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2249
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2250
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2251
    :cond_3
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 2253
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 2254
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    .line 2255
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2256
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastAirplane:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2258
    :cond_5
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 2260
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    if-nez v0, :cond_6

    .line 2261
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    .line 2263
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2264
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toastBatteryLow:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2267
    :cond_7
    instance-of v0, p1, Lcom/samsung/media/fmradio/FMPlayerException;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayerException;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2269
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_8

    .line 2270
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    .line 2271
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2272
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2277
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getByte(J)J
    .locals 5
    .parameter

    .prologue
    .line 7268
    const v0, 0x42f46666

    .line 7271
    const-wide/16 v1, 0x400

    div-long v1, p1, v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    long-to-float v1, v1

    div-float v0, v1, v0

    float-to-long v0, v0

    .line 7272
    return-wide v0
.end method

.method public getChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "freqMHz"

    .prologue
    .line 2306
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 2307
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2308
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2309
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    .line 2310
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 2314
    .end local v0           #i:I
    .end local v1           #size:I
    :goto_1
    return-object v2

    .line 2308
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2314
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCurrentChannel()F
    .locals 5

    .prologue
    const/high16 v2, -0x4080

    .line 2325
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2326
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-float v1, v3

    .line 2327
    .local v1, freq:F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    .line 2336
    .end local v1           #freq:F
    :cond_0
    :goto_0
    return v2

    .line 2329
    .restart local v1       #freq:F
    :cond_1
    const/high16 v2, 0x447a

    div-float v2, v1, v2

    goto :goto_0

    .line 2331
    .end local v1           #freq:F
    :catch_0
    move-exception v0

    .line 2333
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2334
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "freqMHz"

    .prologue
    .line 2391
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2392
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2393
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v2, :cond_0

    .line 2395
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 2398
    :goto_1
    return-object v2

    .line 2392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2398
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFavChannelOnindex(I)Lcom/sec/android/app/fm/data/Channel;
    .locals 3
    .parameter "index"

    .prologue
    .line 2402
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2403
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2404
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget v2, v2, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    iget-boolean v2, v2, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v2, :cond_0

    .line 2406
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/data/Channel;

    .line 2409
    :goto_1
    return-object v2

    .line 2403
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2409
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getIsShowCustomOptionMenu()Z
    .locals 1

    .prologue
    .line 6604
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsShowCustomOptionMenu:Z

    return v0
.end method

.method public hideVolumeBar()V
    .locals 6

    .prologue
    .line 2600
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v2, :cond_0

    .line 2601
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 2602
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2603
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2604
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 2609
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2610
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2611
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v2, :cond_1

    .line 2612
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$10;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2627
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    return-void

    .line 2622
    :catch_0
    move-exception v1

    .line 2624
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2625
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2645
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 2646
    return-void
.end method

.method public log(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2649
    if-nez p2, :cond_0

    .line 2650
    const-string v0, "FMApp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_0
    return-void
.end method

.method noFavoritechannel()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3087
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3088
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3089
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3090
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 3091
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    iget-boolean v4, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-ne v4, v3, :cond_1

    .line 3092
    const/4 v3, 0x0

    .line 3095
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_0
    return v3

    .line 3089
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method notifyToStatusBar()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3102
    const-string v0, "sending ON broadcast when we put the notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v1

    .line 3104
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v2

    .line 3105
    const-string v0, ""

    .line 3106
    if-eqz v2, :cond_0

    .line 3107
    iget-object v0, v2, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3108
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 3110
    const/high16 v2, -0x4080

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    .line 3111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3112
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3113
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_3

    .line 3117
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3121
    :goto_0
    const-string v0, " MHz"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 3128
    :cond_2
    :goto_1
    return-void

    .line 3119
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3125
    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public on()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 3146
    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0}, Lcom/sec/android/app/fm/MainActivity;->isUsedVoice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3184
    :goto_0
    return-void

    .line 3150
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v0

    .line 3151
    if-nez v0, :cond_1

    .line 3152
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3153
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, -0x1

    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3178
    :catch_0
    move-exception v0

    .line 3179
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3180
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    .line 3181
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 3182
    throw v0

    .line 3158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 3167
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got the volume from audiomanager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3170
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3173
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3174
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v0, p0}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 3175
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0009

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    .line 3193
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3194
    if-ne p1, v5, :cond_4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 3196
    const-string v0, "com.samsung.app.fm.radio.freq.renamed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3199
    const-string v1, "com.samsung.app.fm.radio.freq"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 3202
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 3204
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 3205
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 3207
    iput-object v0, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3209
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    iget v2, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3211
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3213
    :cond_0
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3214
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 3228
    :cond_1
    :goto_0
    return-void

    .line 3216
    :cond_2
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3220
    :cond_3
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3223
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 3225
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->activityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAndTune(FLandroid/view/View;I)V
    .locals 3
    .parameter "freqMHz"
    .parameter "imgView"
    .parameter "resId"

    .prologue
    .line 3239
    :try_start_0
    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 3240
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->unlock()V

    .line 3259
    :goto_0
    return-void

    .line 3245
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3246
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 3248
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/fm/MainActivity;->tune(FLandroid/view/View;I)V

    .line 3249
    iput p1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 3250
    const/high16 v1, 0x42c8

    mul-float/2addr v1, p1

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentchannel:J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3256
    :catch_0
    move-exception v0

    .line 3257
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 4840
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 4841
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    .line 4845
    :goto_0
    return-void

    .line 4843
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3269
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3271
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/fm/MainActivity;->mOrientation:I

    .line 3272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3274
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V

    .line 3275
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 3277
    if-eqz v1, :cond_8

    .line 3278
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 3282
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 3283
    const/4 v0, 0x1

    .line 3286
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V

    .line 3289
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3290
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 3294
    :cond_1
    if-eqz v1, :cond_6

    .line 3295
    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3299
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    .line 3300
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3301
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3303
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3304
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3306
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration  mRecorder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3307
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_3

    .line 3308
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showRecoder()V

    .line 3309
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordingPanelUI()V

    .line 3310
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3318
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIsShowCustomOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3319
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 3320
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showCustomOptionMenu(Landroid/view/View;)V

    .line 3323
    :cond_4
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 3328
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/WorkerThread;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3329
    :cond_5
    const-string v0, "WorkerThread died, new WorkerThread created"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3330
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    .line 3335
    :goto_3
    return-void

    .line 3297
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3312
    :catch_0
    move-exception v0

    .line 3314
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3315
    :catch_1
    move-exception v0

    goto :goto_2

    .line 3332
    :cond_7
    const-string v0, "WorkerThread alive"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 3343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3432
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_1
    return v4

    .line 3346
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3347
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_1

    move v4, v5

    .line 3348
    goto :goto_1

    .line 3350
    :cond_1
    const/4 v2, -0x1

    .line 3353
    .local v2, pos:I
    iget v2, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3354
    iput-boolean v7, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3355
    iput v8, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3356
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3357
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 3358
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mBtnFavorites:[Lcom/sec/android/app/fm/ui/FavoriteButton;

    aget-object v4, v4, v2

    invoke-virtual {v4, v7}, Lcom/sec/android/app/fm/ui/FavoriteButton;->setState(I)V

    .line 3361
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh()V

    goto :goto_0

    .line 3381
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v2           #pos:I
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3382
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_3

    move v4, v5

    .line 3383
    goto :goto_1

    .line 3384
    :cond_3
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v1

    .line 3385
    .local v1, newChannel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v1, :cond_4

    .line 3386
    new-instance v1, Lcom/sec/android/app/fm/data/Channel;

    .end local v1           #newChannel:Lcom/sec/android/app/fm/data/Channel;
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-direct {v1, v4}, Lcom/sec/android/app/fm/data/Channel;-><init>(F)V

    .line 3387
    .restart local v1       #newChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->addChannel(Lcom/sec/android/app/fm/data/Channel;)V

    .line 3389
    :cond_4
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    iput v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 3391
    const-string v4, ""

    iput-object v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3392
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3393
    .local v3, str:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3394
    iput-object v3, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 3395
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3396
    iput-boolean v5, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3398
    iput-boolean v7, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 3399
    iput v8, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 3401
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 3402
    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V

    .line 3404
    iget v4, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v6

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 3405
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3406
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 3410
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v1           #newChannel:Lcom/sec/android/app/fm/data/Channel;
    .end local v3           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3411
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    if-nez v0, :cond_6

    move v4, v5

    .line 3412
    goto/16 :goto_1

    .line 3415
    :cond_6
    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    .line 3423
    iput-boolean v5, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 3425
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 3343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3455
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3456
    const-string v0, "oncreate -------------------"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3457
    sput-object p0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    .line 3459
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mDuringFirstAceess:Z

    .line 3460
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->isBiggerThanMDPI()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    .line 3461
    const-string v0, "FMPlayer"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 3462
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mOrientation:I

    .line 3465
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_0

    .line 3466
    const-string v0, "FMRadio Service Is NULL. Exit FMRadio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3467
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->finish()V

    .line 3536
    :goto_0
    return-void

    .line 3471
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsPlaybackMode:Z

    .line 3472
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 3473
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3475
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test.mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3476
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "going into test mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3477
    invoke-static {}, Lcom/sec/android/app/fm/TestMode;->getInstance()Lcom/sec/android/app/fm/TestMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/TestMode;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 3481
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FMRadio getAction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3484
    if-eqz p1, :cond_2

    .line 3485
    const-string v0, "onCreate savedinstancestate"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3486
    const-string v0, "selected_freq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    .line 3489
    :cond_2
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/MainActivity$MyHandler;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    .line 3493
    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->requestWindowFeature(I)Z

    .line 3495
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnCreate()V

    .line 3496
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3498
    const-string v0, "setting the listner"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3500
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3507
    :goto_1
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    .line 3512
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.volume_unlock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3515
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 3516
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverTurningOn(Z)V

    .line 3517
    invoke-direct {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastScreen(Z)V

    .line 3518
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3519
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 3520
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    .line 3522
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->registerRestoreReceiver()V

    .line 3524
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "motion"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3526
    if-nez v0, :cond_3

    .line 3527
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 3501
    :catch_0
    move-exception v0

    .line 3502
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 3531
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3532
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3533
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/high16 v2, 0x42c8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3562
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavBtnIndex(I)I

    move-result v0

    .line 3563
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavChannelOnindex(I)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 3565
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-ne v0, v4, :cond_2

    .line 3566
    const v0, 0x7f0a00a6

    invoke-interface {p1, v5, v4, v4, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3570
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getFavChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3571
    const v0, 0x7f0a0028

    invoke-interface {p1, v5, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3573
    :cond_0
    const v0, 0x7f0a0025

    invoke-interface {p1, v5, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 3576
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/MainActivity;->getFavFreq(Landroid/view/View;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    .line 3577
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSelFavFreq:[Ljava/lang/Object;

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-long v0, v0

    .line 3579
    long-to-int v0, v0

    .line 3580
    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 3581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freq :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 3582
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1

    .line 3583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3587
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3591
    :goto_1
    return-void

    .line 3585
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 3589
    :cond_2
    invoke-interface {p1}, Landroid/view/ContextMenu;->close()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const v8, 0x7f0a0021

    const v7, 0x7f0a0020

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3625
    packed-switch p1, :pswitch_data_0

    .line 4188
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 3627
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    if-eqz v0, :cond_1

    .line 3654
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 3655
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 3656
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3657
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$15;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$15;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3666
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$16;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3677
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAlertDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto :goto_0

    .line 3691
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 3692
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 3693
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a0015

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3694
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$17;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$17;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3701
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanFinishedDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto :goto_0

    .line 3703
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0010

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/app/fm/MainActivity;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    .line 3708
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelAlreadyAddedDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3738
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 3739
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 3740
    new-instance v0, Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 3741
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030015

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    const v4, 0x7f0a0045

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0046

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3744
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3745
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setView(Landroid/view/View;)V

    .line 3746
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$18;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3777
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mScanSelectDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto/16 :goto_0

    .line 3779
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0043

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$19;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTTSConfirmDialog:Landroid/app/AlertDialog;

    .line 3803
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mTTSConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 3806
    :pswitch_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3807
    const v0, 0x7f070004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    .line 3810
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 3811
    new-instance v2, Lcom/sec/android/app/fm/MainActivity$20;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$20;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    aput-object v2, v0, v5

    .line 3848
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3931
    new-instance v0, Lcom/sec/android/app/fm/MainActivity$21;

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/fm/MainActivity$21;-><init>(Lcom/sec/android/app/fm/MainActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 3947
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/app/fm/MainActivity$22;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/MainActivity$22;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3958
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v2, 0x7f0a006d

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 3959
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setView(Landroid/view/View;)V

    .line 3962
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$23;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$23;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3973
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$24;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$24;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3995
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$25;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$25;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4000
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$26;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$26;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4006
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mChangeFreqDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto/16 :goto_0

    .line 4011
    :pswitch_7
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "save_dialog"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 4068
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a006f

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Sounds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$28;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$28;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$27;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$27;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordSaveDialog:Landroid/app/AlertDialog;

    .line 4083
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordSaveDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 4088
    :pswitch_8
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_0

    .line 4112
    new-instance v0, Lcom/sec/android/app/fm/ui/FMAlertDialog;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    .line 4113
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setTitle(I)V

    .line 4114
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4115
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$29;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$29;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4120
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    const/4 v1, -0x2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/fm/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/fm/MainActivity$30;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/MainActivity$30;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4125
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    goto/16 :goto_0

    .line 4130
    :pswitch_9
    new-instance v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$31;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$31;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    .line 4161
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    goto/16 :goto_0

    .line 4167
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/MotionDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4171
    :cond_2
    new-instance v0, Lcom/sec/android/app/fm/ui/MotionDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    .line 4173
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    new-instance v1, Lcom/sec/android/app/fm/MainActivity$32;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$32;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/MotionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4184
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionDialog:Lcom/sec/android/app/fm/ui/MotionDialog;

    goto/16 :goto_0

    .line 3625
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 4250
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 4251
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity;->mMenu:Landroid/view/Menu;

    .line 4252
    const/4 v0, 0x1

    return v0
.end method

.method public onDegreeChanged(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 4272
    long-to-float v0, p1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 4273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ onDegreeChanged  mCurrentFreq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 4274
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 4275
    sget v0, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 4278
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 4279
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setFrequency(JZ)V

    .line 4280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialerChannelChangeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelSelectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4281
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialerChannelChangeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelSelectRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4283
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 4285
    long-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 4290
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDegreeChanged mCurrentFreq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 4291
    return-void

    .line 4276
    :cond_2
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 4277
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_0

    .line 4287
    :cond_3
    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 4288
    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4299
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4300
    const-string v1, "onDestroy -----------"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4302
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    if-eqz v1, :cond_0

    .line 4303
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 4305
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4306
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->cancelScan()Z

    .line 4308
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq()V

    .line 4309
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_2

    .line 4310
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopFMRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4313
    :cond_2
    :try_start_1
    const-string v1, "we are removing the listner"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4314
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFMListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4318
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ChannelNameToSpeech;->destroy()V

    .line 4319
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/data/ChannelStore;->terminate()V

    .line 4320
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    if-eqz v1, :cond_3

    .line 4321
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWorkerThread:Lcom/sec/android/app/fm/WorkerThread;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/WorkerThread;->terminate()V

    .line 4322
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->stopSpeaking()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4325
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4329
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterForContextMenu()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 4337
    :goto_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverSDCard(Z)V

    .line 4338
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastReceiverTurningOn(Z)V

    .line 4339
    invoke-direct {p0, v3}, Lcom/sec/android/app/fm/MainActivity;->registerBroadcastScreen(Z)V

    .line 4340
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterRestoreReceiver()V

    .line 4341
    return-void

    .line 4315
    :catch_0
    move-exception v0

    .line 4316
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 4330
    .end local v0           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :catch_1
    move-exception v0

    .line 4333
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 4334
    :catch_2
    move-exception v1

    goto :goto_2

    .line 4326
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 4327
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string v1, "onDestroy mVolumeRec is not registered"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public onFreqChanged(J)V
    .locals 2
    .parameter

    .prologue
    .line 6431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ onFreqChanged  freq = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6434
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 6435
    sget v0, Lcom/sec/android/app/fm/MainActivity;->MAXFREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 6438
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_1

    .line 6439
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqBgView:Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayBar;->setFrequency(JZ)V

    .line 6441
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_3

    .line 6443
    long-to-float v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    .line 6448
    :goto_1
    return-void

    .line 6436
    :cond_2
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    sget v1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 6437
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_0

    .line 6445
    :cond_3
    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    long-to-int v0, v0

    .line 6446
    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFreq:F

    goto :goto_1
.end method

.method public onFrequencyChanged(J)V
    .locals 10
    .parameter "frequency"

    .prologue
    const-wide/16 v8, 0x14d

    const/high16 v7, 0x3f80

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6459
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFrequency(J)V

    .line 6461
    sget-boolean v3, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v3, :cond_6

    .line 6462
    iget v3, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    if-eq v3, v6, :cond_4

    .line 6463
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6464
    .local v0, displayAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6465
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6466
    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6468
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6469
    .local v2, freqAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6470
    const-wide/16 v3, 0xa7

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 6471
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6472
    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6474
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6475
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 6478
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6479
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    .line 6480
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6486
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6487
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 6489
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6490
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6492
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6493
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->clearAnimation()V

    .line 6495
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6496
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6509
    .end local v0           #displayAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v2           #freqAnimation:Landroid/view/animation/AlphaAnimation;
    :goto_1
    iput v6, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    .line 6513
    :goto_2
    return-void

    .line 6482
    .restart local v0       #displayAnimation:Landroid/view/animation/AlphaAnimation;
    .restart local v2       #freqAnimation:Landroid/view/animation/AlphaAnimation;
    :catch_0
    move-exception v1

    .line 6484
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_0

    .line 6499
    .end local v0           #displayAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    .end local v2           #freqAnimation:Landroid/view/animation/AlphaAnimation;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v3}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6500
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6506
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqDispView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6507
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6502
    :catch_1
    move-exception v1

    .line 6504
    .restart local v1       #e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    goto :goto_3

    .line 6511
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 6548
    sparse-switch p2, :sswitch_data_0

    .line 6565
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 6552
    :sswitch_1
    div-int/lit16 v0, p3, 0x3e8

    .line 6553
    .local v0, seconds:I
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    if-eq v1, v0, :cond_0

    .line 6554
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    .line 6555
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V

    goto :goto_0

    .line 6548
    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x321 -> :sswitch_0
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x19

    const/16 v5, 0xa

    const/16 v3, 0x18

    const/4 v1, 0x1

    .line 4345
    const/4 v2, 0x4

    if-ne v2, p1, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mWillRemove:Z

    if-eqz v2, :cond_1

    .line 4348
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelClicked()V

    .line 4416
    :cond_0
    :goto_0
    return v1

    .line 4353
    :cond_1
    if-eq v4, p1, :cond_2

    if-ne v3, p1, :cond_3

    .line 4355
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4361
    :cond_3
    if-eq v3, p1, :cond_4

    if-ne v4, p1, :cond_8

    .line 4364
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 4366
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_6

    .line 4368
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    if-nez v2, :cond_5

    .line 4371
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    sget v3, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 4376
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_0

    .line 4385
    :cond_6
    if-ne v3, p1, :cond_7

    .line 4386
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->changeVolume(I)V

    .line 4390
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 4391
    .local v0, currentVolume:I
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 4392
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_0

    .line 4388
    .end local v0           #currentVolume:I
    :cond_7
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->changeVolume(I)V

    goto :goto_1

    .line 4416
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4421
    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 4422
    :cond_0
    const/4 v0, 0x1

    .line 4423
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 7245
    const-string v0, "onMenuOpened is called"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 7246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    .line 7247
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4589
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 4590
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4632
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    .line 4633
    return v2

    .line 4591
    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 4592
    const-string v0, "MENU_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4593
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 4594
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4595
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4596
    const-string v0, "[onClick all channel]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4597
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 4598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/AllChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4600
    :cond_3
    if-ne v0, v4, :cond_7

    .line 4601
    const-string v0, "[onClick scan]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4603
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4604
    const v0, 0x7f0a0008

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4611
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_6

    .line 4612
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 4613
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    .line 4615
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 4616
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->unableScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4608
    :catch_0
    move-exception v0

    .line 4609
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_1

    .line 4618
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto :goto_0

    .line 4620
    :cond_7
    if-nez v0, :cond_8

    .line 4621
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4622
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 4623
    :cond_8
    if-ne v0, v2, :cond_9

    .line 4624
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4625
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4627
    :cond_9
    if-ne v0, v5, :cond_0

    .line 4628
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 4629
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4630
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 4258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsOptionsMenuShowing:Z

    .line 4259
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 4260
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 4267
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 4268
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 4643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    .line 4646
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 4647
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 4648
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 4649
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V

    .line 4651
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterPalmReceiver()V

    .line 4652
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->unregisterMotionListener()V

    .line 4653
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2f

    const/4 v5, 0x0

    .line 4216
    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 4217
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4219
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordCancelDialog:Lcom/sec/android/app/fm/ui/FMAlertDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FMAlertDialog;->cancel()V

    .line 4222
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4223
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4224
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 4225
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4226
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4227
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move-object v0, p2

    .line 4233
    check-cast v0, Landroid/app/AlertDialog;

    .line 4234
    const v2, 0x7f0a006f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/Sounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/fm/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4244
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 4245
    return-void

    .line 4230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Sounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4239
    :cond_3
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 4240
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setChannel(Lcom/sec/android/app/fm/data/Channel;)Lcom/sec/android/app/fm/ui/RenameDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 4657
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4658
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 4659
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 4695
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4696
    const v0, 0x7f0a0065

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4716
    :goto_0
    const/4 v0, 0x2

    const v1, 0x7f0a001f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4718
    const v0, 0x7f0a001b

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020117

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4720
    const v0, 0x7f0a00b0

    invoke-interface {p1, v2, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020113

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4722
    const v0, 0x7f0a001e

    invoke-interface {p1, v2, v6, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020119

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4725
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4726
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020117

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4727
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4732
    :goto_1
    return v4

    .line 4699
    :cond_0
    const v0, 0x7f0a0066

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 4729
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020116

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4730
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 4742
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4745
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4751
    :goto_0
    const-string v2, "RNR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Set volume inoking progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fromTouch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPlaying = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    iget-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 4758
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 4759
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 4761
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 4762
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4764
    sget v0, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 4765
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 4766
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 4793
    :cond_1
    :goto_1
    return-void

    .line 4746
    :catch_0
    move-exception v0

    .line 4748
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 4749
    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 4770
    :cond_2
    if-nez p3, :cond_3

    if-nez p3, :cond_6

    if-eqz v0, :cond_6

    .line 4771
    :cond_3
    const-string v0, "RNR"

    const-string v2, " keypressed not true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4774
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4775
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/fm/MainActivity;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 4777
    :cond_4
    const-string v0, "RNR"

    const-string v2, " Set volume inoking"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_5

    .line 4781
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarText:Landroid/widget/TextView;

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4782
    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 4784
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 4787
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 4790
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4791
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->showVolumeBar()V

    goto :goto_1
.end method

.method public onResults([Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 6758
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 6761
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v1

    .line 6762
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resultValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6764
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 6765
    packed-switch v1, :pswitch_data_0

    .line 6840
    :cond_0
    :goto_0
    return-void

    .line 6767
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 6770
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 6774
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6775
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6779
    :catch_0
    move-exception v0

    .line 6781
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 6782
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z

    goto :goto_0

    .line 6787
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6788
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6792
    :catch_1
    move-exception v0

    .line 6794
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    .line 6795
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayPauseButton:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->performClick()Z

    goto :goto_0

    .line 6799
    :pswitch_4
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 6802
    :pswitch_5
    const/16 v0, 0x19

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/fm/MainActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 6765
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 4803
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 4804
    const-string v1, "onResume -------------------"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4808
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v1, :cond_2

    .line 4809
    sget v1, Lcom/sec/android/app/fm/MainActivity;->RECORDING_VOLUME:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->setVolume(I)V

    .line 4825
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    .line 4827
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->myOnResume()V

    .line 4828
    sget-boolean v1, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v1, :cond_1

    .line 4829
    invoke-static {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->setActiveContext(Landroid/content/Context;)V

    .line 4831
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->registerPalmReceiver()V

    .line 4832
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->registerMotionListener()V

    .line 4833
    const-string v1, "onResume ------------------- end"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4834
    return-void

    .line 4813
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4815
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideRecoder()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4816
    :catch_0
    move-exception v0

    .line 4817
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "hideRecoder() is called, but view is null"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 3541
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3542
    const-string v1, "onSaveInstanceState"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 3543
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3544
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    const/high16 v2, -0x4080

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3545
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;

    iget v1, v1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    :goto_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 3546
    .local v0, freq:Ljava/lang/Float;
    const-string v1, "selected_freq"

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 3549
    .end local v0           #freq:Ljava/lang/Float;
    :cond_1
    return-void

    .line 3545
    :cond_2
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 2
    .parameter

    .prologue
    .line 4853
    const-string v0, "RNR"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4854
    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/fm/MainActivity;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 4855
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 4856
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4864
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 4865
    const-string v1, "onStop -------------------"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4867
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->checkBGPlayingSetting()V

    .line 4868
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4875
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->widgetRefresh()V

    .line 4877
    iget-boolean v1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsBargeInNotification:Z

    if-eqz v1, :cond_0

    .line 4878
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideBargeInNotification()V

    .line 4881
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mMyApps:Z

    .line 4883
    iput-boolean v2, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeChangedFromRadio:Z

    .line 4885
    return-void

    .line 4869
    :catch_0
    move-exception v0

    .line 4871
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4873
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0

    .line 4872
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 4891
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 4894
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    .line 4895
    return-void
.end method

.method public onTouchDial(I)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x3f00

    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    const-wide/16 v3, 0xc8

    const/4 v2, 0x1

    .line 6382
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 6384
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    if-nez v0, :cond_1

    .line 6426
    :cond_0
    :goto_0
    return-void

    .line 6387
    :cond_1
    if-ne p1, v2, :cond_4

    .line 6388
    const-string v0, "MotionEvent.ACTION_UP"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6389
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6390
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6392
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    .line 6393
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6394
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6395
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6397
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6398
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 6400
    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    .line 6401
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6402
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6403
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6404
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6405
    :cond_4
    if-nez p1, :cond_0

    .line 6406
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6407
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6408
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6410
    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    .line 6411
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6412
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6413
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6415
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 6416
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->clearAnimation()V

    .line 6418
    :cond_6
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    .line 6419
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6420
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 6421
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6422
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6423
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mFreqAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 4898
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4899
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->hideVolumeBar()V

    .line 4901
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onTouchEvent action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 4903
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchPower(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 6518
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-eqz v0, :cond_0

    .line 6519
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRoundOn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFrqView:Lcom/sec/android/app/fm/ui/FrequencyDisplayView;

    if-nez v0, :cond_1

    .line 6543
    :cond_0
    :goto_0
    return-void

    .line 6522
    :cond_1
    if-ne p1, v1, :cond_2

    .line 6523
    const-string v0, "MotionEvent.ACTION_UP"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6524
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6525
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6526
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 6527
    if-eqz v0, :cond_0

    .line 6528
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 6532
    :cond_2
    if-nez p1, :cond_0

    .line 6533
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6534
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6535
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6536
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mDialAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 6537
    if-eqz v0, :cond_0

    .line 6538
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 7111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 7112
    if-eqz p1, :cond_0

    .line 7113
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7114
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 7117
    :cond_0
    return-void
.end method

.method public radioStatusHideAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 6351
    iget v1, p0, Lcom/sec/android/app/fm/MainActivity;->mDisplayPower:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6352
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 6353
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 6354
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 6355
    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 6356
    new-instance v1, Lcom/sec/android/app/fm/MainActivity$34;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/MainActivity$34;-><init>(Lcom/sec/android/app/fm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6367
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6368
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 6371
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRadioStatusTextVisibility(I)V

    .line 6372
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6374
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_1
    return-void
.end method

.method recordFMRadioAudio()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4934
    const-string v0, "[recordFMRadioAudio - Record Button onClick]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 4936
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/MainActivity;->getAvailableStorage(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5211
    :goto_0
    return-void

    .line 4943
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4945
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->toastOn()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5209
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4959
    :cond_1
    :try_start_1
    const-string v0, "fm_radio_mute=1"

    .line 4960
    const-string v0, "fm_radio_mute=0"

    .line 4964
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setRecordMode(I)V

    .line 4965
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->stopBargeIn()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4967
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4973
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_2

    .line 4974
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 4975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 4977
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    .line 4978
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 4981
    new-instance v0, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5010
    const-string v0, "SettingsPreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5011
    const-string v1, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5013
    const-string v1, "mounted"

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5018
    :goto_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5019
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5020
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5021
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fmradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    .line 5022
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5025
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    .line 5026
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    .line 5027
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 5029
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const v1, 0x1f400

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    .line 5035
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    .line 5045
    const-string v0, "[recordFMRadioAudio] SamplingRate : 44100"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5046
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const v1, 0xac44

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    .line 5048
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    .line 5049
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    .line 5050
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const-wide/16 v1, 0x300

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    .line 5051
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAuthor(I)V

    .line 5053
    sget-boolean v0, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v0, :cond_7

    .line 5054
    invoke-static {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v0

    .line 5055
    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;

    move-result-object v0

    .line 5057
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    .line 5058
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    .line 5062
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5063
    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    .line 5064
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RTPTagList;->getTagWithCode(I)Lcom/sec/android/app/fm/ui/RTPTag;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5065
    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTag;->getInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    .line 5067
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5070
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 5071
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setPerformer(Ljava/lang/String;)V

    .line 5072
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 5073
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAlbum(Ljava/lang/String;)V

    .line 5075
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    .line 5076
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    .line 5077
    const-string v0, "[recordFMRadioAudio - Record Button starting.... ]"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 5082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5083
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    .line 5084
    iget v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCurrentFadeVolume:I

    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mReturnFadeVolume:I

    .line 5085
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 5087
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->changeVolumeIcon()V

    .line 5088
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 5093
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5096
    const/high16 v1, 0x4

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5099
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 5102
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V

    .line 5112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    .line 5113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->isWarningckMemFull:Z

    .line 5114
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showRecoder()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5203
    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeconds:I

    .line 5204
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->updateRecordedTime()V

    .line 5206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecordAfterOn:Z
    :try_end_6
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 4968
    :catch_1
    move-exception v0

    .line 4970
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 5115
    :catch_2
    move-exception v0

    .line 5117
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_8 .. :try_end_8} :catch_0

    .line 5123
    :goto_4
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_8

    .line 5124
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5135
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5140
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5141
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5144
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V
    :try_end_9
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 5016
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v0

    goto/16 :goto_2

    .line 5146
    :catch_3
    move-exception v0

    .line 5148
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_b .. :try_end_b} :catch_0

    .line 5154
    :goto_5
    :try_start_c
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_b

    .line 5155
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5160
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5161
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5162
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5165
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    goto/16 :goto_0

    .line 5169
    :catch_4
    move-exception v0

    .line 5171
    const-string v1, "FmRadioRec"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_c .. :try_end_c} :catch_0

    .line 5174
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_d .. :try_end_d} :catch_0

    .line 5179
    :goto_6
    :try_start_e
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    if-eqz v0, :cond_d

    .line 5180
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    .line 5181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    .line 5190
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V

    .line 5194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsFadeVolume:Z

    .line 5195
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5196
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mHandler:Lcom/sec/android/app/fm/MainActivity$MyHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity$MyHandler;->removeMessages(I)V

    .line 5199
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V
    :try_end_e
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 5097
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 5118
    :catch_6
    move-exception v0

    goto/16 :goto_4

    .line 5149
    :catch_7
    move-exception v0

    goto :goto_5

    .line 5175
    :catch_8
    move-exception v0

    goto :goto_6
.end method

.method public registerCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 5457
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    .line 5459
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5460
    return-void
.end method

.method registerMotionListener()V
    .locals 3

    .prologue
    .line 7214
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 7215
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 7216
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 7217
    return-void
.end method

.method removeAllChannel()V
    .locals 4

    .prologue
    .line 5470
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 5471
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5472
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5473
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 5474
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5475
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5476
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 5475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5472
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 5479
    :cond_0
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 5480
    return-void
.end method

.method sendFMStatusBroadcast(FLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.status.channel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 834
    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 835
    const-string v2, "freq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    :goto_0
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 841
    return-void

    .line 837
    :cond_0
    const-string v1, "freq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setIsShowCustomOptionMenu(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 6600
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsShowCustomOptionMenu:Z

    .line 6601
    return-void
.end method

.method public showSeekingText()V
    .locals 2

    .prologue
    .line 6325
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6326
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6327
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6329
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 6330
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6332
    :cond_1
    return-void
.end method

.method public showTurningOnText()V
    .locals 2

    .prologue
    .line 6336
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 6337
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6338
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6339
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeeking:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 6341
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 6342
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mRdsPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6344
    :cond_1
    return-void
.end method

.method public showVolumeBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5793
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 5794
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 5795
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 5797
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 5798
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5815
    :goto_0
    return-void

    .line 5801
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 5803
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mSeekBarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5804
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mProgressbarParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5805
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mVolumeBtn:Landroid/widget/ImageButton;

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 5814
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideSeekbar()V

    goto :goto_0
.end method

.method public startBargeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6890
    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/fm/MainActivity;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 6891
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 6892
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control_radio"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 6893
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_0

    .line 6894
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 6895
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 6897
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->showBargeInNotification()V

    .line 6904
    :cond_0
    return-void
.end method

.method startScan(Z)Z
    .locals 3
    .parameter "isUpdateUI"

    .prologue
    .line 5826
    iput-boolean p1, p0, Lcom/sec/android/app/fm/MainActivity;->mIsUpdateUI:Z

    .line 5829
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5830
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J

    .line 5831
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->on()V

    .line 5834
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->scan()V

    .line 5835
    const/4 v1, 0x1

    .line 5838
    :goto_1
    return v1

    .line 5833
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/fm/MainActivity;->mWillTune:J
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5836
    :catch_0
    move-exception v0

    .line 5837
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 5838
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stopBargeIn()V
    .locals 1

    .prologue
    .line 6907
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v0, v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-eqz v0, :cond_0

    .line 6911
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 6913
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->hideBargeInNotification()V

    .line 6919
    :cond_0
    return-void
.end method

.method public toastOn()V
    .locals 2

    .prologue
    .line 6053
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 6054
    const v0, 0x7f0a0017

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    .line 6056
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->onToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6057
    return-void
.end method

.method public tune(FLandroid/view/View;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6079
    const-string v0, "tune"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6089
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 6090
    :try_start_0
    sget p1, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    .line 6092
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6093
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/fm/WorkerThread;->mBusy:Z

    if-eqz v0, :cond_2

    .line 6094
    const-string v0, "WorkerThread is busy ignore the events.."

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6106
    :cond_1
    :goto_0
    return-void

    .line 6097
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tune : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 6098
    invoke-static {}, Lcom/sec/android/app/fm/WorkerThread;->getInstance()Lcom/sec/android/app/fm/WorkerThread;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-int v2, v2

    int-to-long v2, v2

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/fm/WorkerThread;->doOperation(IJLandroid/view/View;I)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6103
    :catch_0
    move-exception v0

    .line 6104
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/sec/android/app/fm/MainActivity$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 6114
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6115
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6117
    :cond_0
    return-void
.end method

.method unregisterMotionListener()V
    .locals 2

    .prologue
    .line 7220
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 7221
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/MainActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 7222
    :cond_0
    return-void
.end method

.method updateAllChListView()V
    .locals 3

    .prologue
    .line 6127
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 6128
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6129
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 6130
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/MainActivity$Callback;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity$Callback;->notifyUI()V

    .line 6129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6133
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method updateMediaStore()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v1, 0x1

    const/4 v11, 0x0

    const v10, 0x7f0a0073

    const/4 v3, 0x0

    .line 6145
    const-string v0, "[updateMediaStore] Add Saved file to MediaStore"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6148
    const-string v0, "SettingsPreference"

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/fm/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6149
    const-string v2, "storage"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6151
    const-string v2, "mounted"

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Sounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    .line 6156
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6157
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6158
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6163
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-direct {p0, p0, v0}, Lcom/sec/android/app/fm/MainActivity;->getRecordFileTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    .line 6167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".m4a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    .line 6172
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6174
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 6175
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 6176
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 6178
    if-ltz v4, :cond_1

    if-gt v4, v2, :cond_1

    if-ltz v5, :cond_1

    if-gt v5, v2, :cond_1

    .line 6180
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 6183
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6185
    iget-object v8, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 6187
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6188
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 6189
    iput-object v8, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    .line 6190
    iput-object v7, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    move-object v0, v2

    .line 6198
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6203
    :try_start_0
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 6204
    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->mHiddenFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 6206
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 6207
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    .line 6209
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 6212
    cmp-long v4, v5, v12

    if-gez v4, :cond_4

    .line 6213
    const-string v0, "file duration is lower than 1000ms"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6215
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->deleteRecordingHiddenFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 6318
    :goto_2
    return v1

    .line 6154
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Sounds"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    goto/16 :goto_0

    .line 6194
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 6195
    goto/16 :goto_1

    .line 6230
    :cond_4
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    .line 6231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move result : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6232
    if-nez v2, :cond_7

    .line 6233
    const-string v0, "rename failed"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6235
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 6236
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6238
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 6239
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6241
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    .line 6242
    goto :goto_2

    .line 6244
    :catch_0
    move-exception v0

    .line 6246
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6248
    :goto_3
    const-string v1, "FMApp"

    const-string v2, "error occurred while rename temp file "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6250
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v0, :cond_6

    .line 6251
    invoke-static {p0, v11, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6253
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0, v10}, Landroid/widget/Toast;->setText(I)V

    .line 6254
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6256
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    move v1, v3

    .line 6257
    goto/16 :goto_2

    .line 6261
    :cond_7
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 6262
    const-string v4, "title"

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity;->mFileTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6263
    const-string v4, "mime_type"

    const-string v7, "audio/3gpp"

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6264
    const-string v4, "_data"

    iget-object v7, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6265
    const-string v4, "duration"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6266
    const-string v4, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6267
    const-string v4, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6268
    const-string v4, "is_music"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6269
    const-string v4, "recordingtype"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6271
    sget-boolean v4, Lcom/sec/android/app/fm/FMRadioFeature;->FEATURE_DISABLERTPLUSINFO:Z

    if-nez v4, :cond_9

    .line 6272
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 6273
    const-string v4, "artist"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_perf:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6274
    :cond_8
    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 6275
    const-string v4, "album"

    iget-object v5, p0, Lcom/sec/android/app/fm/MainActivity;->RTPlus_album:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6277
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/fm/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 6278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateMediaStore] saved file uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6279
    if-nez v2, :cond_b

    .line 6280
    const-string v2, "Content Resolver insert failed"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 6282
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v2, :cond_a

    .line 6283
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6285
    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    const v4, 0x7f0a0073

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    .line 6286
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6289
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    .line 6290
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 6291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 6316
    :cond_b
    :goto_4
    const-string v0, "[updateMediaStore] Exit"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6296
    :catch_1
    move-exception v2

    .line 6298
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 6300
    :goto_5
    const-string v4, "FMApp"

    const-string v5, "error occurred while input data to MediaStore"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6302
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    if-nez v2, :cond_c

    .line 6303
    invoke-static {p0, v11, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    .line 6305
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v2, v10}, Landroid/widget/Toast;->setText(I)V

    .line 6306
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->recordToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 6309
    invoke-direct {p0}, Lcom/sec/android/app/fm/MainActivity;->cancelFMRecording()V

    .line 6310
    iget-object v2, p0, Lcom/sec/android/app/fm/MainActivity;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 6311
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 6247
    :catch_2
    move-exception v1

    goto/16 :goto_3

    .line 6299
    :catch_3
    move-exception v4

    goto :goto_5
.end method
