.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$10:J

.field public final synthetic f$11:J

.field public final synthetic f$12:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$1:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$2:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$3:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$4:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$5:I

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$6:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$7:I

    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$8:I

    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$9:J

    iput-wide p12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$10:J

    iput-wide p14, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$11:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$12:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$0:Lcom/android/server/am/BatteryStatsService;

    move-object v2, v1

    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$1:I

    move-object v3, v2

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$2:I

    move-object v4, v3

    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$3:I

    move-object v5, v4

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$4:I

    move-object v6, v5

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$5:I

    move-object v7, v6

    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$6:I

    move-object v8, v7

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$7:I

    move-object v9, v8

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$8:I

    move-object v11, v9

    iget-wide v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$9:J

    move-object v13, v11

    iget-wide v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$10:J

    move-object v15, v13

    iget-wide v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$11:J

    move/from16 v16, v1

    iget-wide v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;->f$12:J

    move-wide/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v16

    move-wide/from16 v15, v17

    invoke-static/range {v0 .. v16}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$vLt9HebbnK7vzU1AuoOmeTlgDO4(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    return-void
.end method
