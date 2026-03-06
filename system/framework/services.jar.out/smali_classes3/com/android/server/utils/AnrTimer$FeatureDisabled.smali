.class Lcom/android/server/utils/AnrTimer$FeatureDisabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "AnrTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/AnrTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureDisabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AnrTimer<",
        "TV;>.FeatureSwitch;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method private constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 466
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;)V

    return-void
.end method


# virtual methods
.method accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.Timer",
            "Lock;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    return-object v0
.end method

.method cancel(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 477
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method close()V
    .locals 0

    .line 518
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    return-void
.end method

.method discard(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method dump(Landroid/util/IndentingPrintWriter;Z)V
    .locals 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .line 508
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 509
    :try_start_0
    const-string v1, "started=%d maxStarted=%d running=%d expired=%d errors=%d\n"

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result v2

    .line 510
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v5}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalExpired(Lcom/android/server/utils/AnrTimer;)I

    move-result v5

    .line 511
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v6}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalErrors(Lcom/android/server/utils/AnrTimer;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    .line 509
    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 512
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enabled()Z
    .locals 1

    .line 502
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    const/4 v0, 0x0

    return v0
.end method

.method release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.Timer",
            "Lock;",
            ")V"
        }
    .end annotation

    .line 497
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    .local p1, "timer":Lcom/android/server/utils/AnrTimer$TimerLock;, "Lcom/android/server/utils/AnrTimer<TV;>.TimerLock;"
    return-void
.end method

.method start(Ljava/lang/Object;IIJ)V
    .locals 2
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IIJ)V"
        }
    .end annotation

    .line 470
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureDisabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureDisabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 472
    return-void
.end method
