.class final Lcom/android/server/profcollect/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TRACE_COOLDOWN_SECONDS:I = 0x1e

.field private static lastTraceTime:Ljava/time/Instant;


# direct methods
.method public static synthetic $r8$lambda$4AnkZ4N7v4pVtjALMTgogVI3G5o(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/profcollect/Utils;->lambda$traceSystem$0(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CkNXgWI7XkRgi2n7sB3S2tP_TnQ(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/profcollect/Utils;->lambda$traceProcess$2(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EqRtQPpuJSNDaHKUtkHeBHTn2C0(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/profcollect/Utils;->lambda$traceSystem$1(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    sput-object v0, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z
    .locals 2
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;

    .line 113
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 114
    return v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/server/profcollect/Utils;->isInCooldownOrReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    return v0

    .line 119
    :cond_1
    sget-boolean v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsBatteryLow:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isInCooldownOrReset()Z
    .locals 4

    .line 105
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$traceProcess$2(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 90
    int-to-float v0, p3

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lcom/android/server/profcollect/IProfCollectd;->trace_process(Ljava/lang/String;Ljava/lang/String;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initiate trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfcollectForwardingService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$traceSystem$0(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .locals 3
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;
    .param p1, "eventName"    # Ljava/lang/String;

    .line 53
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/profcollect/IProfCollectd;->trace_system(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initiate trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfcollectForwardingService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$traceSystem$1(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .locals 3
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;
    .param p1, "eventName"    # Ljava/lang/String;

    .line 71
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/profcollect/IProfCollectd;->trace_system(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initiate trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfcollectForwardingService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static traceProcess(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 85
    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method static traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)Z
    .locals 2
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;
    .param p1, "eventName"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method static traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "iprofcollectd"    # Lcom/android/server/profcollect/IProfCollectd;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .line 66
    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method static withFrequency(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "configName"    # Ljava/lang/String;
    .param p1, "defaultFrequency"    # I

    .line 37
    const-string/jumbo v0, "profcollect_native_boot"

    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "threshold":I
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v1

    .line 40
    .local v1, "randomNum":I
    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
