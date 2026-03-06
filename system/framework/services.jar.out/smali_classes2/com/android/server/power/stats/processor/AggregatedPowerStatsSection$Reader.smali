.class Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;
.super Ljava/lang/Object;
.source "AggregatedPowerStatsSection.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Reader"
.end annotation


# instance fields
.field private final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 58
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "aggregated-power-stats"

    return-object v0
.end method

.method public read(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .locals 2
    .param p1, "sectionType"    # Ljava/lang/String;
    .param p2, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 69
    invoke-static {p2, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    .line 68
    return-object v0
.end method
