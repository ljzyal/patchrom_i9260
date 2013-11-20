.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field private mEdgeBaseY:F

.field private mEdgeCurX:F

.field private mEdgeCurY:F

.field private mEdgeCurrEvent:Landroid/view/MotionEvent;

.field private mEdgeCurrFingerDiffX:F

.field private mEdgeCurrFingerDiffY:F

.field private mEdgeCurrLen:F

.field private mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEdgePixels:F

.field private mEdgePrevEvent:Landroid/view/MotionEvent;

.field private mEdgePrevFingerDiffX:F

.field private mEdgePrevFingerDiffY:F

.field private mEdgePrevLen:F

.field private mEdgePrevX:F

.field private mEdgePrevY:F

.field private mEdgeTimeDelta:J

.field private final mEdgeWM:Landroid/view/WindowManager;

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private mIsEdgeDelay:Z

.field private mIsEdgeZoom:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field private mTimeDelta:J

.field private mValidPackage:Z

.field private mValidPackgeList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mValidPackgeList:[Ljava/lang/String;

    .line 196
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 201
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 204
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    .line 207
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeWM:Landroid/view/WindowManager;

    .line 208
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 211
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 3
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "removedPointerIndex"

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 408
    .local v2, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 411
    .local v1, otherActiveIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 412
    if-eq v0, p3, :cond_0

    if-eq v0, v1, :cond_0

    .line 416
    .end local v0           #i:I
    :goto_1
    return v0

    .line 411
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private isValidPackage()Z
    .locals 5

    .prologue
    .line 648
    :try_start_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mValidPackgeList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 649
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    const/4 v4, 0x1

    .line 657
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :goto_1
    return v4

    .line 648
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #pkg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 657
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const v12, 0x3f333333

    const/4 v11, 0x0

    const v10, 0x40228f5c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 421
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-nez v8, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v6

    .line 424
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 426
    .local v0, action:I
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-nez v8, :cond_8

    .line 427
    if-nez v0, :cond_3

    .line 429
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeWM:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 431
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    if-nez v8, :cond_0

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 435
    .local v2, locX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 438
    .local v3, locY:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v10

    mul-float v1, v8, v12

    .line 439
    .local v1, frontX:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 441
    .local v4, tailX:F
    cmpg-float v8, v2, v1

    if-ltz v8, :cond_2

    cmpl-float v8, v2, v4

    if-lez v8, :cond_0

    .line 443
    :cond_2
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    .line 444
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    goto :goto_0

    .line 448
    .end local v1           #frontX:F
    .end local v2           #locX:F
    .end local v3           #locY:F
    .end local v4           #tailX:F
    :cond_3
    if-ne v0, v7, :cond_4

    .line 450
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 451
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 452
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    goto :goto_0

    .line 454
    :cond_4
    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    if-ne v8, v7, :cond_0

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 458
    .restart local v2       #locX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 461
    .restart local v3       #locY:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v10

    mul-float v1, v8, v12

    .line 462
    .restart local v1       #frontX:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 464
    .restart local v4       #tailX:F
    cmpg-float v8, v1, v2

    if-gez v8, :cond_5

    cmpg-float v8, v2, v4

    if-gez v8, :cond_5

    .line 466
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    goto :goto_0

    .line 468
    :cond_5
    iget v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 470
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    .line 471
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    .line 472
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iput v8, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 473
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 474
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 475
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-eqz v8, :cond_7

    .line 477
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 478
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    .line 479
    invoke-direct {p0, p1, v7}, Landroid/view/ScaleGestureDetector;->processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z

    move v6, v7

    .line 480
    goto/16 :goto_0

    .line 484
    :cond_7
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    goto/16 :goto_0

    .line 491
    .end local v1           #frontX:F
    .end local v2           #locX:F
    .end local v3           #locY:F
    .end local v4           #tailX:F
    :cond_8
    packed-switch v0, :pswitch_data_0

    :cond_9
    :goto_1
    move v6, v7

    .line 516
    goto/16 :goto_0

    .line 494
    :pswitch_0
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 495
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_1

    .line 499
    :pswitch_1
    invoke-direct {p0, p1, v6}, Landroid/view/ScaleGestureDetector;->processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 501
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v5

    .line 502
    .local v5, updatePrevious:Z
    if-eqz v5, :cond_9

    .line 503
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 504
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 509
    .end local v5           #updatePrevious:Z
    :cond_a
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 510
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_1

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "isBegin"

    .prologue
    const v8, 0x40228f5c

    const v7, 0x3f333333

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 524
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    .line 526
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevX:F

    .line 527
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    .line 528
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurX:F

    .line 529
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    .line 530
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeTimeDelta:J

    .line 532
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurX:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurX:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v8

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 535
    const/4 v0, 0x0

    .line 566
    :goto_0
    return v0

    .line 538
    :cond_1
    iput v5, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 539
    if-eqz p2, :cond_3

    .line 541
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 542
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 543
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    .line 544
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePixels:F

    .line 545
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrLen:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevLen:F

    .line 546
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 547
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffY:F

    .line 548
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 549
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffY:F

    .line 566
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :cond_3
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevLen:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 554
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrLen:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 556
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 558
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePixels:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    goto :goto_1

    .line 560
    :cond_4
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 562
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePixels:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    div-float v0, v5, v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    goto :goto_1
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 621
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 623
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    .line 625
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 627
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    .line 629
    :cond_1
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    .line 631
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 632
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 633
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 635
    :cond_2
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 636
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 637
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 639
    :cond_3
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 640
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 641
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 642
    iput-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 643
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "curr"

    .prologue
    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 573
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 575
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 576
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 577
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 579
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 581
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 582
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 583
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 584
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 586
    .local v4, currIndex1:I
    if-ltz v12, :cond_1

    if-ltz v13, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 587
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    .line 588
    const-string v20, "ScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 618
    :cond_2
    :goto_0
    return-void

    .line 595
    :cond_3
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 596
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 597
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 598
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 599
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 600
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 601
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 602
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 604
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 605
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 606
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 607
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 608
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 609
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 610
    move-object/from16 v0, p0

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 611
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 613
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 614
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 616
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    .line 617
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 712
    iget-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v2, :cond_0

    .line 713
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrLen:F

    .line 721
    :goto_0
    return v2

    .line 716
    :cond_0
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 717
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    .line 718
    .local v0, cvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    .line 719
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    .line 721
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_1
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLen:F

    goto :goto_0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 732
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 734
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffX:F

    goto :goto_0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 745
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffY:F

    .line 747
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrFingerDiffY:F

    goto :goto_0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 833
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 757
    iget-boolean v2, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v2, :cond_0

    .line 758
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevLen:F

    .line 765
    :goto_0
    return v2

    .line 760
    :cond_0
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 761
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    .line 762
    .local v0, pvx:F
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    .line 763
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    .line 765
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_1
    iget v2, p0, Landroid/view/ScaleGestureDetector;->mPrevLen:F

    goto :goto_0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 776
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 778
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffX:F

    goto :goto_0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 789
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffY:F

    .line 791
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevFingerDiffY:F

    goto :goto_0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 802
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 803
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 808
    :goto_0
    return v0

    .line 805
    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 806
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 808
    :cond_1
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    goto :goto_0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 818
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 819
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeTimeDelta:J

    .line 821
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    goto :goto_0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "event"

    .prologue
    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 218
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 222
    .local v4, action:I
    if-nez v4, :cond_1

    .line 223
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 226
    :cond_1
    const/4 v10, 0x1

    .line 227
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 228
    const/4 v10, 0x0

    .line 398
    :cond_2
    :goto_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 401
    :cond_3
    return v10

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    .line 230
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 232
    :pswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 233
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_0

    .line 243
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 244
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 245
    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTimeDelta:J

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 248
    .local v13, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 249
    .local v12, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 250
    if-ltz v12, :cond_6

    if-ne v12, v13, :cond_7

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 256
    :try_start_0
    const-string v19, "ScaleGestureDetector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_POINTER_DOWN:: index0 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v12, 0x0

    .line 264
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 268
    :cond_7
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 270
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v8

    .line 260
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    const/4 v12, 0x0

    .line 264
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto :goto_1

    .line 263
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v19

    const/4 v12, 0x0

    .line 264
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    throw v19

    .line 278
    .end local v12           #index0:I
    .end local v13           #index1:I
    :cond_8
    packed-switch v4, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 376
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 281
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 282
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 283
    .local v15, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v16, v0

    .line 284
    .local v16, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 286
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 287
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .end local v15           #oldActive0:I
    :goto_2
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 289
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 292
    .restart local v12       #index0:I
    if-ltz v12, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 294
    :cond_9
    const-string v19, "ScaleGestureDetector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Got "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "Did you forget to pass an event to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 299
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 302
    :cond_a
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .end local v12           #index0:I
    .restart local v15       #oldActive0:I
    :cond_b
    move/from16 v15, v16

    .line 287
    goto/16 :goto_2

    .line 309
    .end local v15           #oldActive0:I
    .end local v16           #oldActive1:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 310
    .local v17, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 311
    .local v6, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 313
    .local v5, actionId:I
    const/4 v9, 0x0

    .line 314
    .local v9, gestureEnded:Z
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v5, v0, :cond_e

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v14

    .line 317
    .local v14, newIndex:I
    if-ltz v14, :cond_d

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 320
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 321
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 322
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 340
    .end local v14           #newIndex:I
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 341
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 342
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 347
    :goto_4
    if-eqz v9, :cond_2

    .line 349
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v5, v0, :cond_11

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 353
    .local v7, activeId:I
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 355
    .local v11, index:I
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 356
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mFocusY:F
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 364
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    .line 365
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_0

    .line 325
    .end local v7           #activeId:I
    .end local v11           #index:I
    .restart local v14       #newIndex:I
    :cond_d
    const/4 v9, 0x1

    goto :goto_3

    .line 327
    .end local v14           #newIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v5, v0, :cond_c

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v6}, Landroid/view/ScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v14

    .line 329
    .restart local v14       #newIndex:I
    if-ltz v14, :cond_f

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mActiveId1:I

    .line 332
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mActive0MostRecent:Z

    .line 333
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 334
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_3

    .line 337
    :cond_f
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 344
    .end local v14           #newIndex:I
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 352
    :cond_11
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_5

    .line 358
    .restart local v7       #activeId:I
    .restart local v11       #index:I
    :catch_1
    move-exception v8

    .line 359
    .restart local v8       #e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_6

    .line 371
    .end local v5           #actionId:I
    .end local v6           #actionIndex:I
    .end local v7           #activeId:I
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .end local v9           #gestureEnded:Z
    .end local v11           #index:I
    .end local v17           #pointerCount:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 380
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrPressure:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevPressure:F

    move/from16 v20, v0

    div-float v19, v19, v20

    const v20, 0x3f2b851f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_2

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v18

    .line 388
    .local v18, updatePrevious:Z
    if-eqz v18, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 390
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 841
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    .line 842
    return-void
.end method
