.class final Lcom/android/server/am/LowMemDetector$LowMemThread;
.super Ljava/lang/Thread;
.source "LowMemDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LowMemDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LowMemThread"
.end annotation


# instance fields
.field private mIsTracingMemCriticalLow:Z

.field final synthetic this$0:Lcom/android/server/am/LowMemDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/LowMemDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    .line 106
    const-string p1, "LowMemThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 113
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$mwaitForPressure(Lcom/android/server/am/LowMemDetector;)I

    move-result v0

    .line 115
    .local v0, "newPressureState":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    .line 116
    .local v1, "isCriticalLowMemory":Z
    :goto_1
    const-wide/16 v3, 0x40

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    if-nez v5, :cond_1

    .line 117
    const-string v5, "criticalLowMemory"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_2

    .line 118
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    if-eqz v5, :cond_2

    .line 119
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 121
    :cond_2
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->mIsTracingMemCriticalLow:Z

    .line 122
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v3, v2}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmAvailable(Lcom/android/server/am/LowMemDetector;Z)V

    .line 125
    nop

    .line 136
    .end local v0    # "newPressureState":I
    .end local v1    # "isCriticalLowMemory":Z
    return-void

    .line 128
    .restart local v0    # "newPressureState":I
    .restart local v1    # "isCriticalLowMemory":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v2}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPressureStateLock(Lcom/android/server/am/LowMemDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v3, v0}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fputmPressureState(Lcom/android/server/am/LowMemDetector;I)V

    .line 132
    sget-object v3, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_MEMORY_STATUS_REPORTER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v3}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/INtMemoryStatusReporter;

    iget-object v4, p0, Lcom/android/server/am/LowMemDetector$LowMemThread;->this$0:Lcom/android/server/am/LowMemDetector;

    invoke-static {v4}, Lcom/android/server/am/LowMemDetector;->-$$Nest$fgetmPressureState(Lcom/android/server/am/LowMemDetector;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/am/INtMemoryStatusReporter;->updatePsi(I)V

    .line 134
    monitor-exit v2

    .line 135
    .end local v0    # "newPressureState":I
    .end local v1    # "isCriticalLowMemory":Z
    goto :goto_0

    .line 134
    .restart local v0    # "newPressureState":I
    .restart local v1    # "isCriticalLowMemory":Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
