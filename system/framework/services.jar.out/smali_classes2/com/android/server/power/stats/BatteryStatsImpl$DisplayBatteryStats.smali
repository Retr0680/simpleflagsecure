.class Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayBatteryStats"
.end annotation


# instance fields
.field public screenBrightnessBin:I

.field public screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public screenState:I

.field public screenStateAtLastEnergyMeasurement:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 14
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 1243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1219
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    .line 1231
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessBin:I

    .line 1235
    const/4 v1, 0x5

    new-array v2, v1, [Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 1241
    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenStateAtLastEnergyMeasurement:I

    .line 1244
    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 1246
    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v9, p1

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iput-object v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 1248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    rsub-int/lit8 v11, v0, -0x64

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v9, p1

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v2, v0

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1252
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1280
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1281
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1285
    .end local v0    # "i":I
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J

    .line 1258
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1259
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1261
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 1260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1263
    .end local v0    # "i":I
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 1269
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1270
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1274
    .end local v0    # "i":I
    return-void
.end method
