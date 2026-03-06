.class public interface abstract Lcom/android/server/power/stats/PowerAttributor;
.super Ljava/lang/Object;
.source "PowerAttributor.java"


# virtual methods
.method public abstract dumpEstimatedPowerConsumption(Landroid/util/IndentingPrintWriter;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
.end method

.method public abstract estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
.end method

.method public abstract getLastSavedEstimatesPowerConsumptionTimestamp()J
.end method

.method public abstract isPowerComponentSupported(I)Z
.end method

.method public abstract storeEstimatedPowerConsumption(Lcom/android/internal/os/BatteryStatsHistory;JJ)J
.end method
