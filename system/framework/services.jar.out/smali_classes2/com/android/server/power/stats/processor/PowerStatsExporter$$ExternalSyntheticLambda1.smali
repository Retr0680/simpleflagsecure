.class public final synthetic Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$4:[J

.field public final synthetic f$5:[D

.field public final synthetic f$6:Lcom/android/server/power/stats/format/PowerStatsLayout;

.field public final synthetic f$7:[J

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iput p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$4:[J

    iput-object p6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$5:[D

    iput-object p7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iput-object p8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$7:[J

    iput-boolean p9, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$8:Z

    iput-object p10, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$9:Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    iget v1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$4:[J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$5:[D

    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$6:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$7:[J

    iget-boolean v8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$8:Z

    iget-object v9, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda1;->f$9:Lcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;

    move-object v10, p1

    check-cast v10, [I

    invoke-static/range {v0 .. v10}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->$r8$lambda$pNT5uGKVgvyOpk7fJ8PTGvMFxnE(Lcom/android/server/power/stats/processor/PowerStatsExporter;IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[J[DLcom/android/server/power/stats/format/PowerStatsLayout;[JZLcom/android/server/power/stats/processor/PowerStatsExporter$BatteryLevelInfo;[I)V

    return-void
.end method
