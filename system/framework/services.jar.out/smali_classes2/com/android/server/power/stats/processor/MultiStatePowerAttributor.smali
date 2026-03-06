.class public Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;
.super Ljava/lang/Object;
.source "MultiStatePowerAttributor.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerAttributor;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiStatePowerAttributor"


# instance fields
.field private final mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

.field private final mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

.field private final mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

.field private final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$1PNKYkCVv8W0KQfNrVHkcLFwoQo(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$dumpEstimatedPowerConsumption$14(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2lUOUDlJTWlJOEtxYVOy_maL-mc(Landroid/content/Context;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$13(Landroid/content/Context;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5-NDaBkXDxtfmlcXO5Mi6TAiDeM(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$11(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$55t4Zzm05ncx0W1YgnaCUrFLzJY(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$8(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$70DTmGBx9LG3owXrv6hrK5RNa54(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$storeEstimatedPowerConsumption$15([JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C67sk-eRLG4_SDkOzr97hAq8FAU(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$1(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D1N6x10mQCnihZ1AFl0lEN6faPM(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$3(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gabh_wS9BwnY1CxJQlA-pVuOeYw(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$6(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HupV73DXNt1muGGqeEn16l97Wsk(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$7(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PUPeEfqqpmkpWSL858pKG_sXHrI(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$5(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TT4c4y9zWE9QBwROEGZdDrozxb0(Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$0(Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WuvQKBwRfUJl4E-Jzwyx0kVNf9s(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$4(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dv30Q_VR9NUIlNenm3lSon2QyqQ(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$9(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kZpVspbFxjUHJVpatfPqZwCtuTw(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$2(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mQgGilTiebtIN-66-Js1k3uiw8c(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$12(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w6EL18IggZuZAG7I0JGpTKsf49I(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$createAggregatedPowerStatsConfig$10(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerStatsStore"    # Lcom/android/server/power/stats/PowerStatsStore;
    .param p3, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p4, "cpuScalingPolicies"    # Lcom/android/internal/os/CpuScalingPolicies;
    .param p5, "batteryCapacitySupplier"    # Ljava/util/function/DoubleSupplier;

    .line 50
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 51
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createAggregatedPowerStatsConfig(Landroid/content/Context;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 50
    invoke-direct {p0, p2, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V
    .locals 3
    .param p1, "powerStatsStore"    # Lcom/android/server/power/stats/PowerStatsStore;
    .param p2, "powerStatsAggregator"    # Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 58
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 59
    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 60
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 61
    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 62
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    .line 63
    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 64
    return-void
.end method

.method private static createAggregatedPowerStatsConfig(Landroid/content/Context;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "cpuScalingPolicies"    # Lcom/android/internal/os/CpuScalingPolicies;
    .param p3, "batteryCapacitySupplier"    # Ljava/util/function/DoubleSupplier;

    .line 69
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    .line 70
    .local v0, "config":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v4

    .line 71
    invoke-virtual {v1, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 74
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleSupplier;)V

    .line 78
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 80
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    filled-new-array {v2, v3}, [I

    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    filled-new-array {v2, v3, v4}, [I

    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    new-instance v6, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda7;

    invoke-direct {v6, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 88
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 91
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;

    invoke-direct {v5, p1, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V

    .line 93
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 96
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 97
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 100
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda9;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 103
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 106
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda10;-><init>()V

    .line 108
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 110
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    filled-new-array {v2, v3}, [I

    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    filled-new-array {v2, v3, v4}, [I

    move-result-object v6

    .line 114
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    new-instance v6, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda11;

    invoke-direct {v6, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 118
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 121
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda12;-><init>()V

    .line 123
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 125
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 126
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 129
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda13;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 133
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 136
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 137
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 140
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda14;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 144
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 147
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 148
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 151
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 155
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 158
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 159
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 162
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 166
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 169
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 170
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 173
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 177
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 180
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 181
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 184
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda3;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 188
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 191
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 192
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 195
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 199
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 202
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 203
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 206
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 213
    new-instance v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackCustomPowerComponents(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 214
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 221
    return-object v0
.end method

.method private static createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 14
    .param p0, "stats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 282
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getClockUpdates()Ljava/util/List;

    move-result-object v0

    .line 283
    .local v0, "clockUpdates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No clock updates in aggregated power stats "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiStatePowerAttributor"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    return-object v1

    .line 288
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    iget-wide v1, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 289
    .local v1, "monotonicTime":J
    const-wide/16 v3, 0x0

    .line 290
    .local v3, "durationSum":J
    new-instance v5, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v5, v1, v2}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    move-object v6, v5

    .line 291
    .local v6, "span":Lcom/android/server/power/stats/PowerStatsSpan;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 292
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    .line 294
    .local v13, "clockUpdate":Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getDuration()J

    move-result-wide v7

    sub-long/2addr v7, v3

    move-wide v11, v7

    .local v7, "duration":J
    goto :goto_1

    .line 297
    .end local v7    # "duration":J
    :cond_1
    iget-wide v7, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    sub-long/2addr v7, v1

    move-wide v11, v7

    .line 299
    .local v11, "duration":J
    :goto_1
    iget-wide v7, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    iget-wide v9, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 300
    iget-wide v1, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 301
    add-long/2addr v3, v11

    .line 291
    .end local v11    # "duration":J
    .end local v13    # "clockUpdate":Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 304
    .end local v5    # "i":I
    new-instance v5, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    invoke-direct {v5, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    invoke-virtual {v6, v5}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    .line 305
    return-object v6
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$0(Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "batteryCapacitySupplier"    # Ljava/util/function/DoubleSupplier;

    .line 78
    new-instance v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;-><init>(Ljava/util/function/DoubleSupplier;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$1(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 89
    new-instance v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$10(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 189
    new-instance v0, Lcom/android/server/power/stats/processor/CameraPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/CameraPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$11(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 200
    new-instance v0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$12(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 211
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$13(Landroid/content/Context;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 210
    new-instance v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$2(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p1, "cpuScalingPolicies"    # Lcom/android/internal/os/CpuScalingPolicies;

    .line 94
    new-instance v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$3(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 104
    new-instance v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$4(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 119
    new-instance v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$5(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 134
    new-instance v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$6(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 145
    new-instance v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$7(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 156
    new-instance v0, Lcom/android/server/power/stats/processor/AudioPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/AudioPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$8(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 167
    new-instance v0, Lcom/android/server/power/stats/processor/VideoPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/VideoPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$createAggregatedPowerStatsConfig$9(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 178
    new-instance v0, Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method private static synthetic lambda$dumpEstimatedPowerConsumption$14(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 1
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 253
    invoke-static {p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v0

    .line 254
    .local v0, "span":Lcom/android/server/power/stats/PowerStatsSpan;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 257
    :cond_0
    return-void
.end method

.method private synthetic lambda$storeEstimatedPowerConsumption$15([JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 4
    .param p1, "lastSavedMonotonicTime"    # [J
    .param p2, "stats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 266
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->storeAggregatedPowerStats(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    .line 267
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x0

    aput-wide v0, p1, v2

    .line 268
    return-void
.end method


# virtual methods
.method public dumpEstimatedPowerConsumption(Landroid/util/IndentingPrintWriter;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 7
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "batteryStatsHistory"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J

    .line 250
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v6, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda17;

    invoke-direct {v6, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda17;-><init>(Landroid/util/IndentingPrintWriter;)V

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .end local p2    # "batteryStatsHistory":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p3    # "startTime":J
    .end local p5    # "endTime":J
    .local v1, "batteryStatsHistory":Lcom/android/internal/os/BatteryStatsHistory;
    .local v2, "startTime":J
    .local v4, "endTime":J
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    .line 258
    return-void
.end method

.method public estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 7
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryHistory"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p3, "monotonicStartTime"    # J
    .param p5, "monotonicEndTime"    # J

    .line 242
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .end local p2    # "batteryHistory":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p3    # "monotonicStartTime":J
    .end local p5    # "monotonicEndTime":J
    .local v1, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .local v2, "batteryHistory":Lcom/android/internal/os/BatteryStatsHistory;
    .local v3, "monotonicStartTime":J
    .local v5, "monotonicEndTime":J
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->exportAggregatedPowerStats(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 244
    return-void
.end method

.method public getLastSavedEstimatesPowerConsumptionTimestamp()J
    .locals 10

    .line 310
    const-wide/16 v0, -0x1

    .line 311
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 312
    .local v3, "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v4

    const-string v5, "aggregated-power-stats"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 314
    .local v5, "timeFrame":Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;
    iget-wide v6, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    iget-wide v8, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v6, v8

    .line 315
    .local v6, "endMonotonicTime":J
    cmp-long v8, v6, v0

    if-lez v8, :cond_0

    .line 316
    move-wide v0, v6

    .line 318
    .end local v5    # "timeFrame":Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;
    .end local v6    # "endMonotonicTime":J
    :cond_0
    goto :goto_1

    .line 320
    .end local v3    # "metadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    :cond_1
    goto :goto_0

    .line 321
    :cond_2
    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponentId"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public setPowerComponentSupported(IZ)V
    .locals 1
    .param p1, "powerComponentId"    # I
    .param p2, "enabled"    # Z

    .line 229
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 230
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->setPowerComponentEnabled(IZ)V

    .line 231
    return-void
.end method

.method storeAggregatedPowerStats(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 2
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 274
    invoke-static {p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v0

    .line 275
    .local v0, "span":Lcom/android/server/power/stats/PowerStatsSpan;
    if-nez v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 279
    return-void
.end method

.method public storeEstimatedPowerConsumption(Lcom/android/internal/os/BatteryStatsHistory;JJ)J
    .locals 8
    .param p1, "batteryStatsHistory"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "startTime"    # J
    .param p4, "endTimeMs"    # J

    .line 263
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 264
    .local v0, "lastSavedMonotonicTime":[J
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v7, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;

    invoke-direct {v7, p0, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[J)V

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "batteryStatsHistory":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p2    # "startTime":J
    .end local p4    # "endTimeMs":J
    .local v2, "batteryStatsHistory":Lcom/android/internal/os/BatteryStatsHistory;
    .local v3, "startTime":J
    .local v5, "endTimeMs":J
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    .line 269
    const/4 p1, 0x0

    aget-wide p1, v0, p1

    return-wide p1
.end method
