.class final Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoclick/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClickScheduler"
.end annotation


# static fields
.field private static final DEFAULT_MOVEMENT_SLOP:D = 20.0


# instance fields
.field private mActive:Z

.field private mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mDelay:I

.field private mEventPolicyFlags:I

.field private mHandler:Landroid/os/Handler;

.field private mHoveredState:Z

.field private mIgnoreMinorCursorMovement:Z

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mMetaState:I

.field private mMovementSlop:D

.field private mRevertToLeftClick:Z

.field private mScheduledClickTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventPolicyFlags(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastMotionEvent(Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;)Landroid/view/MotionEvent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/autoclick/AutoclickController;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMovementSlop:D

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    .line 670
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 673
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 674
    iput p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    .line 675
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 676
    return-void
.end method

.method private cacheLastEvent(Landroid/view/MotionEvent;IZ)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "useAsAnchor"    # Z

    .line 806
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 809
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 810
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    .line 811
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misHovered(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    .line 813
    if-eqz p3, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 815
    .local v0, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 817
    .end local v0    # "pointerIndex":I
    :cond_1
    return-void
.end method

.method private detectMovement(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 844
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 845
    return v1

    .line 847
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 848
    .local v0, "pointerIndex":I
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 849
    .local v2, "deltaX":F
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 850
    .local v3, "deltaY":F
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 852
    .local v4, "delta":D
    nop

    .line 854
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    .line 855
    .local v6, "slop":D
    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private rescheduleClick(I)V
    .locals 5
    .param p1, "delay"    # I

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 783
    .local v0, "clickTime":J
    iget-boolean v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 784
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 785
    return-void

    .line 788
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-eqz v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    .line 793
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 795
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    return-void
.end method

.method private resetInternalState()V
    .locals 2

    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    .line 821
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 825
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    .line 827
    nop

    .line 830
    return-void
.end method

.method private resetSelectedClickTypeIfNecessary()V
    .locals 1

    .line 833
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickTypePanel:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->resetSelectedClickType()V

    .line 836
    :cond_0
    return-void
.end method

.method private sendClick()V
    .locals 8

    .line 874
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_1

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 881
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->exitScrollMode()V

    .line 882
    return-void

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 888
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 892
    .local v0, "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v2, v2, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mLastCursorX:F

    .line 893
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->mClickScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;

    iget-object v2, v2, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mLastCursorY:F

    .line 895
    .end local v0    # "pointerIndex":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->show()V

    .line 897
    :cond_4
    return-void

    .line 900
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 902
    .restart local v0    # "pointerIndex":I
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    .line 903
    new-array v1, v2, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 904
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v1, v3

    .line 907
    :cond_6
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 909
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-nez v1, :cond_7

    .line 910
    new-array v1, v2, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 911
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v3

    .line 913
    :cond_7
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 915
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 917
    .local v1, "now":J
    const/4 v3, 0x1

    .line 918
    .local v3, "actionButton":I
    iget-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHoveredState:Z

    if-eqz v4, :cond_8

    .line 923
    const/4 v3, 0x1

    goto :goto_0

    .line 925
    :cond_8
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v4}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 933
    :pswitch_0
    const/4 v3, 0x1

    .line 934
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v4

    int-to-long v4, v4

    .line 935
    .local v4, "doubleTapMinimumTimeout":J
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    .line 936
    add-long v6, v1, v4

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    .line 937
    return-void

    .line 930
    .end local v4    # "doubleTapMinimumTimeout":J
    :pswitch_1
    const/4 v3, 0x2

    .line 931
    goto :goto_0

    .line 927
    :pswitch_2
    const/4 v3, 0x1

    .line 928
    nop

    .line 943
    :goto_0
    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendMotionEvent(IJ)V

    .line 944
    return-void

    .line 875
    .end local v0    # "pointerIndex":I
    .end local v1    # "now":J
    .end local v3    # "actionButton":I
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendMotionEvent(IJ)V
    .locals 17
    .param p1, "actionButton"    # I
    .param p2, "eventTime"    # J

    .line 947
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v8, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v9, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 959
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 961
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    iget-object v1, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 962
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    .line 948
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-wide/from16 v3, p2

    move/from16 v10, p1

    move-wide/from16 v1, p2

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 964
    .local v3, "downEvent":Landroid/view/MotionEvent;
    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 965
    .local v1, "pressEvent":Landroid/view/MotionEvent;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 966
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 968
    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 969
    .local v2, "releaseEvent":Landroid/view/MotionEvent;
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 970
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 971
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 973
    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 974
    .local v5, "upEvent":Landroid/view/MotionEvent;
    invoke-virtual {v5, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 975
    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 977
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v6, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v4, v3, v3, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$001(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 978
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 980
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v6, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v4, v1, v1, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$101(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 981
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 983
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v6, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v4, v2, v2, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$201(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 984
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 986
    iget-object v4, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget v6, v0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-static {v4, v5, v5, v6}, Lcom/android/server/accessibility/autoclick/AutoclickController;->access$301(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 987
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 988
    return-void
.end method

.method private updateMovementSlop(D)V
    .locals 0
    .param p1, "slop"    # D

    .line 867
    iput-wide p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMovementSlop:D

    .line 868
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    if-nez v0, :cond_0

    .line 722
    return-void

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 725
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method getDelayForTesting()I
    .locals 1

    .line 765
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    return v0
.end method

.method getIsActiveForTesting()Z
    .locals 1

    .line 742
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    return v0
.end method

.method getMetaStateForTesting()I
    .locals 1

    .line 737
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    return v0
.end method

.method getRevertToLeftClickForTesting()Z
    .locals 1

    .line 770
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    return v0
.end method

.method getScheduledClickTimeForTesting()J
    .locals 2

    .line 747
    iget-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    return-wide v0
.end method

.method public run()V
    .locals 5

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 682
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 683
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    return-void

    .line 687
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->sendClick()V

    .line 688
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetInternalState()V

    .line 689
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->resetSelectedClickTypeIfNecessary()V

    .line 690
    return-void
.end method

.method public setIgnoreMinorCursorMovement(Z)V
    .locals 0
    .param p1, "ignoreMinorCursorMovement"    # Z

    .line 859
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mIgnoreMinorCursorMovement:Z

    .line 860
    return-void
.end method

.method public setRevertToLeftClick(Z)V
    .locals 0
    .param p1, "revertToLeftClick"    # Z

    .line 863
    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mRevertToLeftClick:Z

    .line 864
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ClickScheduler: { active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 994
    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    const-string v1, ", scheduledClickTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mScheduledClickTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, ", anchor={x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 997
    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mAnchorCoords:Landroid/view/MotionEvent$PointerCoords;

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    const-string v1, ", metastate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    const-string v1, ", policyFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mEventPolicyFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1000
    const-string v1, ", lastMotionEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->detectMovement(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 705
    .local v0, "moved":Z
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mLastMotionEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->cacheLastEvent(Landroid/view/MotionEvent;IZ)V

    .line 707
    if-eqz v0, :cond_2

    .line 708
    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->rescheduleClick(I)V

    .line 710
    nop

    .line 717
    :cond_2
    return-void
.end method

.method public updateDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .line 756
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mDelay:I

    .line 758
    nop

    .line 761
    return-void
.end method

.method public updateMetaState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 732
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$ClickScheduler;->mMetaState:I

    .line 733
    return-void
.end method
