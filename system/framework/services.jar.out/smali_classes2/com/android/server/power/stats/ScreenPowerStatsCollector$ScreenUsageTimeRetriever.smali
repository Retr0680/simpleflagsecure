.class public interface abstract Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;
.super Ljava/lang/Object;
.source "ScreenPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/ScreenPowerStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenUsageTimeRetriever"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;
    }
.end annotation


# virtual methods
.method public abstract getBrightnessLevelTimeMs(II)J
.end method

.method public abstract getScreenDozeTimeMs(I)J
.end method

.method public abstract getScreenOnTimeMs(I)J
.end method

.method public abstract retrieveTopActivityTimes(Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;)V
.end method
