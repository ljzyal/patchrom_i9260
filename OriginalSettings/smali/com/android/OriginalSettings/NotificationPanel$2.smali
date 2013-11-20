.class Lcom/android/OriginalSettings/NotificationPanel$2;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 523
    iput-object p1, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 525
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0}, Lcom/android/OriginalSettings/NotificationPanel;->access$100(Lcom/android/OriginalSettings/NotificationPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0, v8}, Lcom/android/OriginalSettings/NotificationPanel;->access$102(Lcom/android/OriginalSettings/NotificationPanel;Z)Z

    .line 527
    const/4 v6, 0x0

    .line 528
    .local v6, selectedItem:I
    const-string v7, ""

    .line 530
    .local v7, seletedNotificationText:Ljava/lang/String;
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x14

    if-ge v6, v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/OriginalSettings/NotificationPanel;->access$200(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I
    invoke-static {v0, v6}, Lcom/android/OriginalSettings/NotificationPanel;->access$302(Lcom/android/OriginalSettings/NotificationPanel;I)I

    .line 536
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I
    invoke-static {v0}, Lcom/android/OriginalSettings/NotificationPanel;->access$300(Lcom/android/OriginalSettings/NotificationPanel;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    .line 537
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/OriginalSettings/NotificationPanel;->access$400(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I
    invoke-static {v1}, Lcom/android/OriginalSettings/NotificationPanel;->access$300(Lcom/android/OriginalSettings/NotificationPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #seletedNotificationText:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 541
    .restart local v7       #seletedNotificationText:Ljava/lang/String;
    :goto_1
    const-string v0, "notification_panel_empty"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    const-string v0, "NotificationPanel"

    const-string v1, "[woong] mLongClickListener notification_panel_empty"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0, v5}, Lcom/android/OriginalSettings/NotificationPanel;->access$102(Lcom/android/OriginalSettings/NotificationPanel;Z)Z

    .line 552
    .end local v6           #selectedItem:I
    .end local v7           #seletedNotificationText:Ljava/lang/String;
    :cond_1
    :goto_2
    return v8

    .line 530
    .restart local v6       #selectedItem:I
    .restart local v7       #seletedNotificationText:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/OriginalSettings/NotificationPanel;->access$500(Lcom/android/OriginalSettings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mOnDragItem:I
    invoke-static {v1}, Lcom/android/OriginalSettings/NotificationPanel;->access$300(Lcom/android/OriginalSettings/NotificationPanel;)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #seletedNotificationText:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .restart local v7       #seletedNotificationText:Ljava/lang/String;
    goto :goto_1

    .line 547
    :cond_4
    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 548
    .local v2, data:Landroid/content/ClipData;
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    new-instance v1, Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;-><init>(Landroid/view/View;)V

    #setter for: Lcom/android/OriginalSettings/NotificationPanel;->mDragShadowBuilder:Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/NotificationPanel;->access$602(Lcom/android/OriginalSettings/NotificationPanel;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;)Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;

    .line 549
    iget-object v0, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    iget-object v1, p0, Lcom/android/OriginalSettings/NotificationPanel$2;->this$0:Lcom/android/OriginalSettings/NotificationPanel;

    #getter for: Lcom/android/OriginalSettings/NotificationPanel;->mDragShadowBuilder:Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;
    invoke-static {v1}, Lcom/android/OriginalSettings/NotificationPanel;->access$600(Lcom/android/OriginalSettings/NotificationPanel;)Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;

    move-result-object v3

    move-object v1, p1

    move-object v4, p1

    #calls: Lcom/android/OriginalSettings/NotificationPanel;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/OriginalSettings/NotificationPanel;->access$700(Lcom/android/OriginalSettings/NotificationPanel;Landroid/view/View;Landroid/content/ClipData;Lcom/android/OriginalSettings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method
