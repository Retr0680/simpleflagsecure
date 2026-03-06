.class Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;
.super Ljava/lang/Object;
.source "SensorPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorState"
.end annotation


# instance fields
.field public sensorHandle:I

.field public startTime:J

.field public stateOn:Z

.field public uid:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;-><init>()V

    return-void
.end method
