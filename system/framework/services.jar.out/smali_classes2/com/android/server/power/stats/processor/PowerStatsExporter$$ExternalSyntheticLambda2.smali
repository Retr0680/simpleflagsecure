.class public final synthetic Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$3:[J

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/power/stats/format/PowerStatsLayout;

.field public final synthetic f$6:Z

.field public final synthetic f$7:[D

.field public final synthetic f$8:[J


# direct methods
.method public synthetic constructor <init>(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$3:[J

    iput p5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iput-boolean p7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$6:Z

    iput-object p8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$7:[D

    iput-object p9, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$8:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    .line 0
    iget v0, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$3:[J

    iget v4, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$5:Lcom/android/server/power/stats/format/PowerStatsLayout;

    iget-boolean v6, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$6:Z

    iget-object v7, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$7:[D

    iget-object v8, p0, Lcom/android/server/power/stats/processor/PowerStatsExporter$$ExternalSyntheticLambda2;->f$8:[J

    move-object v9, p1

    check-cast v9, [I

    invoke-static/range {v0 .. v9}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->$r8$lambda$q_0fFBL0SpJgc9zuomLvKMCMfxk(IILcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[JILcom/android/server/power/stats/format/PowerStatsLayout;Z[D[J[I)V

    return-void
.end method
