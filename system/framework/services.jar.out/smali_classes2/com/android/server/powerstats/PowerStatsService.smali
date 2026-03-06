.class public Lcom/android/server/powerstats/PowerStatsService;
.super Lcom/android/server/SystemService;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/PowerStatsService$LocalService;,
        Lcom/android/server/powerstats/PowerStatsService$Injector;,
        Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;,
        Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    }
.end annotation


# static fields
.field private static final DATA_STORAGE_SUBDIR:Ljava/lang/String; = "powerstats"

.field private static final DATA_STORAGE_VERSION:I = 0x0

.field private static final DEBUG:Z = false

.field private static final INTERVAL_RANDOM_NOISE_GENERATION_ALPHA:D = 50.0

.field static final KEY_POWER_MONITOR_API_ENABLED:Ljava/lang/String; = "power_monitor_api_enabled"

.field private static final MAX_FINE_POWER_MONITOR_AGE_MILLIS:J = 0xfaL

.field private static final MAX_POWER_MONITOR_AGE_MILLIS:J = 0x4e20L

.field private static final MAX_RANDOM_NOISE_UWS:J = 0x989680L

.field private static final METER_CACHE_FILENAME:Ljava/lang/String; = "meterCache"

.field private static final METER_FILENAME:Ljava/lang/String; = "log.powerstats.meter.0"

.field private static final MODEL_CACHE_FILENAME:Ljava/lang/String; = "modelCache"

.field private static final MODEL_FILENAME:Ljava/lang/String; = "log.powerstats.model.0"

.field private static final RESIDENCY_CACHE_FILENAME:Ljava/lang/String; = "residencyCache"

.field private static final RESIDENCY_FILENAME:Ljava/lang/String; = "log.powerstats.residency.0"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

.field private final mClock:Lcom/android/internal/os/Clock;

.field private mContext:Landroid/content/Context;

.field private mDataStoragePath:Ljava/io/File;

.field private final mDeviceConfig:Landroid/provider/DeviceConfigInterface;

.field private final mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

.field private mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

