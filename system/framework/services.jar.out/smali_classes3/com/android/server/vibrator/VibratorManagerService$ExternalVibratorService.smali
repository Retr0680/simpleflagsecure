.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2593
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method

.method private hasExternalControlCapability()Z
    .locals 4

    .line 2741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2742
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/VibratorController;

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2743
    const/4 v1, 0x1

    return v1

    .line 2741
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2746
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)Landroid/os/ExternalVibrationScale;
    .locals 11
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 2597
    const-string v0, "onExternalVibrationStart"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2601
    :try_start_0
    new-instance v0, Lcom/android/server/vibrator/ExternalVibrationSession;

    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmExternalVibrationCallbacks(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationCallbacks;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/android/server/vibrator/ExternalVibrationSession;-><init>(Landroid/os/ExternalVibration;Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;)V

    .line 2604
    .local v0, "session":Lcom/android/server/vibrator/ExternalVibrationSession;
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->muteScale()V

    .line 2605
    const/4 v3, 0x0

    .line 2607
    .local v3, "waitForCompletion":Z
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2608
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->hasExternalControlCapability()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2609
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v5, v0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2610
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2610
    return-object v5

    .line 2665
    :catchall_0
    move-exception v5

    goto/16 :goto_3

    .line 2613
    :cond_0
    :try_start_2
    const-string v5, "android.permission.VIBRATE"

    .line 2615
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v6

    .line 2613
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v8, v7}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-eqz v5, :cond_1

    .line 2617
    const-string v5, "VibratorManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_MISSING_PERMISSION:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v5, v0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2621
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2621
    return-object v5

    .line 2624
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {v5, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v5

    .line 2625
    .local v5, "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    if-eqz v5, :cond_2

    .line 2626
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6, v0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2627
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v6

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2627
    return-object v6

    .line 2630
    :cond_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v6

    instance-of v8, v6, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v8, :cond_3

    check-cast v6, Lcom/android/server/vibrator/ExternalVibrationSession;

    .line 2631
    .local v6, "evs":Lcom/android/server/vibrator/ExternalVibrationSession;
    invoke-virtual {v6, p1}, Lcom/android/server/vibrator/ExternalVibrationSession;->isHoldingSameVibration(Landroid/os/ExternalVibration;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2634
    invoke-virtual {v6}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v7

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2634
    return-object v7

    .line 2638
    .end local v6    # "evs":Lcom/android/server/vibrator/ExternalVibrationSession;
    :cond_3
    :try_start_5
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldIgnoreForOngoingLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)Lcom/android/server/vibrator/Vibration$EndInfo;

    move-result-object v6

    .line 2639
    .local v6, "ignoreInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    if-eqz v6, :cond_4

    .line 2640
    iget-object v7, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v8, v6, Lcom/android/server/vibrator/Vibration$EndInfo;->status:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v9, v6, Lcom/android/server/vibrator/Vibration$EndInfo;->endedBy:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {v7, v0, v8, v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2641
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v7

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2641
    return-object v7

    .line 2645
    :cond_4
    :try_start_6
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v9, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v10, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-static {v8, v9, v10}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearNextSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2646
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v8, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    .line 2648
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v8}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2659
    iget-object v8, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v9, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v9

    .line 2660
    invoke-interface {v9}, Lcom/android/server/vibrator/VibrationSession;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v9

    .line 2659
    invoke-virtual {v8, v9}, Lcom/android/server/vibrator/VibrationStats;->reportInterruptedAnotherVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 2661
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v8}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v8

    sget-object v9, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v10, v0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-interface {v8, v9, v10, v7}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 2663
    const/4 v3, 0x1

    .line 2665
    .end local v5    # "ignoreStatus":Lcom/android/server/vibrator/VibrationSession$Status;
    .end local v6    # "ignoreInfo":Lcom/android/server/vibrator/Vibration$EndInfo;
    :cond_5
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2667
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 2668
    :try_start_7
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v8, v9}, Lcom/android/server/vibrator/VibratorManagerService;->waitForCurrentSessionEnd(J)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2669
    const-string v5, "VibratorManagerService"

    const-string v6, "Timed out waiting for vibration to cancel"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2671
    :try_start_8
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v6

    if-ne v6, v0, :cond_6

    .line 2672
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    goto :goto_0

    .line 2676
    :catchall_1
    move-exception v4

    goto :goto_1

    .line 2674
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v4, v0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2675
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2675
    return-object v4

    .line 2676
    :goto_1
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .end local p1    # "vib":Landroid/os/ExternalVibration;
    :try_start_a
    throw v4

    .line 2715
    .end local v0    # "session":Lcom/android/server/vibrator/ExternalVibrationSession;
    .end local v3    # "waitForCompletion":Z
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .restart local p1    # "vib":Landroid/os/ExternalVibration;
    :catchall_2
    move-exception v0

    goto/16 :goto_4

    .line 2679
    .restart local v0    # "session":Lcom/android/server/vibrator/ExternalVibrationSession;
    .restart local v3    # "waitForCompletion":Z
    :cond_7
    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2680
    :try_start_b
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmNextSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v6

    if-ne v6, v0, :cond_a

    .line 2682
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmNextSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    .line 2688
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->linkToDeath()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2689
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v6, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-static {v4, v0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendSessionLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 2690
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v4

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2690
    return-object v4

    .line 2713
    :catchall_3
    move-exception v4

    goto :goto_2

    .line 2693
    :cond_8
    :try_start_c
    const-string v6, "VibratorManagerService"

    const-string v8, "Vibrator going under external control."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v8, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-static {v6, v7, v8}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;ZLcom/android/server/vibrator/VibrationStats;)V

    .line 2697
    const-string v6, "VibratorManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Playing external vibration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2700
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v7

    .line 2699
    invoke-static {v6, v7, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v4

    .line 2701
    .local v4, "attrs":Landroid/os/VibrationAttributes;
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2704
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 2706
    :cond_9
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationSession;)V

    .line 2707
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/android/server/vibrator/ExternalVibrationSession;->scale(Lcom/android/server/vibrator/VibrationScaler;I)V

    .line 2711
    iget-object v6, v0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v6}, Lcom/android/server/vibrator/VibrationStats;->reportStarted()V

    .line 2712
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v6

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2712
    return-object v6

    .line 2686
    .end local v4    # "attrs":Landroid/os/VibrationAttributes;
    :cond_a
    :try_start_d
    invoke-virtual {v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->getScale()Landroid/os/ExternalVibrationScale;

    move-result-object v4

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 2715
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2686
    return-object v4

    .line 2713
    :goto_2
    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .end local p1    # "vib":Landroid/os/ExternalVibration;
    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 2665
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .restart local p1    # "vib":Landroid/os/ExternalVibration;
    :goto_3
    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .end local p1    # "vib":Landroid/os/ExternalVibration;
    :try_start_11
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2715
    .end local v0    # "session":Lcom/android/server/vibrator/ExternalVibrationSession;
    .end local v3    # "waitForCompletion":Z
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .restart local p1    # "vib":Landroid/os/ExternalVibration;
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2716
    throw v0
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .locals 7
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 2721
    const-string v0, "onExternalVibrationStop"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2723
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2724
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v3

    instance-of v4, v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/server/vibrator/ExternalVibrationSession;

    .line 2725
    .local v3, "evs":Lcom/android/server/vibrator/ExternalVibrationSession;
    invoke-virtual {v3, p1}, Lcom/android/server/vibrator/ExternalVibrationSession;->isHoldingSameVibration(Landroid/os/ExternalVibration;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2727
    const-string v4, "VibratorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping external vibration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v4

    sget-object v5, Lcom/android/server/vibrator/VibrationSession$Status;->FINISHED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {v4, v5}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    goto :goto_0

    .line 2734
    .end local v3    # "evs":Lcom/android/server/vibrator/ExternalVibrationSession;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 2730
    :cond_0
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    .line 2731
    const-string v3, "VibratorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VibrationSession invalid on external vibration stop. currentSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentSession(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSession;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", received="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2736
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2737
    nop

    .line 2738
    return-void

    .line 2734
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .end local p1    # "vib":Landroid/os/ExternalVibration;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2736
    .restart local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
    .restart local p1    # "vib":Landroid/os/ExternalVibration;
    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2737
    throw v0
.end method
