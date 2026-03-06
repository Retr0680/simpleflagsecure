.class public Lcom/android/server/power/stats/CameraPowerStatsCollector;
.super Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;
.source "CameraPowerStatsCollector.java"


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;)V
    .locals 7
    .param p1, "injector"    # Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    .line 27
    nop

    .line 28
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-direct {v6}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    .line 27
    const/4 v3, 0x3

    const/4 v5, 0x7

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "injector":Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    .local v2, "injector":Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;ILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V

    .line 30
    return-void
.end method
