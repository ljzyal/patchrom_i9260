.class public Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubicEaseInOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 728
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/CircleUnlockView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockView$CubicEaseInOut;->this$0:Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 731
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .parameter "input"

    .prologue
    const/high16 v4, 0x4000

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    .line 735
    div-float/2addr p1, v2

    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 736
    mul-float v1, v2, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float v0, v1, v3

    .line 740
    .local v0, r:F
    :goto_0
    return v0

    .line 738
    .end local v0           #r:F
    :cond_0
    sub-float/2addr p1, v4

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    add-float v0, v1, v3

    .restart local v0       #r:F
    goto :goto_0
.end method