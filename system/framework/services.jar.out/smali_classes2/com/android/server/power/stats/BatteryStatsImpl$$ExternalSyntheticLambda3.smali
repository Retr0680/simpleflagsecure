.class public final synthetic Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:[I

.field public final synthetic f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;JJZZZII[ILcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$3:Z

    iput-boolean p7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$4:Z

    iput-boolean p8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$5:Z

    iput p9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$6:I

    iput p10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$7:I

    iput-object p11, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$8:[I

    iput-object p12, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .locals 14

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$1:J

    iget-wide v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$2:J

    iget-boolean v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$3:Z

    iget-boolean v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$4:Z

    iget-boolean v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$5:Z

    iget v8, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$6:I

    iget v9, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$7:I

    iget-object v10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$8:[I

    iget-object v11, p0, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$9:Lcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    move-object/from16 v13, p2

    check-cast v13, [J

    move v12, p1

    invoke-static/range {v0 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->$r8$lambda$daTKAIEwupQ-yt4BT--WYTVY2ww(Lcom/android/server/power/stats/BatteryStatsImpl;JJZZZII[ILcom/android/server/power/stats/BatteryStatsImpl$CpuDeltaPowerAccumulator;I[J)V

    return-void
.end method
