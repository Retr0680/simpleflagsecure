.class Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
.super Ljava/lang/Object;
.source "AggregatedPowerStatsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerComponent"
.end annotation


# instance fields
.field private final mPowerComponentId:I

.field private mProcessorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackedDeviceStates:[I

.field private mTrackedUidStates:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "powerComponentId"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    .line 81
    return-void
.end method

.method private isTracked([II)Z
    .locals 4
    .param p1, "trackedStates"    # [I
    .param p2, "state"    # I

    .line 154
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 155
    return v0

    .line 158
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 159
    .local v3, "trackedState":I
    if-ne v3, p2, :cond_1

    .line 160
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_1
    nop

    .line 158
    .end local v3    # "trackedState":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    return v0
.end method


# virtual methods
.method createProcessor()Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    if-nez v0, :cond_0

    .line 148
    invoke-static {}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->-$$Nest$sfgetNO_OP_PROCESSOR()Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    return-object v0
.end method

.method public getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .locals 5

    .line 121
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 123
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v1

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v3, "pwr"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 126
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v2

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const-string/jumbo v4, "scr"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public getPowerComponentId()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    return v0
.end method

.method public getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .locals 6

    .line 132
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 134
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v1

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v3, "pwr"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 137
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v2

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const-string/jumbo v4, "scr"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 140
    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v3

    sget-object v4, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    const-string/jumbo v5, "ps"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method public setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor;",
            ">;)",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;"
        }
    .end annotation

    .line 112
    .local p1, "processorSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/power/stats/processor/PowerStatsProcessor;>;"
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    .line 113
    return-object p0
.end method

.method public varargs trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 2
    .param p1, "states"    # [I

    .line 87
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    .line 91
    return-object p0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component is already configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 2
    .param p1, "states"    # [I

    .line 98
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    .line 102
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component is already configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
