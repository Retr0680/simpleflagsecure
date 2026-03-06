.class public Lcom/android/server/am/BatteryStatsService$FrameworkStatsLogger;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameworkStatsLogger"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildStatsEvent(JJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;
    .locals 20
    .param p1, "sessionStartTs"    # J
    .param p3, "sessionEndTs"    # J
    .param p5, "sessionDuration"    # J
    .param p7, "sessionDischargePercentage"    # I
    .param p8, "sessionDischargeDuration"    # J
    .param p10, "uid"    # I
    .param p11, "processState"    # I
    .param p12, "timeInStateMillis"    # J
    .param p14, "powerComponentName"    # Ljava/lang/String;
    .param p15, "totalConsumedPowerMah"    # F
    .param p16, "powerComponentMah"    # F
    .param p17, "powerComponentDurationMillis"    # J

    .line 1176
    const/16 v1, 0x27e1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-wide/from16 v18, p17

    invoke-static/range {v1 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJIJIIJLjava/lang/String;FFJ)Landroid/util/StatsEvent;

    move-result-object v0

    return-object v0
.end method
