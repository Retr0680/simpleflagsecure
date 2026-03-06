.class public Lcom/android/server/display/brightness/clamper/PmicMonitor;
.super Ljava/lang/Object;
.source "PmicMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PmicMonitor"


# instance fields
.field private mAvgPowerCircularList:[F

.field private mCurrentTemperature:Landroid/os/Temperature;

.field private mCurrentTimestampMillis:J

.field private mCurrentTotalAvgPower:F

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastEnergyConsumed:F

.field private mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

.field private mPowerListEnd:I

.field private mPowerListStart:I

.field private final mPowerMonitorPeriodConfigMillis:J

.field private final mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field final mThermalService:Landroid/os/IThermalService;


# direct methods
.method public static synthetic $r8$lambda$cEEyBdj4M7vH142zh4xqaprVEkY(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->capturePeriodicDisplayPower()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;
    .param p2, "thermalService"    # Landroid/os/IThermalService;
    .param p3, "pollingMaxTimeMillis"    # I
    .param p4, "pollingMinTimeMillis"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 57
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    .line 62
    iput v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    .line 68
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

    .line 69
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    .line 70
    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/power/PowerStatsInternal;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 71
    div-int v0, p3, p4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 74
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    .line 75
    return-void
.end method

.method private capturePeriodicDisplayPower()V
    .locals 12

    .line 98
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    .line 99
    .local v0, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_6

    .line 102
    :cond_1
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 103
    .local v1, "energyConsumerIds":Landroid/util/IntArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 104
    aget-object v3, v0, v2

    iget-byte v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 105
    aget-object v3, v0, v2

    iget v3, v3, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    .line 103
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 109
    .end local v2    # "i":I
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    const-string v3, "PmicMonitor"

    if-nez v2, :cond_4

    .line 110
    const-string v2, "DISPLAY energyConsumerIds size is null"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 114
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/power/PowerStatsInternal;->getEnergyConsumedAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    .line 115
    .local v2, "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    if-nez v2, :cond_5

    .line 116
    const-string v4, "Energy consumers results are null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 122
    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/power/stats/EnergyConsumerResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v4, "displayResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_1
    goto :goto_4

    .line 126
    .end local v4    # "displayResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 123
    :catch_1
    move-exception v4

    goto :goto_3

    .line 126
    :goto_2
    nop

    .line 127
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    const-string v5, "exception reading getEnergyConsumedAsync: "

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    const/4 v5, 0x0

    move-object v4, v5

    .local v5, "displayResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_4

    .line 123
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "displayResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_3
    nop

    .line 124
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "timeout or interrupt reading getEnergyConsumedAsync failed"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v4, 0x0

    .local v4, "displayResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    goto :goto_1

    .line 131
    :goto_4
    if-eqz v4, :cond_6

    array-length v5, v4

    if-nez v5, :cond_7

    :cond_6
    goto :goto_5

    .line 136
    :cond_7
    const/4 v3, 0x0

    aget-object v5, v4, v3

    iget-wide v5, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    long-to-float v5, v5

    iget v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    sub-float/2addr v5, v6

    .line 137
    .local v5, "energyConsumed":F
    aget-object v6, v4, v3

    iget-wide v6, v6, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iget-wide v8, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 140
    .local v6, "timeIntervalSeconds":F
    div-float v8, v5, v6

    .line 142
    .local v8, "currentPower":F
    div-float/2addr v8, v7

    .line 145
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->getDisplayTemperature()Landroid/os/Temperature;

    move-result-object v7

    .line 146
    .local v7, "displayTemperature":Landroid/os/Temperature;
    const/4 v9, 0x0

    .line 147
    .local v9, "isBufferFull":Z
    iget-object v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    iget v11, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    aput v8, v10, v11

    .line 148
    iget v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    add-float/2addr v10, v8

    iput v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    .line 149
    iget v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    array-length v11, v11

    rem-int/2addr v10, v11

    iput v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    .line 151
    iget v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    iget v11, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListEnd:I

    if-ne v10, v11, :cond_8

    .line 152
    const/4 v9, 0x1

    .line 155
    :cond_8
    iput-object v7, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTemperature:Landroid/os/Temperature;

    .line 156
    aget-object v10, v4, v3

    iget-wide v10, v10, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    long-to-float v10, v10

    iput v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mLastEnergyConsumed:F

    .line 157
    aget-object v3, v4, v3

    iget-wide v10, v3, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iput-wide v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTimestampMillis:J

    .line 159
    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTemperature:Landroid/os/Temperature;

    if-eqz v3, :cond_9

    if-eqz v9, :cond_9

    .line 160
    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;

    iget v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    iget-object v11, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    array-length v11, v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTemperature:Landroid/os/Temperature;

    .line 161
    invoke-virtual {v11}, Landroid/os/Temperature;->getStatus()I

    move-result v11

    .line 160
    invoke-interface {v3, v10, v11}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;->onChanged(FI)V

    .line 165
    :cond_9
    if-eqz v9, :cond_a

    .line 166
    iget v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    iget-object v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    iget v11, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    aget v10, v10, v11

    sub-float/2addr v3, v10

    iput v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mCurrentTotalAvgPower:F

    .line 167
    iget v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    add-int/lit8 v3, v3, 0x1

    iget-object v10, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mAvgPowerCircularList:[F

    array-length v10, v10

    rem-int/2addr v3, v10

    iput v3, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerListStart:I

    .line 169
    :cond_a
    return-void

    .line 132
    .end local v5    # "energyConsumed":F
    .end local v6    # "timeIntervalSeconds":F
    .end local v7    # "displayTemperature":Landroid/os/Temperature;
    .end local v8    # "currentPower":F
    .end local v9    # "isBufferFull":Z
    :goto_5
    const-string v5, "displayResults are null"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 100
    .end local v1    # "energyConsumerIds":Landroid/util/IntArray;
    .end local v2    # "futureECRs":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    .end local v4    # "displayResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    :goto_6
    return-void
.end method

.method private getDisplayTemperature()Landroid/os/Temperature;
    .locals 5

    .line 79
    const-string v0, "PmicMonitor"

    const/4 v1, 0x0

    .line 83
    .local v1, "retTemperature":Landroid/os/Temperature;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/os/IThermalService;->getCurrentTemperaturesWithType(I)[Landroid/os/Temperature;

    move-result-object v2

    .line 85
    .local v2, "temperatures":[Landroid/os/Temperature;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 86
    const-string v3, "Multiple skin temperatures not allowed!"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    .end local v2    # "temperatures":[Landroid/os/Temperature;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 88
    .restart local v2    # "temperatures":[Landroid/os/Temperature;
    :cond_0
    :goto_0
    array-length v3, v2

    if-lez v3, :cond_1

    .line 89
    const/4 v3, 0x0

    aget-object v0, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 93
    .end local v2    # "temperatures":[Landroid/os/Temperature;
    :cond_1
    goto :goto_2

    .line 91
    :goto_1
    nop

    .line 92
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayTemperature failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v1
.end method


# virtual methods
.method public isStopped()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shutdown()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 226
    return-void
.end method

.method public start()V
    .locals 9

    .line 175
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const-string v1, "PmicMonitor"

    if-nez v0, :cond_0

    .line 176
    const-string v0, "Power stats service not found for monitoring."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_1

    .line 180
    const-string v0, "Thermal service not found."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    .line 184
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/PmicMonitor;)V

    iget-wide v4, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    iget-wide v6, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPowerMonitorPeriodConfigMillis:J

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "PMIC already scheduled, stop() called before start."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 202
    :cond_0
    return-void
.end method

.method public updateConfiguration()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/PmicMonitor;->mPmicMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 212
    :cond_0
    return-void
.end method
