.class Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;
.super Ljava/lang/Object;
.source "AccumulatedBatteryUsageStatsSection.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Reader"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "accumulated-battery-usage-stats"

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
    new-instance v0, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    .line 69
    invoke-static {p2}, Landroid/os/BatteryUsageStats;->createBuilderFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    .line 68
    return-object v0
.end method
