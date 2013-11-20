.class Lcom/android/OriginalSettings/SatelliteView$setHandler;
.super Landroid/os/Handler;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SatelliteView;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/SatelliteView;Lcom/android/OriginalSettings/SatelliteView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 638
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SatelliteView$setHandler;-><init>(Lcom/android/OriginalSettings/SatelliteView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 640
    const/4 v3, 0x2

    new-array v1, v3, [D

    .line 641
    .local v1, position:[D
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$200()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 642
    const/4 v3, 0x1

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$300()D

    move-result-wide v4

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 644
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 646
    .local v0, message:Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 689
    :goto_0
    return-void

    .line 648
    :pswitch_0
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SatelliteView;->startGPS()V

    .line 649
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1400(Lcom/android/OriginalSettings/SatelliteView;)Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->invalidate()V

    .line 650
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 652
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 653
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 654
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 658
    :pswitch_1
    sget v3, Lcom/android/OriginalSettings/SatelliteView;->ani_count:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/OriginalSettings/SatelliteView;->ani_count:I

    if-ltz v3, :cond_0

    .line 659
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1400(Lcom/android/OriginalSettings/SatelliteView;)Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    move-result-object v3

    sget-wide v4, Lcom/android/OriginalSettings/SatelliteView;->ani_gap_x:D

    sget v6, Lcom/android/OriginalSettings/SatelliteView;->ani_count:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-wide v6, Lcom/android/OriginalSettings/SatelliteView;->ani_gap_y:D

    neg-double v6, v6

    sget v8, Lcom/android/OriginalSettings/SatelliteView;->ani_count:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->setPoint(DD)V

    .line 660
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SatelliteView;->showSVStatus()V

    .line 661
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1400(Lcom/android/OriginalSettings/SatelliteView;)Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    move-result-object v3

    const/4 v4, 0x3

    #calls: Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->access$900(Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;I)V

    .line 663
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    const v4, 0x7f090e9c

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$400()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D
    invoke-static {v7}, Lcom/android/OriginalSettings/SatelliteView;->access$600(Lcom/android/OriginalSettings/SatelliteView;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$500()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v7, v7, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/OriginalSettings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, sSatelliteResult:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1500(Lcom/android/OriginalSettings/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->removeMessages(I)V

    .line 667
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 668
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 670
    .end local v2           #sSatelliteResult:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->removeMessages(I)V

    .line 671
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 672
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 673
    const/16 v3, 0x28

    sput v3, Lcom/android/OriginalSettings/SatelliteView;->ani_count:I

    goto/16 :goto_0

    .line 678
    :pswitch_2
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SatelliteView$setHandler;->removeMessages(I)V

    .line 680
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1400(Lcom/android/OriginalSettings/SatelliteView;)Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->invalidate()V

    .line 682
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    const v4, 0x7f090e9c

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$400()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->mSpeed:D
    invoke-static {v7}, Lcom/android/OriginalSettings/SatelliteView;->access$600(Lcom/android/OriginalSettings/SatelliteView;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/android/OriginalSettings/SatelliteView;->access$500()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    iget-object v7, v7, Lcom/android/OriginalSettings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/OriginalSettings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .restart local v2       #sSatelliteResult:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1500(Lcom/android/OriginalSettings/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #getter for: Lcom/android/OriginalSettings/SatelliteView;->drawView:Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1400(Lcom/android/OriginalSettings/SatelliteView;)Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;

    move-result-object v3

    const/4 v4, 0x3

    #calls: Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v3, v4}, Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;->access$900(Lcom/android/OriginalSettings/SatelliteView$SatelliteViewView;I)V

    .line 686
    iget-object v3, p0, Lcom/android/OriginalSettings/SatelliteView$setHandler;->this$0:Lcom/android/OriginalSettings/SatelliteView;

    #calls: Lcom/android/OriginalSettings/SatelliteView;->diplayCompleted()V
    invoke-static {v3}, Lcom/android/OriginalSettings/SatelliteView;->access$1600(Lcom/android/OriginalSettings/SatelliteView;)V

    goto/16 :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
