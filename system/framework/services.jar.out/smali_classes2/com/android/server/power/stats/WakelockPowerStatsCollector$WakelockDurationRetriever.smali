.class public interface abstract Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;
.super Ljava/lang/Object;
.source "WakelockPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/WakelockPowerStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WakelockDurationRetriever"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;
    }
.end annotation


# virtual methods
.method public abstract getWakelockDurationMillis()J
.end method

.method public abstract retrieveUidWakelockDuration(Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;)V
.end method
