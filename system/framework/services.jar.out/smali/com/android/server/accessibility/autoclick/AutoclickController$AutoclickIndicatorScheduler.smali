.class final Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoclick/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoclickIndicatorScheduler"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorCallbackActive:Z

.field private mScheduledShowIndicatorTime:J

.field final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 564
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    .line 565
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    .line 566
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 603
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 607
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    .line 608
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    .line 609
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method public run()V
    .locals 5

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 572
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 574
    return-void

    .line 577
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v2, v2, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v2}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->redrawIndicator()V

    .line 578
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    .line 579
    return-void
.end method

.method public update()V
    .locals 6

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    .line 586
    .local v0, "scheduledShowIndicatorTime":J
    iget-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 588
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    .line 589
    return-void

    .line 592
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    if-eqz v4, :cond_1

    .line 593
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mIndicatorCallbackActive:Z

    .line 597
    iput-wide v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mScheduledShowIndicatorTime:J

    .line 599
    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    return-void
.end method

.method public updateCursorAreaSize(I)V
    .locals 1
    .param p1, "size"    # I

    .line 613
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->setRadius(I)V

    .line 614
    return-void
.end method
