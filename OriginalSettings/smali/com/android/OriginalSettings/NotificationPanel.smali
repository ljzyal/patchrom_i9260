.class public Lcom/android/OriginalSettings/NotificationPanel;
.super Landroid/app/Activity;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field NotipicationPanelName:Landroid/widget/TextView;

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessChk:Landroid/widget/CheckBox;

.field private mBrightnessListener:Landroid/view/View$OnClickListener;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDragShadowBuilder:Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;

.field private mIsOnDragging:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNotificationPanel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfActiveNotificationPanel:I

.field private mNumOfCandidateNotificationPanel:I

.field private mOldDropItem:I

.field private mOnDragItem:I

.field mPanelDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    .line 86
    iput v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 93
    iput v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    .line 94
    iput-boolean v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z

    .line 97
    iput v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I

    .line 275
    new-instance v0, Lcom/android/OriginalSettings/NotificationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/NotificationPanel$1;-><init>(Lcom/android/OriginalSettings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessListener:Landroid/view/View$OnClickListener;

    .line 523
    new-instance v0, Lcom/android/OriginalSettings/NotificationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/NotificationPanel$2;-><init>(Lcom/android/OriginalSettings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 566
    new-instance v0, Lcom/android/OriginalSettings/NotificationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/NotificationPanel$3;-><init>(Lcom/android/OriginalSettings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mPanelDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method private DropItemPos(Landroid/view/View;)I
    .locals 2
    .parameter "iv"

    .prologue
    .line 559
    const/4 v0, 0x0

    .local v0, dropItemPosition:I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    return v0

    .line 559
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private LoadAppslist()V
    .locals 10

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_panel_active_app_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, active_app_list:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_panel_candidate_app_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, cadidate_app_list:Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, quickPanelActiveList:[Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, quickPanelCandidateList:[Ljava/lang/String;
    const-string v4, ""

    .line 388
    .local v4, panelName:Ljava/lang/String;
    const-string v2, ""

    .line 389
    .local v2, convertPanelString:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 390
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 392
    const-string v7, "NotificationPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Load] active_app_list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v7, "NotificationPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Load] cadidate_app_list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 416
    :cond_0
    return-void

    .line 398
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 399
    aget-object v4, v5, v3

    .line 400
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #convertPanelString:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 401
    .restart local v2       #convertPanelString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_2
    const/4 v3, 0x0

    :goto_1
    array-length v7, v5

    rsub-int/lit8 v7, v7, 0xa

    if-ge v3, v7, :cond_3

    .line 405
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 407
    :cond_3
    const/4 v3, 0x0

    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 408
    aget-object v4, v6, v3

    .line 409
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #convertPanelString:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 410
    .restart local v2       #convertPanelString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 413
    :cond_4
    const/4 v3, 0x0

    :goto_3
    array-length v7, v6

    rsub-int/lit8 v7, v7, 0xa

    if-ge v3, v7, :cond_0

    .line 414
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private SaveAppslist()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 419
    const-string v0, ""

    .line 420
    .local v0, active_app_list:Ljava/lang/String;
    const-string v2, ""

    .line 421
    .local v2, candidate_app_list:Ljava/lang/String;
    const-string v1, ""

    .line 422
    .local v1, active_content:Ljava/lang/String;
    const-string v3, ""

    .line 423
    .local v3, candidate_content:Ljava/lang/String;
    const-string v4, ""

    .line 425
    .local v4, convertPanelString:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_3

    .line 426
    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 428
    .restart local v4       #convertPanelString:Ljava/lang/String;
    const-string v6, "notification_panel_empty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 425
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 431
    :cond_1
    add-int/lit8 v6, v5, 0x1

    if-ne v8, v6, :cond_2

    .line 432
    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #active_content:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 436
    .restart local v1       #active_content:Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_0

    .line 437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 434
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 440
    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_7

    .line 441
    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 443
    .restart local v4       #convertPanelString:Ljava/lang/String;
    const-string v6, "notification_panel_empty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 440
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 446
    :cond_5
    add-int/lit8 v6, v5, 0x1

    if-ne v8, v6, :cond_6

    .line 447
    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #candidate_content:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 451
    .restart local v3       #candidate_content:Ljava/lang/String;
    :goto_5
    if-eqz v3, :cond_4

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 449
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 455
    :cond_7
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] active_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] candidate_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 459
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 460
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/NotificationPanel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/NotificationPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/NotificationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/OriginalSettings/NotificationPanel;->SaveAppslist()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/NotificationPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/NotificationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/OriginalSettings/NotificationPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/NotificationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/NotificationPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/NotificationPanel;)Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mDragShadowBuilder:Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/NotificationPanel;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;)Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mDragShadowBuilder:Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/NotificationPanel;Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/OriginalSettings/NotificationPanel;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/NotificationPanel;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/NotificationPanel;->DropItemPos(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/NotificationPanel;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;)V

    return-void
