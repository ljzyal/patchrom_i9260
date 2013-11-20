.class public Lcom/android/OriginalSettings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# instance fields
.field private final EVENT_LOAD_FONT_FAIL:I

.field private final EVENT_LOAD_FONT_SUCCESS:I

.field private final EVENT_SAVE_FONT_SUCCESS:I

.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mPreviousFont:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDlgAlive:Z

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;

.field private mThreadIsAlive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 70
    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 73
    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 77
    iput v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 80
    iput v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 83
    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFileCopying:Z

    .line 89
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 92
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 94
    iput v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 96
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 98
    iput v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 103
    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 105
    iput v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 111
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->EVENT_LOAD_FONT_SUCCESS:I

    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->EVENT_SAVE_FONT_SUCCESS:I

    .line 113
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->EVENT_LOAD_FONT_FAIL:I

    .line 115
    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mThreadIsAlive:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDlgAlive:Z

    .line 220
    new-instance v0, Lcom/android/OriginalSettings/flipfont/FontListPreference$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$2;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mHandler:Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 124
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 125
    const v0, 0x7f090876

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setTitle(I)V

    .line 126
    const v0, 0x7f090877

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setSummary(I)V

    .line 127
    const v0, 0x7f090878

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 128
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    .line 130
    const v0, 0x7f020078

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/flipfont/FontListPreference;Lcom/android/OriginalSettings/flipfont/FontListAdapter;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mThreadIsAlive:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mThreadIsAlive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDlgAlive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/flipfont/FontListPreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 3

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "FontListPreference"

    const-string v2, "Long running dialog(dismiss)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :try_start_1
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v1, "FontListPreference"

    const-string v2, "dismiss IllegalArgumentException dialog.dismiss"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 410
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dismissProgressDlg()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->dismiss()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDlgAlive:Z

    .line 270
    return-void
.end method

.method public getLoadingProgressDlg()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getProgressDlgStatus()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDlgAlive:Z

    return v0
.end method

.method public loadFontThread()V
    .locals 7

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :try_start_1
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const v5, 0x7f090c5b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 278
    const-string v2, "FontListPreference"

    const-string v3, "Long running dialog(show)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    :try_start_2
    new-instance v1, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    .line 305
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 309
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FontListPreference"

    const-string v3, "Error while mProgressDialog working"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 306
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 307
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 773
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 774
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 775
    return-void
.end method

