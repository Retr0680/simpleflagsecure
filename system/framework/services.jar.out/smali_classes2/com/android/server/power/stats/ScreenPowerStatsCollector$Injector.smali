.class public interface abstract Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;
.super Ljava/lang/Object;
.source "ScreenPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/ScreenPowerStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getClock()Lcom/android/internal/os/Clock;
.end method

.method public abstract getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
.end method

.method public abstract getDisplayCount()I
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J
.end method

.method public abstract getScreenUsageTimeRetriever()Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;
.end method

.method public abstract getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;
.end method