.end method

.method private changeNotificationPanel(Landroid/view/View;)V
    .locals 11
    .parameter "iv"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 283
    const-string v5, "NotificationPanel"

    const-string v6, "changeNotificationPanel"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v3, ""

    .line 285
    .local v3, seletedNotificationText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 287
    .local v0, dropItemPosition:I
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/NotificationPanel;->DropItemPos(Landroid/view/View;)I

    move-result v0

    .line 289
    iget v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    if-ge v5, v9, :cond_0

    .line 290
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #seletedNotificationText:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 294
    .restart local v3       #seletedNotificationText:Ljava/lang/String;
    :goto_0
    const-string v5, "NotificationPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOnDragItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , dropItemPosition : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    if-ne v0, v5, :cond_1

    .line 297
    const-string v5, "NotificationPanel"

    const-string v6, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_1
    return-void

    .line 292
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #seletedNotificationText:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #seletedNotificationText:Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_1
    iget v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    if-ge v5, v9, :cond_2

    if-ge v0, v9, :cond_2

    .line 300
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/OriginalSettings/NotificationPanel;->getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 303
    .local v4, value:[I
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v8

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->updatelist()V

    goto :goto_1

    .line 304
    .end local v4           #value:[I
    :cond_2
    iget v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    if-ge v5, v9, :cond_4

    if-lt v0, v9, :cond_4

    .line 305
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/OriginalSettings/NotificationPanel;->getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 307
    .restart local v4       #value:[I
    aget v5, v4, v10

    if-ne v5, v10, :cond_3

    .line 308
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v8

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 314
    :cond_3
    const v5, 0x7f090ec8

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/OriginalSettings/NotificationPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, message:Ljava/lang/String;
    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 317
    .end local v2           #message:Ljava/lang/String;
    .end local v4           #value:[I
    :cond_4
    iget v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I

    if-lt v5, v9, :cond_6

    if-ge v0, v9, :cond_6

    .line 318
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/OriginalSettings/NotificationPanel;->getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 320
    .restart local v4       #value:[I
    aget v5, v4, v10

    if-ne v5, v10, :cond_5

    .line 321
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 324
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v8

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 327
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_panel_active_number_of_apps"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 329
    .local v1, mActiveNotificationPanel:I
    const v5, 0x7f090ec9

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/OriginalSettings/NotificationPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2       #message:Ljava/lang/String;
    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 333
    .end local v1           #mActiveNotificationPanel:I
    .end local v2           #message:Ljava/lang/String;
    .end local v4           #value:[I
    :cond_6
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/OriginalSettings/NotificationPanel;->getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 336
    .restart local v4       #value:[I
    iget-object v5, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v8

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I
    .locals 7
    .parameter
    .parameter "size"
    .parameter "dropItemPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, mActiveNotificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 342
    const/16 v0, 0xa

    .local v0, addItemPosition:I
    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, realval:[I
    const/4 v2, 0x0

    .line 344
    .local v2, isFindEmptyPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 345
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notification_panel_empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    const/4 v2, 0x1

    .line 347
    move v0, v1

    .line 352
    :cond_0
    if-ge p3, v0, :cond_2

    .line 353
    aput p3, v3, v6

    .line 357
    :goto_1
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 358
    return-object v3

    .line 344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    :cond_2
    aput v0, v3, v6

    goto :goto_1
.end method

.method private getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I
    .locals 7
    .parameter
    .parameter "size"
    .parameter "dropItemPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, mCandidateNotificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 362
    const/16 v0, 0xa

    .local v0, addItemPosition:I
    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, realval:[I
    const/4 v2, 0x0

    .line 364
    .local v2, isFindEmptyPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 365
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notification_panel_empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    const/4 v2, 0x1

    .line 367
    move v0, v1

    .line 372
    :cond_0
    add-int/lit8 v4, p3, -0xa

    if-ge v4, v0, :cond_2

    .line 373
    add-int/lit8 v4, p3, -0xa

    aput v4, v3, v6

    .line 377
    :goto_1
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 378
    return-object v3

    .line 364
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_2
    aput v0, v3, v6

    goto :goto_1
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    const-string v1, "NotificationPanel"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v15, 0x0

    .line 466
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 467
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 468
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 471
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 474
    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 475
    :cond_0
    const-string v1, "NotificationPanel"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v1, 0x0

    .line 520
    :goto_0
    return v1

    .line 479
    :cond_1
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 481
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 482
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 486
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 487
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 489
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 490
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 491
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    .line 493
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    .line 495
    if-eqz v9, :cond_2

    .line 496
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;->draw()V

    .line 499
    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 500
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 501
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 504
    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 505
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 506
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 511
    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 515
    :catch_0
    move-exception v1

    .line 516
    const-string v2, "NotificationPanel"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_2
    move v1, v15

    goto/16 :goto_0
.end method


# virtual methods
.method public MakeConvertPanelName()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Empty"

    const-string v2, "notification_panel_empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Flashlight"

    const-string v2, "notification_panel_flashlight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_panel_airplane"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DoNotDisturb"

    const-string v2, "notification_panel_donotdisturb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WifiAp"

    const-string v2, "notification_panel_wifiap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_empty"

    const-string v2, "Empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 273
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f040137

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/NotificationPanel;->setContentView(I)V

    .line 106
    const v1, 0x7f0b042d

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 108
    .local v0, setcheck:Z
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel;->mBrightnessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->MakeConvertPanelName()V

    .line 113
    invoke-direct {p0}, Lcom/android/OriginalSettings/NotificationPanel;->LoadAppslist()V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->updatelist()V

    .line 115
    return-void

    .end local v0           #setcheck:Z
    :cond_0
    move v0, v2

    .line 107
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 269
    return-void
.end method

.method public updatelist()V
    .locals 11

    .prologue
    .line 154
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 155
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 158
    const/4 v2, 0x0

    .local v2, line:I
    :goto_0
    const/4 v7, 0x4

    if-ge v2, v7, :cond_d

    .line 159
    if-nez v2, :cond_1

    .line 160
    const v7, 0x7f0b017c

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 161
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 176
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v7, 0x5

    if-ge v0, v7, :cond_7

    .line 178
    const v7, 0x7f040138

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 179
    .local v5, positionBarLayout:Landroid/view/View;
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    const v7, 0x7f040139

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 182
    .local v4, notificationIconLayout:Landroid/view/View;
    const v7, 0x7f0b0435

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 183
    .local v3, notificationIcon:Landroid/widget/ImageView;
    const v7, 0x7f0b0430

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    .line 185
    if-nez v2, :cond_4

    .line 186
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 188
    .local v6, tmpID:I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 190
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 214
    .end local v6           #tmpID:I
    :cond_0
    :goto_3
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mPanelDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 217
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 163
    .end local v0           #i:I
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBarLayout:Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 164
    const v7, 0x7f0b042f

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 165
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 167
    :cond_2
    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 168
    const v7, 0x7f0b0431

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 169
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 172
    :cond_3
    const v7, 0x7f0b0432

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 173
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 192
    .restart local v0       #i:I
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    .restart local v5       #positionBarLayout:Landroid/view/View;
    :cond_4
    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    .line 193
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 195
    .restart local v6       #tmpID:I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 197
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 199
    .end local v6           #tmpID:I
    :cond_5
    const/4 v7, 0x2

    if-ne v2, v7, :cond_6

    .line 200
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 202
    .restart local v6       #tmpID:I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 204
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 207
    .end local v6           #tmpID:I
    :cond_6
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 209
    .restart local v6       #tmpID:I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 211
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 158
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBarLayout:Landroid/view/View;
    .end local v6           #tmpID:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 222
    .end local v0           #i:I
    .end local v2           #line:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #line:I
    :goto_4
    const/4 v7, 0x2

    if-ge v2, v7, :cond_d

    .line 223
    if-nez v2, :cond_a

    .line 224
    const v7, 0x7f0b017c

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 225
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 232
    :goto_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    const/16 v7, 0xa

    if-ge v0, v7, :cond_c

    .line 234
    const v7, 0x7f040138

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 235
    .restart local v5       #positionBarLayout:Landroid/view/View;
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    const v7, 0x7f040139

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 238
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    const v7, 0x7f0b0435

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 239
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    const v7, 0x7f0b0430

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    .line 241
    if-nez v2, :cond_b

    .line 242
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 244
    .restart local v6       #tmpID:I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 246
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 256
    .end local v6           #tmpID:I
    :cond_9
    :goto_7
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 257
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mPanelDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 259
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 228
    .end local v0           #i:I
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBarLayout:Landroid/view/View;
    :cond_a
    const v7, 0x7f0b042f

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 229
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_5

    .line 249
    .restart local v0       #i:I
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    .restart local v5       #positionBarLayout:Landroid/view/View;
    :cond_b
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 250
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "drawable"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 251
    .restart local v6       #tmpID:I
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 253
    iget-object v7, p0, Lcom/android/OriginalSettings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 222
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBarLayout:Landroid/view/View;
    .end local v6           #tmpID:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 264
    .end local v0           #i:I
    :cond_d
    return-void
.end method