.field private mEnergyMeters:[Landroid/hardware/power/stats/Channel;

.field private mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field private mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

.field private mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

.field private mLooper:Landroid/os/Looper;

.field private mPowerMonitorApiEnabled:Z

.field private mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

.field private volatile mPowerMonitors:[Landroid/os/PowerMonitor;

.field private mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field private mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

.field private mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

.field private final mService:Landroid/os/IBinder;

.field private mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceConfig(Lcom/android/server/powerstats/PowerStatsService;)Landroid/provider/DeviceConfigInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetEnergyConsumedAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStateResidencyAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadEnergyMeterAsync(Lcom/android/server/powerstats/PowerStatsService;Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsService;->readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 413
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsService$Injector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 418
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;-><init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService-IA;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    .line 119
    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    .line 122
    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    .line 216
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/PowerStatsService$1;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Landroid/os/IBinder;

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 419
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    .line 420
    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 421
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    .line 422
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 423
    return-void
.end method

.method private collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I
    .locals 8
    .param p1, "powerMonitorStates"    # [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .param p2, "type"    # I

    .line 853
    const/4 v0, 0x0

    .line 854
    .local v0, "count":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 855
    .local v4, "monitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    iget-object v5, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v5}, Landroid/os/PowerMonitor;->getType()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 856
    add-int/lit8 v0, v0, 0x1

    .line 854
    .end local v4    # "monitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 860
    :cond_1
    if-nez v0, :cond_2

    .line 861
    const/4 v1, 0x0

    return-object v1

    .line 864
    :cond_2
    new-array v1, v0, [I

    .line 865
    .local v1, "ids":[I
    const/4 v3, 0x0

    .line 866
    .local v3, "index":I
    array-length v4, p1

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, p1, v2

    .line 867
    .local v5, "monitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    iget-object v6, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v6}, Landroid/os/PowerMonitor;->getType()I

    move-result v6

    if-ne v6, p2, :cond_3

    .line 868
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "index":I
    .local v6, "index":I
    iget v7, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    aput v7, v1, v3

    move v3, v6

    .line 866
    .end local v5    # "monitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .end local v6    # "index":I
    .restart local v3    # "index":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 871
    :cond_4
    return-object v1
.end method

.method private ensurePowerMonitors()V
    .locals 13

    .line 595
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    if-eqz v0, :cond_0

    .line 596
    return-void

    .line 599
    :cond_0
    monitor-enter p0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    if-eqz v0, :cond_1

    .line 601
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    if-nez v0, :cond_2

    .line 605
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createIntervalRandomNoiseGenerator()Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    .line 608
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 609
    new-array v0, v1, [Landroid/os/PowerMonitor;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 610
    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 611
    new-array v0, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 612
    monitor-exit p0

    return-void

    .line 615
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v0, "monitors":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v2, "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;>;"
    const/4 v3, 0x0

    .line 620
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v4

    .line 621
    .local v4, "channels":[Landroid/hardware/power/stats/Channel;
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 622
    array-length v6, v4

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    .line 623
    .local v8, "channel":Landroid/hardware/power/stats/Channel;
    new-instance v9, Landroid/os/PowerMonitor;

    add-int/lit8 v10, v3, 0x1

    .line 625
    .end local v3    # "index":I
    .local v10, "index":I
    invoke-direct {p0, v8}, Lcom/android/server/powerstats/PowerStatsService;->getChannelName(Landroid/hardware/power/stats/Channel;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v9, v3, v12, v11}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    .line 626
    .local v9, "monitor":Landroid/os/PowerMonitor;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iget v11, v8, Landroid/hardware/power/stats/Channel;->id:I

    invoke-direct {v3, v9, v11, v5}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;ILcom/android/server/powerstats/PowerStatsService-IA;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    nop

    .end local v8    # "channel":Landroid/hardware/power/stats/Channel;
    .end local v9    # "monitor":Landroid/os/PowerMonitor;
    add-int/lit8 v7, v7, 0x1

    move v3, v10

    goto :goto_0

    .line 630
    .end local v10    # "index":I
    .restart local v3    # "index":I
    :cond_4
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v6

    .line 631
    .local v6, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    if-eqz v6, :cond_5

    .line 632
    array-length v7, v6

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 633
    .local v9, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    new-instance v10, Landroid/os/PowerMonitor;

    add-int/lit8 v11, v3, 0x1

    .line 635
    .end local v3    # "index":I
    .local v11, "index":I
    invoke-direct {p0, v9, v6}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v3, v1, v12}, Landroid/os/PowerMonitor;-><init>(IILjava/lang/String;)V

    .line 636
    .local v10, "monitor":Landroid/os/PowerMonitor;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v3, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iget v12, v9, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-direct {v3, v10, v12, v5}, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;-><init>(Landroid/os/PowerMonitor;ILcom/android/server/powerstats/PowerStatsService-IA;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    nop

    .end local v9    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v10    # "monitor":Landroid/os/PowerMonitor;
    add-int/lit8 v8, v8, 0x1

    move v3, v11

    goto :goto_1

    .line 640
    .end local v11    # "index":I
    .restart local v3    # "index":I
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/PowerMonitor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PowerMonitor;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 641
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 642
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    iput-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 643
    .end local v0    # "monitors":Ljava/util/List;, "Ljava/util/List<Landroid/os/PowerMonitor;>;"
    .end local v2    # "states":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;>;"
    .end local v3    # "index":I
    .end local v4    # "channels":[Landroid/hardware/power/stats/Channel;
    .end local v6    # "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    monitor-exit p0

    .line 644
    return-void

    .line 643
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getChannelName(Landroid/hardware/power/stats/Channel;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Landroid/hardware/power/stats/Channel;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/hardware/power/stats/Channel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p1, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p1, Landroid/hardware/power/stats/Channel;->subsystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEnergyConsumedAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 16
    .param p2, "energyConsumerIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyConsumerResult;",
            ">;[I)V"
        }
    .end annotation

    .line 479
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyConsumerResult;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .local v0, "results":[Landroid/hardware/power/stats/EnergyConsumerResult;
    nop

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/android/server/powerstats/PowerStatsService;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v3

    .line 487
    .local v3, "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    if-eqz v3, :cond_8

    .line 489
    array-length v4, v2

    if-nez v4, :cond_0

    .line 491
    array-length v4, v3

    .local v4, "expectedLength":I
    goto :goto_0

    .line 493
    .end local v4    # "expectedLength":I
    :cond_0
    array-length v4, v2

    .line 496
    .restart local v4    # "expectedLength":I
    :goto_0
    if-eqz v0, :cond_1

    array-length v5, v0

    if-eq v4, v5, :cond_8

    .line 498
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "Requested ids:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    array-length v6, v2

    if-nez v6, :cond_2

    .line 501
    const-string v6, "ALL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_2
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v2

    const-string v9, ", "

    const-string v10, ")"

    const-string v11, ",name:"

    const-string v12, ",ord:"

    const-string v13, "(type:"

    if-ge v7, v8, :cond_4

    .line 505
    aget v8, v2, v7

    .line 506
    .local v8, "id":I
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    aget-object v13, v3, v8

    iget-byte v13, v13, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    aget-object v12, v3, v8

    iget v12, v12, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    aget-object v11, v3, v8

    iget-object v11, v11, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    add-int/lit8 v10, v4, -0x1

    if-eq v7, v10, :cond_3

    .line 515
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .end local v8    # "id":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 518
    .end local v7    # "i":I
    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    const-string v8, ", Received result ids:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    if-nez v0, :cond_5

    .line 522
    const-string/jumbo v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 524
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    array-length v6, v0

    .line 526
    .local v6, "resultLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_7

    .line 527
    aget-object v14, v0, v8

    iget v14, v14, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 528
    .local v14, "id":I
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    aget-object v15, v3, v14

    iget-byte v15, v15, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    aget-object v15, v3, v14

    iget v15, v15, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    aget-object v15, v3, v14

    iget-object v15, v15, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v15, v6, -0x1

    if-eq v8, v15, :cond_6

    .line 537
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .end local v14    # "id":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    nop

    .line 540
    .end local v8    # "i":I
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .end local v6    # "resultLength":I
    :goto_3
    sget-object v6, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing result from getEnergyConsumedAsync call. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v4    # "expectedLength":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 546
    return-void

    .line 480
    .end local v0    # "results":[Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v3    # "energyConsumers":[Landroid/hardware/power/stats/EnergyConsumer;
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 482
    return-void
.end method

.method private getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 1

    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    if-nez v0, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 399
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyConsumers:[Landroid/hardware/power/stats/EnergyConsumer;

    monitor-exit p0

    return-object v0

    .line 400
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getEnergyConsumerName(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumer;)Ljava/lang/String;
    .locals 7
    .param p1, "consumer"    # Landroid/hardware/power/stats/EnergyConsumer;
    .param p2, "energyConsumers"    # [Landroid/hardware/power/stats/EnergyConsumer;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-byte v1, p1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    packed-switch v1, :pswitch_data_0

    .line 683
    iget-object v1, p1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isBlank()Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    iget-object v1, p1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 686
    :cond_0
    const-string v1, "CONSUMER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 680
    :pswitch_0
    const-string v1, "CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    goto :goto_0

    .line 677
    :pswitch_1
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    goto :goto_0

    .line 674
    :pswitch_2
    const-string v1, "MOBILE_RADIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    goto :goto_0

    .line 671
    :pswitch_3
    const-string v1, "GNSS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    goto :goto_0

    .line 668
    :pswitch_4
    const-string v1, "DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    goto :goto_0

    .line 665
    :pswitch_5
    const-string v1, "CPU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    goto :goto_0

    .line 662
    :pswitch_6
    const-string v1, "BLUETOOTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    nop

    .line 690
    :goto_0
    iget v1, p1, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 691
    .local v1, "hasOrdinal":Z
    :goto_1
    if-nez v1, :cond_3

    .line 693
    array-length v3, p2

    :goto_2
    nop

    if-ge v2, v3, :cond_3

    aget-object v4, p2, v2

    .line 694
    .local v4, "aConsumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    iget-byte v6, p1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v5, v6, :cond_2

    iget v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    if-eqz v5, :cond_2

    .line 695
    const/4 v1, 0x1

    .line 696
    goto :goto_3

    .line 693
    .end local v4    # "aConsumer":Landroid/hardware/power/stats/EnergyConsumer;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 700
    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 701
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 703
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 1

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mEnergyMeters:[Landroid/hardware/power/stats/Channel;

    monitor-exit p0

    return-object v0

    .line 409
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 390
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-object v0

    .line 391
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLooper()Landroid/os/Looper;
    .locals 2

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 379
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 382
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v0

    .line 382
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->getPowerStatsHALWrapperImpl()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    return-object v0
.end method

.method private getStateResidencyAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 1
    .param p2, "powerEntityIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/StateResidencyResult;",
            ">;[I)V"
        }
    .end annotation

    .line 551
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/StateResidencyResult;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private onBootCompleted()V
    .locals 12

    .line 353
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createDataStoragePath()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    .line 358
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/powerstats/PowerStatsService;->mDataStoragePath:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 359
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterFilename()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 360
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createMeterCacheFilename()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelFilename()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 361
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createModelCacheFilename()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyFilename()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    .line 362
    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createResidencyCacheFilename()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v11

    .line 358
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createPowerStatsLogger(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    .line 363
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createBatteryTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/BatteryTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mBatteryTrigger:Lcom/android/server/powerstats/BatteryTrigger;

    .line 364
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createTimerTrigger(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)Lcom/android/server/powerstats/TimerTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mTimerTrigger:Lcom/android/server/powerstats/TimerTrigger;

    goto :goto_0

    .line 366
    :cond_0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start PowerStatsService loggers"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void
.end method

.method private onSystemServicesReady()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/powerstats/PowerStatsService$Injector;->createStatsPullerImpl(Landroid/content/Context;Landroid/power/PowerStatsInternal;)Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPullAtomCallback:Lcom/android/server/powerstats/StatsPullAtomCallbackImpl;

    .line 333
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfigListener:Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService$DeviceConfigListener;->startListening()V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->refreshFlags()V

    .line 335
    return-void
.end method

.method private readEnergyMeterAsync(Ljava/util/concurrent/CompletableFuture;[I)V
    .locals 1
    .param p2, "channelIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "[",
            "Landroid/hardware/power/stats/EnergyMeasurement;",
            ">;[I)V"
        }
    .end annotation

    .line 560
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[Landroid/hardware/power/stats/EnergyMeasurement;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setPowerMonitorApiEnabled(Z)V
    .locals 1
    .param p1, "powerMonitorApiEnabled"    # Z

    .line 586
    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    if-eq p1, v0, :cond_0

    .line 587
    iput-boolean p1, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorApiEnabled:Z

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    .line 589
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 590
    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 592
    :cond_0
    return-void
.end method

.method private updateEnergyConsumers([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V
    .locals 11
    .param p1, "powerMonitorStates"    # [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 799
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    move-result-object v1

    .line 800
    .local v1, "ids":[I
    if-nez v1, :cond_0

    .line 801
    return-void

    .line 804
    :cond_0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v2

    .line 805
    .local v2, "energyConsumerResults":[Landroid/hardware/power/stats/EnergyConsumerResult;
    if-nez v2, :cond_1

    .line 806
    return-void

    .line 809
    :cond_1
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 810
    .local v5, "powerMonitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    iget-object v6, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v6}, Landroid/os/PowerMonitor;->getType()I

    move-result v6

    if-nez v6, :cond_3

    .line 812
    array-length v6, v2

    move v7, v0

    :goto_1
    nop

    if-ge v7, v6, :cond_3

    aget-object v8, v2, v7

    .line 813
    .local v8, "energyConsumerResult":Landroid/hardware/power/stats/EnergyConsumerResult;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    iget v10, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    if-ne v9, v10, :cond_2

    .line 814
    iget-wide v6, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-wide v6, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 815
    iget-wide v6, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    iput-wide v6, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 816
    iget-wide v6, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    iput-wide v6, v5, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    .line 817
    goto :goto_2

    .line 813
    :cond_2
    nop

    .line 812
    .end local v8    # "energyConsumerResult":Landroid/hardware/power/stats/EnergyConsumerResult;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 809
    .end local v5    # "powerMonitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 822
    :cond_4
    return-void
.end method

.method private updateEnergyMeasurements([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V
    .locals 12
    .param p1, "powerMonitorStates"    # [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 825
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/powerstats/PowerStatsService;->collectIds([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;I)[I

    move-result-object v1

    .line 826
    .local v1, "ids":[I
    if-nez v1, :cond_0

    .line 827
    return-void

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v2

    .line 831
    .local v2, "energyMeasurements":[Landroid/hardware/power/stats/EnergyMeasurement;
    if-nez v2, :cond_1

    .line 832
    return-void

    .line 835
    :cond_1
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p1, v5

    .line 836
    .local v6, "powerMonitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    iget-object v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->powerMonitor:Landroid/os/PowerMonitor;

    invoke-virtual {v7}, Landroid/os/PowerMonitor;->getType()I

    move-result v7

    if-ne v7, v0, :cond_3

    .line 838
    array-length v7, v2

    move v8, v4

    :goto_1
    nop

    if-ge v8, v7, :cond_3

    aget-object v9, v2, v8

    .line 839
    .local v9, "energyMeasurement":Landroid/hardware/power/stats/EnergyMeasurement;
    iget v10, v9, Landroid/hardware/power/stats/EnergyMeasurement;->id:I

    iget v11, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->id:I

    if-ne v10, v11, :cond_2

    .line 840
    iget-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    .line 841
    iget-wide v7, v9, Landroid/hardware/power/stats/EnergyMeasurement;->energyUWs:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 842
    iget-wide v7, v9, Landroid/hardware/power/stats/EnergyMeasurement;->timestampMs:J

    iput-wide v7, v6, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    .line 843
    goto :goto_2

    .line 839
    :cond_2
    nop

    .line 838
    .end local v9    # "energyMeasurement":Landroid/hardware/power/stats/EnergyMeasurement;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 835
    .end local v6    # "powerMonitorState":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 848
    :cond_4
    return-void
.end method


# virtual methods
.method public getDeleteMeterDataOnBoot()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteMeterDataOnBoot()Z

    move-result v0

    return v0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteModelDataOnBoot()Z

    move-result v0

    return v0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsLogger;->getDeleteResidencyDataOnBoot()Z

    move-result v0

    return v0
.end method

.method getIPowerStatsServiceForTest()Landroid/os/IPowerStatsService;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Landroid/os/IBinder;

    check-cast v0, Landroid/os/IPowerStatsService;

    return-object v0
.end method

.method public getPowerMonitorReadingsImpl([ILandroid/os/ResultReceiver;I)V
    .locals 22
    .param p1, "powerMonitorIndices"    # [I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;
    .param p3, "callingUid"    # I

    .line 723
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    .line 726
    iget-object v3, v0, Lcom/android/server/powerstats/PowerStatsService;->mInjector:Lcom/android/server/powerstats/PowerStatsService$Injector;

    iget-object v4, v0, Lcom/android/server/powerstats/PowerStatsService;->mContext:Landroid/content/Context;

    move/from16 v10, p3

    invoke-virtual {v3, v4, v10}, Lcom/android/server/powerstats/PowerStatsService$Injector;->checkFinePowerMonitorsPermission(Landroid/content/Context;I)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 727
    move v3, v5

    goto :goto_0

    .line 728
    :cond_0
    const/4 v3, 0x0

    :goto_0
    nop

    .line 732
    .local v3, "granularity":I
    if-ne v3, v5, :cond_1

    .line 733
    iget-object v6, v0, Lcom/android/server/powerstats/PowerStatsService;->mFinePowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 734
    .local v6, "allPowerMonitorStates":[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    const-wide/16 v7, 0xfa

    move-object v11, v6

    move-wide v12, v7

    .local v7, "maxAge":J
    goto :goto_1

    .line 736
    .end local v6    # "allPowerMonitorStates":[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .end local v7    # "maxAge":J
    :cond_1
    iget-object v6, v0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitorStates:[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 737
    .restart local v6    # "allPowerMonitorStates":[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    const-wide/16 v7, 0x4e20

    move-object v11, v6

    move-wide v12, v7

    .line 740
    .end local v6    # "allPowerMonitorStates":[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .local v11, "allPowerMonitorStates":[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .local v12, "maxAge":J
    :goto_1
    const-wide v6, 0x7fffffffffffffffL

    .line 741
    .local v6, "earliestTimestamp":J
    array-length v8, v1

    new-array v14, v8, [Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;

    .line 742
    .local v14, "powerMonitorStates":[Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    const/4 v8, 0x0

    move-wide v15, v6

    .end local v6    # "earliestTimestamp":J
    .local v8, "i":I
    .local v15, "earliestTimestamp":J
    :goto_2
    array-length v6, v1

    if-ge v8, v6, :cond_5

    .line 743
    aget v6, v1, v8

    .line 744
    .local v6, "index":I
    if-ltz v6, :cond_2

    array-length v7, v11

    if-lt v6, v7, :cond_3

    :cond_2
    goto :goto_3

    .line 749
    :cond_3
    aget-object v7, v11, v6

    aput-object v7, v14, v8

    .line 750
    aget-object v7, v11, v6

    if-eqz v7, :cond_4

    aget-object v7, v11, v6

    iget-wide v4, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    cmp-long v4, v4, v15

    if-gez v4, :cond_4

    .line 752
    aget-object v4, v11, v6

    iget-wide v4, v4, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    move-wide v15, v4

    .line 742
    .end local v6    # "index":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto :goto_2

    .line 745
    .restart local v6    # "index":I
    :goto_3
    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 746
    return-void

    .line 742
    .end local v6    # "index":I
    :cond_5
    nop

    .line 756
    .end local v8    # "i":I
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/server/powerstats/PowerStatsService;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v15

    cmp-long v4, v4, v12

    if-lez v4, :cond_7

    .line 757
    :cond_6
    invoke-direct {v0, v14}, Lcom/android/server/powerstats/PowerStatsService;->updateEnergyConsumers([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V

    .line 758
    invoke-direct {v0, v14}, Lcom/android/server/powerstats/PowerStatsService;->updateEnergyMeasurements([Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;)V

    .line 759
    iget-object v4, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    invoke-virtual {v4}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->refresh()V

    .line 762
    :cond_7
    array-length v4, v14

    new-array v4, v4, [J

    .line 763
    .local v4, "energy":[J
    array-length v5, v14

    new-array v5, v5, [J

    .line 764
    .local v5, "timestamps":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v7, v14

    if-ge v6, v7, :cond_9

    .line 765
    aget-object v7, v14, v6

    .line 766
    .local v7, "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    iget-wide v8, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    const-wide/16 v17, -0x1

    cmp-long v8, v8, v17

    if-eqz v8, :cond_8

    iget-wide v8, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    cmp-long v8, v8, v17

    if-eqz v8, :cond_8

    .line 768
    move-object v8, v5

    .end local v5    # "timestamps":[J
    .local v8, "timestamps":[J
    iget-object v5, v0, Lcom/android/server/powerstats/PowerStatsService;->mIntervalRandomNoiseGenerator:Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;

    iget-wide v0, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->prevEnergyUws:J

    move-object/from16 v17, v5

    move v9, v6

    .end local v6    # "i":I
    .local v9, "i":I
    iget-wide v5, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    const-wide/32 v18, 0x989680

    sub-long v5, v5, v18

    .line 769
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-object v5, v8

    move v6, v9

    .end local v8    # "timestamps":[J
    .end local v9    # "i":I
    .restart local v5    # "timestamps":[J
    .restart local v6    # "i":I
    iget-wide v8, v7, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    .line 768
    move-wide/from16 v20, v0

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-wide/from16 v6, v20

    .end local v5    # "timestamps":[J
    .end local v6    # "i":I
    .end local v7    # "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .local v0, "timestamps":[J
    .local v1, "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .local v17, "i":I
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/powerstats/IntervalRandomNoiseGenerator;->addNoise(JJI)J

    move-result-wide v5

    aput-wide v5, v4, v17

    goto :goto_5

    .line 766
    .end local v0    # "timestamps":[J
    .end local v1    # "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .end local v17    # "i":I
    .restart local v5    # "timestamps":[J
    .restart local v6    # "i":I
    .restart local v7    # "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    :cond_8
    move-object v0, v5

    move/from16 v17, v6

    move-object v1, v7

    .line 786
    .end local v5    # "timestamps":[J
    .end local v6    # "i":I
    .end local v7    # "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .restart local v0    # "timestamps":[J
    .restart local v1    # "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    .restart local v17    # "i":I
    iget-wide v5, v1, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->energyUws:J

    aput-wide v5, v4, v17

    .line 788
    :goto_5
    iget-wide v5, v1, Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;->timestampMs:J

    aput-wide v5, v0, v17

    .line 764
    .end local v1    # "state":Lcom/android/server/powerstats/PowerStatsService$PowerMonitorState;
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v1, p1

    move/from16 v10, p3

    move-object v5, v0

    move-object/from16 v0, p0

    .end local v17    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    .end local v0    # "timestamps":[J
    .restart local v5    # "timestamps":[J
    :cond_9
    move-object v0, v5

    .line 791
    .end local v5    # "timestamps":[J
    .end local v6    # "i":I
    .restart local v0    # "timestamps":[J
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 792
    .local v1, "result":Landroid/os/Bundle;
    const-string v5, "energy"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 793
    const-string/jumbo v5, "timestamps"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 794
    const-string/jumbo v5, "granularity"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 796
    return-void
.end method

.method public getPowerStatsInternal()Landroid/power/PowerStatsInternal;
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/powerstats/PowerStatsService$LocalService;-><init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService-IA;)V

    iput-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    return-object v0
.end method

.method public getSupportedPowerMonitorsImpl(Landroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 711
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->ensurePowerMonitors()V

    .line 712
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v0, "result":Landroid/os/Bundle;
    const-string/jumbo v1, "monitors"

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService;->mPowerMonitors:[Landroid/os/PowerMonitor;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 714
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 715
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 305
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->onSystemServicesReady()V

    goto :goto_0

    .line 307
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->onBootCompleted()V

    .line 310
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 314
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-class v0, Landroid/power/PowerStatsInternal;

    invoke-virtual {p0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsInternal()Landroid/power/PowerStatsInternal;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 317
    :cond_0
    const-string/jumbo v0, "powerstats"

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    return-void
.end method

.method refreshFlags()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v1, "power_monitor_api_enabled"

    const/4 v2, 0x1

    const-string v3, "battery_stats"

    invoke-interface {v0, v3, v1, v2}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/powerstats/PowerStatsService;->setPowerMonitorApiEnabled(Z)V

    .line 428
    return-void
.end method
