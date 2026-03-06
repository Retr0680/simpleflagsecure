.class public final Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;
.super Ljava/lang/Record;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionInfo"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "startTs",
        "endTs",
        "duration",
        "dischargePercentage",
        "dischargeDuration"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        J,
        J,
        J,
        I,
        J
    }
.end annotation


# instance fields
.field private final dischargeDuration:J

.field private final dischargePercentage:I

.field private final duration:J

.field private final endTs:J

.field private final startTs:J


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    iget v1, p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    iget-wide v2, p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    iget-wide v2, p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    iget-wide v2, p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    iget-wide v2, p1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 7

    .line 0
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    return-object v5
.end method

.method public constructor <init>(JJJIJ)V
    .locals 0
    .param p1, "startTs"    # J
    .param p3, "endTs"    # J
    .param p5, "duration"    # J
    .param p7, "dischargePercentage"    # I
    .param p8, "dischargeDuration"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startTs",
            "endTs",
            "duration",
            "dischargePercentage",
            "dischargeDuration"
        }
    .end annotation

    .line 1205
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    return-void
.end method


# virtual methods
.method public dischargeDuration()J
    .locals 2

    .line 1205
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    return-wide v0
.end method

.method public dischargePercentage()I
    .locals 1

    .line 1205
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    return v0
.end method

.method public duration()J
    .locals 2

    .line 1205
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    return-wide v0
.end method

.method public endTs()J
    .locals 2

    .line 1205
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1205
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 9

    .line 1205
    iget v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargePercentage:I

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->endTs:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->duration:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->dischargeDuration:J

    invoke-static/range {v0 .. v8}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo$$ExternalSyntheticRecord0;->m(IJJJJ)I

    move-result v0

    return v0
.end method

.method public startTs()J
    .locals 2

    .line 1205
    iget-wide v0, p0, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->startTs:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1205
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/am/BatteryStatsService$StatsPerUidLogger$SessionInfo;

    const-string/jumbo v2, "startTs;endTs;duration;dischargePercentage;dischargeDuration"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
