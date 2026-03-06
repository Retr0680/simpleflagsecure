.class public Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;
.super Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;
.source "BinaryStatePowerStatsLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 24
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 25
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionUsageDuration()V

    .line 26
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 31
    return-void
.end method
