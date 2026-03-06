.class Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryStatsSession"
.end annotation


# instance fields
.field private final mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field private final mBatteryTimeRemainingMs:J

.field private final mChargeTimeRemainingMs:J

.field private final mCustomEnergyConsumerNames:[Ljava/lang/String;

.field private final mEstimatedBatteryCapacityMah:J

.field private final mHistory:Lcom/android/internal/os/BatteryStatsHistory;

.field private final mMonotonicStartTime:J

.field private final mStartClockTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsHistory;JJJJJ[Ljava/lang/String;Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "monotonicStartTime"    # J
    .param p4, "startClockTime"    # J
    .param p6, "batteryTimeRemainingMs"    # J
    .param p8, "chargeTimeRemainingMs"    # J
    .param p10, "estimatedBatteryCapacityMah"    # J
    .param p12, "customEnergyConsumerNames"    # [Ljava/lang/String;
    .param p13, "batteryStats"    # Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 345
    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    .line 346
    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    .line 347
    iput-wide p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    .line 348
    iput-wide p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    .line 349
    iput-wide p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    .line 350
    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    .line 351
    iput-object p13, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 352
    return-void
.end method


# virtual methods
.method public getBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object v0
.end method

.method getBatteryTimeRemainingMs()J
    .locals 2

    .line 367
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mBatteryTimeRemainingMs:J

    return-wide v0
.end method

.method getChargeTimeRemainingMs()J
    .locals 2

    .line 371
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mChargeTimeRemainingMs:J

    return-wide v0
.end method

.method getCustomEnergyConsumerNames()[Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mCustomEnergyConsumerNames:[Ljava/lang/String;

    return-object v0
.end method

.method getEstimatedBatteryCapacity()D
    .locals 2

    .line 375
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mEstimatedBatteryCapacityMah:J

    long-to-double v0, v0

    return-wide v0
.end method

.method getHistory()Lcom/android/internal/os/BatteryStatsHistory;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    return-object v0
.end method

.method getMonotonicStartTime()J
    .locals 2

    .line 359
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mMonotonicStartTime:J

    return-wide v0
.end method

.method getStartClockTime()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->mStartClockTime:J

    return-wide v0
.end method
