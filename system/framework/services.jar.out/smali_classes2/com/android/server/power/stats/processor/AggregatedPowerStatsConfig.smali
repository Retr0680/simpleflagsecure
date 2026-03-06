.class Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
.super Ljava/lang/Object;
.source "AggregatedPowerStatsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;,
        Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$TrackedState;
    }
.end annotation


# static fields
.field private static final NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

.field static final POWER_STATE_BATTERY:I = 0x0

.field static final POWER_STATE_OTHER:I = 0x1

.field static final SCREEN_STATE_ON:I = 0x0

.field static final SCREEN_STATE_OTHER:I = 0x1

.field static final STATE_LABELS_POWER:[Ljava/lang/String;

.field static final STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

.field static final STATE_LABELS_SCREEN:[Ljava/lang/String;

.field static final STATE_NAME_POWER:Ljava/lang/String; = "pwr"

.field static final STATE_NAME_PROCESS_STATE:Ljava/lang/String; = "ps"

.field static final STATE_NAME_SCREEN:Ljava/lang/String; = "scr"

.field public static final STATE_POWER:I = 0x0

.field public static final STATE_PROCESS_STATE:I = 0x2

.field public static final STATE_SCREEN:I = 0x1


# instance fields
.field private mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field private mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetNO_OP_PROCESSOR()Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 52
    const-string/jumbo v0, "pwr-battery"

    const-string/jumbo v1, "pwr-other"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "scr-on"

    const-string/jumbo v1, "scr-other"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    .line 64
    .local v1, "procStateLabels":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 65
    invoke-static {v2}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 67
    .end local v2    # "i":I
    sput-object v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    .line 249
    .end local v1    # "procStateLabels":[Ljava/lang/String;
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 2
    .param p1, "powerComponentId"    # I

    .line 234
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 238
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 239
    .local v0, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-static {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 240
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-static {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 242
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 246
    :cond_1
    return-object v0
.end method

.method getPowerComponentsAggregatedStatsConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    return-object v0
.end method

.method trackCustomPowerComponents(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor;",
            ">;)",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;"
        }
    .end annotation

    .line 216
    .local p1, "processorFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/power/stats/processor/PowerStatsProcessor;>;"
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    .line 217
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 218
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    return-object v0
.end method

.method trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 2
    .param p1, "powerComponentId"    # I

    .line 178
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 179
    .local v0, "builder":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 4
    .param p1, "powerComponentId"    # I
    .param p2, "dependsOnPowerComponentId"    # I

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "dependsOnPowerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 193
    .local v2, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 194
    move-object v0, v2

    .line 195
    goto :goto_1

    .line 193
    :cond_0
    nop

    .line 191
    .end local v2    # "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    .line 205
    .local v1, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    invoke-static {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fputmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V

    .line 206
    invoke-static {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fputmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V

    .line 207
    return-object v1

    .line 200
    .end local v1    # "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not configured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
