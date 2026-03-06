.class final Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;
.super Ljava/lang/Object;
.source "CpuMonitorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifyCpuAvailabilityChangeRunnable"
.end annotation


# instance fields
.field private mCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;


# direct methods
.method private constructor <init>(Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 531
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->this$0:Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;Lcom/android/server/cpu/CpuMonitorService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;-><init>(Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/server/cpu/CpuAvailabilityInfo;)V
    .locals 2
    .param p1, "cpuAvailabilityInfo"    # Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 537
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->mCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 539
    monitor-exit v0

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->this$0:Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;

    iget-object v1, v1, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo;->callback:Lcom/android/server/cpu/CpuMonitorInternal$CpuAvailabilityCallback;

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpuAvailabilityCallbackInfo$NotifyCpuAvailabilityChangeRunnable;->mCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    invoke-interface {v1, v2}, Lcom/android/server/cpu/CpuMonitorInternal$CpuAvailabilityCallback;->onAvailabilityChanged(Lcom/android/server/cpu/CpuAvailabilityInfo;)V

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
