.class Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
.super Ljava/lang/Object;
.source "BatteryUsageStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccumulatedBatteryUsageStats"
.end annotation


# instance fields
.field public builder:Landroid/os/BatteryUsageStats$Builder;

.field public endMonotonicTime:J

.field public startMonotonicTime:J

.field public startWallClockTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;-><init>()V

    return-void
.end method
