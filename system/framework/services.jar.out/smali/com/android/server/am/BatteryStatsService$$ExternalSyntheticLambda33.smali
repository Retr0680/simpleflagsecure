.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$12:J

.field public final synthetic f$13:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/WorkSource;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$5:I

    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$6:Landroid/os/WorkSource;

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$7:I

    iput-object p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$9:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$10:I

    iput-boolean p12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$11:Z

    iput-wide p13, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$12:J

    move-wide p1, p15

    iput-wide p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$13:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$0:Lcom/android/server/am/BatteryStatsService;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$1:Landroid/os/WorkSource;

    move-object v3, v2

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$2:I

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$3:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$4:Ljava/lang/String;

    move-object v6, v5

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$5:I

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$6:Landroid/os/WorkSource;

    move-object v8, v7

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$7:I

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$8:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$9:Ljava/lang/String;

    move-object v11, v10

    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$10:I

    move-object v12, v11

    iget-boolean v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$11:Z

    move-object v14, v12

    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$12:J

    move-object v15, v1

    iget-wide v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;->f$13:J

    move-wide/from16 v16, v0

    move-object v0, v14

    move-object v1, v15

    move-wide/from16 v14, v16

    invoke-static/range {v0 .. v15}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$KEUFOs7T3pqu1K5KSNKgHuowa2U(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method
