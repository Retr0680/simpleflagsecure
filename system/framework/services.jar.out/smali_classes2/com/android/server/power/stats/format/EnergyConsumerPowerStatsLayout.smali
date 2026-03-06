.class public Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "EnergyConsumerPowerStatsLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionEnergyConsumers(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 38
    return-void
.end method
