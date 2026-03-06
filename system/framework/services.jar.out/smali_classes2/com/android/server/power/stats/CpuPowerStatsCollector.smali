.class public Lcom/android/server/power/stats/CpuPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "CpuPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;,
        Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;,
        Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;,
        Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;
    }
.end annotation


# static fields
.field private static final DEFAULT_CPU_POWER_BRACKETS:I = 0x3

.field private static final DEFAULT_CPU_POWER_BRACKETS_PER_ENERGY_CONSUMER:I = 0x2

.field private static final NANOS_PER_MILLIS:J = 0xf4240L

.field private static final TAG:Ljava/lang/String; = "CpuPowerStatsCollector"


# instance fields
.field private mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field private mCpuPowerStats:Lcom/android/internal/os/PowerStats;

.field private mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field private mCpuTimeByScalingStep:[J

.field private mDefaultCpuPowerBrackets:I

.field private mDefaultCpuPowerBracketsPerEnergyConsumer:I

.field private final mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

.field private mIsInitialized:Z

.field private mIsPerUidTimeInStateSupported:Z

.field private mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

.field private mLastUpdateTimestampNanos:J

.field private mLastUpdateUptimeMillis:J

.field private mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mTempCpuTimeByScalingStep:[J

.field private mTempUidStats:[J

.field private final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$l7KbxBakyCEoVp9gpEIBpVgzupw(Lcom/android/server/power/stats/CpuPowerStatsCollector;I[J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->processUidStats(I[J)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;)V
    .locals 6
    .param p1, "injector"    # Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    .line 93
    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    .line 93
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 83
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    .line 97
    iput-object p1, v0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    .line 98
    return-void
.end method

.method private ensureInitialized()Z
    .locals 11

    .line 101
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    return v1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 110
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getKernelCpuStatsReader()Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    .line 112
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getDefaultCpuPowerBrackets()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    .line 113
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    .line 114
    invoke-interface {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getDefaultCpuPowerBracketsPerEnergyConsumer()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    invoke-virtual {v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->isSupportedFeature()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    .line 118
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 121
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    .line 122
    .local v0, "cpuScalingStepCount":I
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    .line 123
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    .line 124
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBrackets()[I

    move-result-object v2

    .line 126
    .local v2, "scalingStepToPowerBracketMap":[I
    new-instance v3, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 127
    invoke-virtual {v5}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v5

    array-length v5, v5

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;-><init>(II[I)V

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 129
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    move-object v10, v3

    .line 130
    .local v10, "extras":Landroid/os/PersistableBundle;
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v3, v10}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 132
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 133
    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v6

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 134
    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v9

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 135
    new-instance v3, Lcom/android/internal/os/PowerStats;

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v3, v4}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    .line 137
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 139
    iput-boolean v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsInitialized:Z

    .line 140
    return v1
.end method

.method private initDefaultPowerBrackets(I)[I
    .locals 12
    .param p1, "defaultCpuPowerBracketCount"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 207
    .local v0, "stepToBracketMap":[I
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    new-array v1, v1, [D

    .line 208
    .local v1, "powerByStep":[D
    const/4 v2, 0x0

    .line 209
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    .line 210
    .local v3, "policies":[I
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 211
    .local v6, "policy":I
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    .line 212
    .local v7, "frequencies":[I
    const/4 v8, 0x0

    .local v8, "step":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_0

    .line 213
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "index":I
    .local v9, "index":I
    iget-object v10, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v10, v6, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v10

    aput-wide v10, v1, v2

    .line 212
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_1

    .end local v9    # "index":I
    .restart local v2    # "index":I
    :cond_0
    nop

    .line 210
    .end local v6    # "policy":I
    .end local v7    # "frequencies":[I
    .end local v8    # "step":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    .line 218
    return-object v0
.end method

.method private initPowerBrackets()[I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBracketsFromPowerProfile()[I

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 147
    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 150
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 151
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBracketsPerEnergyConsumer:I

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initPowerBracketsByCluster(I)[I

    move-result-object v0

    return-object v0

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assigning a single power brackets to each CPU_CLUSTER energy consumer. Number of CPU clusters ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 155
    invoke-virtual {v1}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not match the number of energy consumers ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 157
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").  Using default power bucket assignment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string v1, "CpuPowerStatsCollector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object v0

    return-object v0

    .line 148
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mDefaultCpuPowerBrackets:I

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->initDefaultPowerBrackets(I)[I

    move-result-object v0

    return-object v0
.end method

.method private initPowerBracketsByCluster(I)[I
    .locals 14
    .param p1, "defaultBracketCountPerCluster"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 179
    .local v0, "stepToBracketMap":[I
    const/4 v1, 0x0

    .line 180
    .local v1, "index":I
    const/4 v2, 0x0

    .line 181
    .local v2, "bracketBase":I
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    .line 182
    .local v3, "policies":[I
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 183
    .local v6, "policy":I
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    .line 184
    .local v7, "frequencies":[I
    array-length v8, v7

    new-array v8, v8, [D

    .line 185
    .local v8, "powerByStep":[D
    const/4 v9, 0x0

    .local v9, "step":I
    :goto_1
    array-length v10, v7

    if-ge v9, v10, :cond_0

    .line 186
    iget-object v10, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v10, v6, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 185
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 189
    .end local v9    # "step":I
    array-length v9, v7

    new-array v9, v9, [I

    .line 190
    .local v9, "policyStepToBracketMap":[I
    invoke-static {v9, v8, p1}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mapScalingStepsToDefaultBrackets([I[DI)V

    .line 192
    const/4 v10, 0x0

    .line 193
    .local v10, "maxBracket":I
    const/4 v11, 0x0

    .local v11, "step":I
    :goto_2
    array-length v12, v7

    if-ge v11, v12, :cond_2

    .line 194
    aget v12, v9, v11

    add-int/2addr v12, v2

    .line 195
    .local v12, "bracket":I
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "index":I
    .local v13, "index":I
    aput v12, v0, v1

    .line 196
    if-le v12, v10, :cond_1

    .line 197
    move v1, v12

    move v10, v1

    .line 193
    .end local v12    # "bracket":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move v1, v13

    goto :goto_2

    .end local v13    # "index":I
    .restart local v1    # "index":I
    :cond_2
    nop

    .line 200
    .end local v11    # "step":I
    add-int/lit8 v2, v10, 0x1

    .line 182
    .end local v6    # "policy":I
    .end local v7    # "frequencies":[I
    .end local v8    # "powerByStep":[D
    .end local v9    # "policyStepToBracketMap":[I
    .end local v10    # "maxBracket":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    :cond_3
    return-object v0
.end method

.method private initPowerBracketsFromPowerProfile()[I
    .locals 10

    .line 164
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    new-array v0, v0, [I

    .line 165
    .local v0, "stepToBracketMap":[I
    const/4 v1, 0x0

    .line 166
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 167
    .local v5, "policy":I
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v6, v5}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v6

    .line 168
    .local v6, "frequencies":[I
    const/4 v7, 0x0

    .local v7, "step":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 169
    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v8, v5, v7}, Lcom/android/internal/os/PowerProfile;->getCpuPowerBracketForScalingStep(II)I

    move-result v8

    .line 170
    .local v8, "bracket":I
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "index":I
    .local v9, "index":I
    aput v8, v0, v1

    .line 168
    .end local v8    # "bracket":I
    add-int/lit8 v7, v7, 0x1

    move v1, v9

    goto :goto_1

    .end local v9    # "index":I
    .restart local v1    # "index":I
    :cond_0
    nop

    .line 166
    .end local v5    # "policy":I
    .end local v6    # "frequencies":[I
    .end local v7    # "step":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-object v0
.end method

.method private static mapScalingStepsToDefaultBrackets([I[DI)V
    .locals 11
    .param p0, "stepToBracketMap"    # [I
    .param p1, "powerByStep"    # [D
    .param p2, "defaultCpuPowerBracketCount"    # I

    .line 223
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 224
    .local v0, "minPower":D
    const-wide/16 v2, 0x1

    .line 225
    .local v2, "maxPower":D
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-wide v6, p1, v5

    .line 226
    .local v6, "power":D
    cmpg-double v8, v6, v0

    if-gez v8, :cond_0

    .line 227
    move-wide v0, v6

    .line 229
    :cond_0
    cmpl-double v8, v6, v2

    if-lez v8, :cond_1

    .line 230
    move-wide v2, v6

    .line 225
    .end local v6    # "power":D
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    :cond_2
    array-length v4, p1

    if-gt v4, p2, :cond_4

    .line 234
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 235
    aput v4, p0, v4

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    nop

    .end local v4    # "index":I
    goto :goto_3

    .line 238
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    .line 239
    .local v4, "minLogPower":D
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    sub-double/2addr v6, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    .line 242
    .local v6, "logBracket":D
    const/4 v8, 0x0

    .local v8, "step":I
    :goto_2
    array-length v9, p1

    if-ge v8, v9, :cond_6

    .line 243
    aget-wide v9, p1, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    sub-double/2addr v9, v4

    div-double/2addr v9, v6

    double-to-int v9, v9

    .line 244
    .local v9, "bracket":I
    if-lt v9, p2, :cond_5

    .line 245
    add-int/lit8 v9, p2, -0x1

    .line 247
    :cond_5
    aput v9, p0, v8

    .line 242
    .end local v9    # "bracket":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 250
    .end local v4    # "minLogPower":D
    .end local v6    # "logBracket":D
    .end local v8    # "step":I
    :cond_6
    :goto_3
    return-void
.end method

.method private processUidStats(I[J)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "timeByPowerBracket"    # [J

    .line 372
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v0

    .line 374
    .local v0, "powerBracketCount":I
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    .line 375
    .local v1, "uidStats":Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;
    if-nez v1, :cond_0

    .line 376
    new-instance v2, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector-IA;)V

    move-object v1, v2

    .line 377
    new-array v2, v0, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    .line 378
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    .line 379
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    :cond_0
    const/4 v2, 0x0

    .line 383
    .local v2, "nonzero":Z
    add-int/lit8 v3, v0, -0x1

    .local v3, "bracket":I
    :goto_0
    if-ltz v3, :cond_2

    .line 384
    aget-wide v4, p2, v3

    iget-object v6, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v6, v6, v3

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 386
    .local v4, "delta":J
    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 387
    const/4 v2, 0x1

    .line 389
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v7, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->setUidTimeByPowerBracket([JIJ)V

    .line 390
    iget-object v6, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->timeByPowerBracket:[J

    aget-wide v7, p2, v3

    aput-wide v7, v6, v3

    .line 383
    .end local v4    # "delta":J
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 392
    .end local v3    # "bracket":I
    if-eqz v2, :cond_5

    .line 394
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v3

    .local v3, "ownerUid":I
    goto :goto_1

    .line 397
    .end local v3    # "ownerUid":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v3

    .line 400
    .restart local v3    # "ownerUid":I
    :goto_1
    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 401
    .local v4, "ownerStats":[J
    if-nez v4, :cond_4

    .line 402
    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 404
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 405
    aget-wide v6, v4, v5

    iget-object v8, v1, Lcom/android/server/power/stats/CpuPowerStatsCollector$UidStats;->stats:[J

    aget-wide v8, v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 404
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 409
    .end local v3    # "ownerUid":I
    .end local v4    # "ownerStats":[J
    .end local v5    # "i":I
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method protected collectStats()Lcom/android/internal/os/PowerStats;
    .locals 9

    .line 326
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 327
    return-object v1

    .line 330
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mIsPerUidTimeInStateSupported:Z

    if-nez v0, :cond_1

    .line 331
    return-object v1

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 335
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 338
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mKernelCpuStatsReader:Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    new-instance v2, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/CpuPowerStatsCollector;)V

    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempUidStats:[J

    .line 338
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;->readCpuStats(Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsCallback;[IJ[J[J)J

    move-result-wide v0

    .line 341
    .local v0, "newTimestampNanos":J
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "step":I
    :goto_0
    if-ltz v2, :cond_2

    .line 342
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v5, v5, v2

    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    aget-wide v7, v7, v2

    sub-long/2addr v5, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->setTimeByScalingStep([JIJ)V

    .line 344
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuTimeByScalingStep:[J

    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mTempCpuTimeByScalingStep:[J

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    .line 341
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 347
    .end local v2    # "step":I
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 349
    iput-wide v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateTimestampNanos:J

    .line 351
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    .line 352
    .local v2, "uptimeMillis":J
    iget-wide v4, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    sub-long v4, v2, v4

    .line 353
    .local v4, "uptimeDelta":J
    iput-wide v2, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLastUpdateUptimeMillis:J

    .line 355
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v6, v6, Lcom/android/internal/os/PowerStats;->durationMs:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 356
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v4, v6, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 358
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v7, v7, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 360
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v8, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 362
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v6
.end method

.method public dumpCpuPowerBracketsLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 256
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    if-nez v0, :cond_1

    .line 261
    return-void

    .line 264
    :cond_1
    const-string v0, "CPU power brackets; cluster/freq in MHz(avg current in mA):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    .local v0, "bracket":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 266
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 268
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->getCpuPowerBracketDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 271
    .end local v0    # "bracket":I
    return-void
.end method

.method public getCpuPowerBracketDescription(I)Ljava/lang/String;
    .locals 12
    .param p1, "powerBracket"    # I

    .line 278
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    const-string v0, ""

    return-object v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v0

    .line 283
    .local v0, "stepToPowerBracketMap":[I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 285
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    .line 286
    .local v3, "policies":[I
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget v6, v3, v5

    .line 287
    .local v6, "policy":I
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    .line 288
    .local v7, "freqs":[I
    const/4 v8, 0x0

    .local v8, "step":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_4

    .line 289
    aget v9, v0, v2

    if-eq v9, p1, :cond_1

    .line 290
    add-int/lit8 v2, v2, 0x1

    .line 291
    goto :goto_2

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_2

    .line 295
    const-string v9, ", "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    array-length v9, v3

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 298
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x2f

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    :cond_3
    aget v9, v7, v8

    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const/16 v9, 0x28

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v10, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 303
    invoke-virtual {v10, v6, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 302
    const-string v11, "%.1f"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/16 v9, 0x29

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 288
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 286
    .end local v6    # "policy":I
    .end local v7    # "freqs":[I
    .end local v8    # "step":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 309
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 1

    .line 317
    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object v0
.end method

.method protected onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 413
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 414
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerStatsCollector;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 415
    return-void
.end method
