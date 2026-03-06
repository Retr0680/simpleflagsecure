.class Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakeLockData"
.end annotation


# instance fields
.field public acquireUptimeMillis:J

.field public refCount:I


# direct methods
.method constructor <init>(J)V
    .locals 2
    .param p1, "uptimeMillis"    # J

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->refCount:I

    .line 133
    iput-wide p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;->acquireUptimeMillis:J

    .line 134
    return-void
.end method
