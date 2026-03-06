.class public interface abstract Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/PowerStatsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConsumedEnergyRetriever"
.end annotation


# virtual methods
.method public abstract getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
.end method

.method public abstract getEnergyConsumerIds(I)[I
.end method

.method public abstract getEnergyConsumerName(I)Ljava/lang/String;
.end method

.method public abstract getVoltageMv()I
.end method
