.class public Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "AmbientDisplayPowerStatsLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 21
    return-void
.end method