.method public loadSelectedFont()V
    .locals 15

    .prologue
    .line 349
    const-string v12, "FontListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadSelectedFont : mClickedItem : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 351
    iget v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 355
    :goto_0
    const-string v12, "FontListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadSelectedFont : mSavedClickedItem : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 358
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v12, :cond_0

    .line 359
    new-instance v12, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v13, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 360
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v12}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 363
    :cond_0
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v12, v12, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget v13, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 364
    .local v10, selectedFont:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 366
    iget v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 368
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontWriter;

    invoke-direct {v4}, Lcom/android/OriginalSettings/flipfont/FontWriter;-><init>()V

    .line 369
    .local v4, fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    if-eqz v10, :cond_1

    const-string v12, "default"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 371
    :cond_1
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v13, "sans.loc"

    const-string v14, "default"

    invoke-virtual {v4, v12, v13, v14}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-nez v10, :cond_3

    .line 374
    const-string v12, "FontListPreference"

    const-string v13, "loadSelectedFont() : selectedFont == null "

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_1
    return-void

    .line 353
    .end local v4           #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .end local v10           #selectedFont:Ljava/lang/String;
    :cond_2
    iget v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto :goto_0

    .line 379
    .restart local v4       #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .restart local v10       #selectedFont:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v12, v12, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    invoke-virtual {v12, v10}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/OriginalSettings/flipfont/Typeface;

    move-result-object v9

    .line 381
    .local v9, sansTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    const-string v12, ".xml"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, fontdir:Ljava/lang/String;
    const-string v12, " "

    const-string v13, "-"

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4, v12, v5}, Lcom/android/OriginalSettings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 385
    .local v3, fontDir:Ljava/io/File;
    const/4 v11, 0x0

    .line 386
    .local v11, tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    if-eqz v9, :cond_4

    .line 387
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget-object v12, v9, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_4

    .line 388
    iget-object v12, v9, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    check-cast v11, Lcom/android/OriginalSettings/flipfont/TypefaceFile;

    .line 391
    .restart local v11       #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    :try_start_0
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v12, v12, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v13, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, apkname:Ljava/lang/String;
    const-string v12, "FontListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadSelectedFont : Application name, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v12, v12, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 396
    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 397
    .local v1, assetManager:Landroid/content/res/AssetManager;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 399
    .local v7, in:Ljava/io/InputStream;
    invoke-virtual {v11}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v3, v7, v12}, Lcom/android/OriginalSettings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v0           #apkname:Ljava/lang/String;
    .end local v1           #assetManager:Landroid/content/res/AssetManager;
    .end local v7           #in:Ljava/io/InputStream;
    .end local v8           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 400
    :catch_0
    move-exception v2

    .line 401
    .local v2, ex:Ljava/lang/Exception;
    const-string v12, "FontListPreference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in file operation, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 406
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v6           #i:I
    :cond_4
    iget-object v12, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v13, "sans.loc"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v12, v13, v14}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public loadSelectedFontThread()V
    .locals 7

    .prologue
    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->dismiss()V

    .line 314
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->restartLater()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :try_start_1
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const v5, 0x7f090c5b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 318
    const-string v2, "FontListPreference"

    const-string v3, "Long running dialog(show)"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 326
    :goto_0
    :try_start_2
    new-instance v1, Lcom/android/OriginalSettings/flipfont/FontListPreference$4;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$4;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    .line 340
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 344
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_1
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "FontListPreference"

    const-string v3, "loadSelectedFontThread There is a Bad Token "

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 341
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 321
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 322
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "FontListPreference"

    const-string v3, "Error while mProgressDialog working"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 574
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 576
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 577
    iget v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 580
    .end local v1           #v:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TGY"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadFontThread()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 590
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 592
    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v4, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    .line 597
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 598
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 599
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 600
    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 603
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 609
    :cond_3
    const/4 v2, 0x0

    .line 610
    .local v2, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 611
    .local v1, fontName:Ljava/lang/String;
    iput-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 612
    iput p2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 614
    if-ge p2, v7, :cond_4

    .line 615
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09087c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 617
    .local v3, s:Ljava/lang/String;
    move-object v2, v3

    .line 628
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09003a

    new-instance v5, Lcom/android/OriginalSettings/flipfont/FontListPreference$6;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$6;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09003b

    new-instance v6, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontListPreference$7;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$7;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 656
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 657
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 659
    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 660
    iput-boolean v7, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 662
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    goto :goto_0

    .line 619
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09087b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 621
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v4, :cond_5

    .line 622
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 623
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 625
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x0

    .line 721
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 722
    iget-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_1

    .line 724
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09087e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 730
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 732
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 734
    iput-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 743
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 736
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09087d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 738
    .restart local v1       #uri:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 739
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 740
    iput-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method public onOkButtonPressed()V
    .locals 29

    .prologue
    .line 465
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "TGY"

    const-string v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "BRI"

    const-string v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 468
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 474
    :goto_0
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 478
    new-instance v26, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 483
    .local v24, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 487
    new-instance v13, Lcom/android/OriginalSettings/flipfont/FontWriter;

    invoke-direct {v13}, Lcom/android/OriginalSettings/flipfont/FontWriter;-><init>()V

    .line 488
    .local v13, fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    if-eqz v24, :cond_1

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 490
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    const-string v28, "default"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-nez v24, :cond_3

    .line 493
    const-string v26, "FontListPreference"

    const-string v27, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v13           #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .end local v24           #selectedFont:Ljava/lang/String;
    :goto_1
    return-void

    .line 472
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_0

    .line 498
    .restart local v13       #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .restart local v24       #selectedFont:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/OriginalSettings/flipfont/Typeface;

    move-result-object v23

    .line 500
    .local v23, sansTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    const-string v26, ".xml"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 501
    .local v14, fontdir:Ljava/lang/String;
    const-string v26, " "

    const-string v27, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v14}, Lcom/android/OriginalSettings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 504
    .local v12, fontDir:Ljava/io/File;
    const/16 v25, 0x0

    .line 505
    .local v25, tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    if-eqz v23, :cond_4

    .line 506
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_4

    .line 507
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    check-cast v25, Lcom/android/OriginalSettings/flipfont/TypefaceFile;

    .line 510
    .restart local v25       #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, apkname:Ljava/lang/String;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    .line 515
    .local v21, res:Landroid/content/res/Resources;
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 516
    .local v8, assetManager:Landroid/content/res/AssetManager;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fonts/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 518
    .local v17, in:Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v13, v12, v0, v1}, Lcom/android/OriginalSettings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v7           #apkname:Ljava/lang/String;
    .end local v8           #assetManager:Landroid/content/res/AssetManager;
    .end local v17           #in:Ljava/io/InputStream;
    .end local v21           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 519
    :catch_0
    move-exception v11

    .line 520
    .local v11, ex:Ljava/lang/Exception;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception in file operation, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 525
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v15           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .end local v12           #fontDir:Ljava/io/File;
    .end local v13           #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .end local v14           #fontdir:Ljava/lang/String;
    .end local v23           #sansTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    .end local v24           #selectedFont:Ljava/lang/String;
    .end local v25           #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 531
    .local v6, am:Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 532
    .local v9, config:Landroid/content/res/Configuration;
    new-instance v20, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 533
    .local v20, randomizer:Ljava/util/Random;
    const/16 v19, 0x0

    .line 534
    .local v19, min:I
    const/16 v18, 0x2710

    .line 535
    .local v18, max:I
    const/16 v26, 0x2711

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v26

    iput v0, v9, Landroid/content/res/Configuration;->FlipFont:I

    .line 536
    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 544
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v9           #config:Landroid/content/res/Configuration;
    .end local v18           #max:I
    .end local v19           #min:I
    .end local v20           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v27, "activity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 546
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v26, 0x32

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 547
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v15, 0x1

    .line 548
    .restart local v15       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 549
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 551
    .local v22, s:Ljava/lang/String;
    const-string v26, "com.android.OriginalSettings"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "com.samsung.music"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "com.sec.android.app.music"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_6

    .line 552
    const-string v26, "com.infraware.polarisoffice"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "com.infraware.polarisoffice4"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "com.infraware.polarisviewer4"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_8

    .line 554
    :cond_7
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 539
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 541
    .local v10, e:Landroid/os/RemoteException;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Intentionally left blank, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 557
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v22       #s:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 563
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v22           #s:Ljava/lang/String;
    :cond_9
    const-string v26, "com.android.OriginalSettings"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 565
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->exit(I)V

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->restartLater()V

    goto/16 :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 148
    const-string v2, "MONOTYPE"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, selectedFont:Ljava/lang/String;
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09087a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    .local v0, okButton:Ljava/lang/String;
    :goto_0
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v2, :cond_3

    .line 166
    const-string v1, "HelveticaNeueRegular.xml"

    .line 167
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 168
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    iget v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v2, :cond_0

    .line 188
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const-string v2, "CHM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CHC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    new-instance v2, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    :cond_1
    return-void

    .line 154
    .end local v0           #okButton:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090879

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #okButton:Ljava/lang/String;
    goto/16 :goto_0

    .line 173
    :cond_3
    const-string v1, "default"

    .line 174
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 175
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 181
    :cond_4
    const-string v2, "FontListPreference"

    const-string v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 183
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v2, "FontListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 448
    .local v0, superState:Landroid/os/Parcelable;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mThreadIsAlive:Z

    .line 449
    return-object v0
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 459
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 759
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 761
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 762
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 765
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 666
    const/4 v3, 0x0

    .line 667
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 668
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadPreferences()V

    .line 669
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 670
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 671
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09087c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 673
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 680
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09003a

    new-instance v6, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09003b

    new-instance v7, Lcom/android/OriginalSettings/flipfont/FontListPreference$8;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$8;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    new-instance v5, Lcom/android/OriginalSettings/flipfont/FontListPreference$10;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$10;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 706
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 707
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 708
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 709
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 710
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 711
    iput-boolean v8, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 712
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 713
    return-void

    .line 675
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09087b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 677
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 678
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 422
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TGY"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BRI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 425
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 434
    const v0, 0x7f09087f

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 436
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadPreferences()V

    .line 438
    iget-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 440
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 441
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->selectDialog()V

    .line 443
    :cond_3
    return-void
.end method
