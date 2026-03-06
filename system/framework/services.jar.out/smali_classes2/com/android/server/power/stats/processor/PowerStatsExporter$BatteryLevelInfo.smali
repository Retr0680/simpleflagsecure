.class Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;
.super Ljava/lang/Object;
.source "PowerStatsExporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/PowerStatsExporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryLevelInfo"
.end annotation


# instance fields
.field public batteryDischargeDurationMs:J

.field public batteryDischargeMah:D

.field public batteryDischargePct:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsExporter-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;-><init>()V

    return-void
.end method
