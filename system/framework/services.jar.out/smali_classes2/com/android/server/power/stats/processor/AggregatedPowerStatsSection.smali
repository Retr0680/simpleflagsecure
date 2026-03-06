.class Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;
.super Lcom/android/server/power/stats/PowerStatsSpan$Section;
.source "AggregatedPowerStatsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "aggregated-power-stats"


# instance fields
.field private final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 1
    .param p1, "aggregatedPowerStats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 35
    const-string v0, "aggregated-power-stats"

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 37
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 50
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 51
    return-void
.end method

.method public getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-object v0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 46
    return-void
.end method
