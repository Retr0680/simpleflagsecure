.class public final synthetic Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Landroid/hardware/Sensor;

    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->$r8$lambda$eEoAms27NfR9dYafFcEqohrO0c0(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
