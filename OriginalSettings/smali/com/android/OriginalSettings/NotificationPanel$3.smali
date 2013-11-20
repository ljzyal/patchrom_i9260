.class Lcom/android/OriginalSettings/NotificationPanel$3;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/NotificationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const v4, 0x7f02043b

    const/4 v3, 0x0

    .line 570
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #calls: Lcom/android/OriginalSettings/NotificationPanel;->DropItemPos(Landroid/view/View;)I
    invoke-static {v2, p1}, Lcom/android/OriginalSettings/NotificationPanel;->access$800(Lcom/android/OriginalSettings/NotificationPanel;Landroid/view/View;)I

    move-result v0

    .line 572
    .local v0, dropItemPosition:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 601
    :pswitch_0
    const/4 v1, 0x1

    .line 604
    .local v1, res:Z
    :goto_0
    return v1

    .line 574
    .end local v1           #res:Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #calls: Lcom/android/OriginalSettings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/OriginalSettings/NotificationPanel;->access$900(Lcom/android/OriginalSettings/NotificationPanel;Landroid/view/View;)V

    .line 575
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/NotificationPanel;->access$102(Lcom/android/OriginalSettings/NotificationPanel;Z)Z

    .line 576
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #calls: Lcom/android/OriginalSettings/NotificationPanel;->SaveAppslist()V
    invoke-static {v2}, Lcom/android/OriginalSettings/NotificationPanel;->access$1000(Lcom/android/OriginalSettings/NotificationPanel;)V

    .line 577
    const/4 v1, 0x1

    .line 578
    .restart local v1       #res:Z
    goto :goto_0

    .line 581
    .end local v1           #res:Z
    :pswitch_2
    const/4 v1, 0x0

    .line 582
    .restart local v1       #res:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I
    invoke-static {v2}, Lcom/android/OriginalSettings/NotificationPanel;->access$1100(Lcom/android/OriginalSettings/NotificationPanel;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 583
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/OriginalSettings/NotificationPanel;->access$200(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x7f020428

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 584
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/OriginalSettings/NotificationPanel;->access$200(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I
    invoke-static {v3}, Lcom/android/OriginalSettings/NotificationPanel;->access$1100(Lcom/android/OriginalSettings/NotificationPanel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 586
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I
    invoke-static {v2, v0}, Lcom/android/OriginalSettings/NotificationPanel;->access$1102(Lcom/android/OriginalSettings/NotificationPanel;I)I

    goto :goto_0

    .line 590
    .end local v1           #res:Z
    :pswitch_3
    const/4 v1, 0x1

    .line 591
    .restart local v1       #res:Z
    goto :goto_0

    .line 594
    .end local v1           #res:Z
    :pswitch_4
    const/high16 v2, 0x3f80

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 595
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v2, v3}, Lcom/android/OriginalSettings/NotificationPanel;->access$102(Lcom/android/OriginalSettings/NotificationPanel;Z)Z

    .line 596
    iget-object v2, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/OriginalSettings/NotificationPanel;->access$200(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/NotificationPanel$3;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mOldDropItem:I
    invoke-static {v3}, Lcom/android/OriginalSettings/NotificationPanel;->access$1100(Lcom/android/OriginalSettings/NotificationPanel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 597
    const/4 v1, 0x1

    .line 598
    .restart local v1       #res:Z
    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
