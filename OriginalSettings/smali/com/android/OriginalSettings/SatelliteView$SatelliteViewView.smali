.class Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteViewView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 556
    const/16 v0, 0x19d

    sput v0, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->sx:I

    .line 557
    const/16 v0, 0x1f7

    sput v0, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 563
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 558
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->mState:I

    .line 564
    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 567
    iput p1, p0, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->mState:I

    .line 568
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/16 v11, 0x9

    const/high16 v10, -0x1

    const v9, 0x4480c000

    const-wide/high16 v7, 0x4000

    .line 589
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget v0, Lcom/android/OriginalSettings/SatelliteView;->mNoOfSat:I

    if-ge v6, v0, :cond_4

    .line 591
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1000()[F

    move-result-object v0

    aget v0, v0, v6

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 593
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1100()[I

    move-result-object v0

    aget v0, v0, v6

    add-int/lit16 v0, v0, -0x1c2

    int-to-double v0, v0

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1200()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit16 v2, v2, -0x21c

    int-to-double v2, v2

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4069

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 595
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1100()[I

    move-result-object v0

    const/16 v1, 0x1c2

    aput v1, v0, v6

    .line 596
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1200()[I

    move-result-object v0

    const/16 v1, 0x21c

    aput v1, v0, v6

    .line 598
    :cond_0
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 599
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 600
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1100()[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1200()[I

    move-result-object v1

    aget v1, v1, v6

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 602
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 603
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 604
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 605
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 606
    if-ge v6, v11, :cond_2

    .line 607
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1100()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1200()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 612
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 613
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 614
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1000()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x3e8

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x447a

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 617
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 619
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 620
    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 622
    if-ge v6, v11, :cond_3

    .line 623
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 589
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 609
    :cond_2
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1100()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1200()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 625
    :cond_3
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$1300()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 627
    :cond_4
    return-void
.end method

.method public setPoint(DD)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v5, 0x4069

    const-wide/high16 v3, 0x4000

    .line 571
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 572
    .local v0, lengthPoint:F
    const/high16 v1, 0x4348

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 573
    mul-double v1, p1, v5

    float-to-double v3, v0

    div-double p1, v1, v3

    .line 574
    mul-double v1, p3, v5

    float-to-double v3, v0

    div-double p3, v1, v3

    .line 576
    :cond_0
    const-wide v1, 0x4079d00000000000L

    add-double/2addr v1, p1

    double-to-int v1, v1

    sput v1, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->sx:I

    .line 577
    const-wide v1, 0x407f700000000000L

    sub-double/2addr v1, p3

    double-to-int v1, v1

    sput v1, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->sy:I

    .line 578
    return-void
.end method
