.class Lcom/android/server/power/stats/processor/AggregatedPowerStats;
.super Ljava/lang/Object;
.source "AggregatedPowerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;
    }
.end annotation


# static fields
.field private static final MAX_CLOCK_UPDATES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AggregatedPowerStats"

.field private static final XML_TAG_AGGREGATED_POWER_STATS:Ljava/lang/String; = "agg-power-stats"


# instance fields
.field private final mClockUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field private mDurationMs:J

.field private final mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field private final mPowerComponentStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 1
    .param p1, "aggregatedPowerStatsConfig"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 78
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V
    .locals 6
    .param p1, "aggregatedPowerStatsConfig"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .param p2, "enabledComponents"    # Landroid/util/SparseBooleanArray;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 84
    nop

    .line 85
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->getPowerComponentsAggregatedStatsConfigs()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 89
    .local v2, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v4

    new-instance v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v5, p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    .end local v2    # "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 94
    .end local v1    # "i":I
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->createGenericPowerComponent()Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 95
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .locals 8
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "aggregatedPowerStatsConfig"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 269
    .local v0, "stats":Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    const/4 v1, 0x0

    .line 270
    .local v1, "inElement":Z
    const/4 v2, 0x0

    .line 271
    .local v2, "skipToEnd":Z
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    .line 272
    .local v3, "eventType":I
    :goto_0
    const/4 v4, 0x1

    nop

    if-eq v3, v4, :cond_5

    const/4 v5, 0x3

    const-string v6, "agg-power-stats"

    if-ne v3, v5, :cond_0

    .line 274
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 275
    :cond_0
    if-nez v2, :cond_4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 276
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "power_component"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 281
    :pswitch_0
    if-nez v1, :cond_2

    .line 282
    goto :goto_3

    .line 285
    :cond_2
    const/4 v4, 0x0

    const-string/jumbo v5, "id"

    invoke-interface {p0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 289
    .local v4, "powerComponentId":I
    nop

    .line 290
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v5

    .line 291
    .local v5, "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    if-nez v5, :cond_3

    .line 292
    nop

    .line 293
    invoke-virtual {p1, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v6

    .line 295
    .local v6, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    if-eqz v6, :cond_3

    .line 296
    new-instance v7, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v7, v0, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    move-object v5, v7

    .line 298
    iget-object v7, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    .end local v6    # "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    :cond_3
    if-eqz v5, :cond_4

    .line 303
    invoke-virtual {v5, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 304
    const/4 v2, 0x1

    goto :goto_3

    .line 278
    .end local v4    # "powerComponentId":I
    .end local v5    # "powerComponentStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :pswitch_1
    const/4 v1, 0x1

    .line 279
    nop

    .line 311
    :cond_4
    :goto_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 313
    :cond_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x373121bd -> :sswitch_1
        0x16b8db0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createGenericPowerComponent()Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .locals 9

    .line 99
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 100
    .local v0, "config":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    const/4 v1, 0x0

    const/4 v2, 0x1

    filled-new-array {v1, v2}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    const/4 v4, 0x2

    filled-new-array {v1, v2, v4}, [I

    move-result-object v1

    .line 103
    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 107
    new-instance v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 109
    .local v1, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 112
    return-object v1
.end method

.method private static formatDateTime(J)Ljava/lang/String;
    .locals 3
    .param p0, "timeInMillis"    # J

    .line 372
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 374
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addClockUpdate(JJ)Z
    .locals 4
    .param p1, "monotonicTime"    # J
    .param p3, "currentTime"    # J

    .line 124
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;-><init>()V

    .line 125
    .local v0, "clockUpdate":Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;
    iput-wide p1, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 126
    iput-wide p3, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 127
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return v3

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many clock updates. Replacing the previous update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v2, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v2, "AggregatedPowerStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v1, 0x0

    return v1
.end method

.method addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 4
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "time"    # J

    .line 206
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 207
    .local v0, "powerComponentId":I
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 208
    .local v1, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    if-nez v1, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v2

    .line 210
    .local v2, "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    if-nez v2, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    new-instance v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v3, p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    move-object v1, v3

    .line 215
    iget-object v3, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 216
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 217
    invoke-virtual {v1, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->start(J)V

    .line 218
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    .end local v2    # "powerComponent":Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    :cond_1
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 222
    return-void
.end method

.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 10
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    .line 319
    .local v1, "baseTime":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    .line 321
    .local v4, "clockUpdate":Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 322
    if-nez v3, :cond_0

    .line 323
    iget-wide v1, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 324
    const-string v5, "Start time: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 325
    invoke-static {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    const-string v5, ") duration: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    .line 329
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 332
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 333
    const-string v5, "Clock update:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    sub-long/2addr v5, v1

    const/16 v7, 0x16

    invoke-static {v5, v6, v0, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 337
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    invoke-static {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 319
    .end local v4    # "clockUpdate":Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 344
    .end local v3    # "i":I
    const-string v3, "Device"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 346
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 347
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 349
    .end local v3    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 351
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v3, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 353
    iget-object v6, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v6

    .line 354
    .local v6, "activeUids":Landroid/util/IntArray;
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_4
    if-ltz v7, :cond_3

    .line 355
    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_3
    nop

    .line 352
    .end local v6    # "activeUids":Landroid/util/IntArray;
    .end local v7    # "j":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 359
    .end local v4    # "i":I
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 360
    .local v4, "allUids":[Ljava/lang/Integer;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 361
    array-length v6, v4

    :goto_5
    if-ge v5, v6, :cond_6

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 362
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 364
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    iget-object v9, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 365
    iget-object v9, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v9, p1, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpUid(Landroid/util/IndentingPrintWriter;I)V

    .line 364
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    nop

    .line 367
    .end local v8    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 361
    .end local v7    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 369
    :cond_6
    return-void
.end method

.method finish(J)V
    .locals 2
    .param p1, "timestampMs"    # J

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 240
    .local v1, "component":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->finish(J)V

    .line 238
    .end local v1    # "component":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 242
    .end local v0    # "i":I
    return-void
.end method

.method public getClockUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    return-wide v0
.end method

.method getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .locals 1
    .param p1, "powerComponentId"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    return-object v0
.end method

.method getPowerComponentStats()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 165
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 168
    .local v2, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eq v2, v3, :cond_0

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 172
    .end local v1    # "i":I
    return-object v0
.end method

.method getStartTime()J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-wide/16 v0, 0x0

    return-wide v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    iget-wide v0, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    return-wide v0
.end method

.method isCompatible(Lcom/android/internal/os/PowerStats;)Z
    .locals 3
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;

    .line 200
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 201
    .local v0, "powerComponentId":I
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 202
    .local v1, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->isCompatible(Lcom/android/internal/os/PowerStats;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 2
    .param p1, "batteryLevel"    # I
    .param p2, "batteryChargeUah"    # I
    .param p3, "timestampMs"    # J

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->noteBatteryLevel(IIJ)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 235
    .end local v0    # "i":I
    return-void
.end method

.method public noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 2
    .param p1, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 228
    .end local v0    # "i":I
    return-void
.end method

.method reset()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->reset()V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 250
    .end local v0    # "i":I
    return-void
.end method

.method setDeviceState(IIJ)V
    .locals 2
    .param p1, "stateId"    # I
    .param p2, "state"    # I
    .param p3, "time"    # J

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setState(IIJ)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 190
    .end local v0    # "i":I
    return-void
.end method

.method setDuration(J)V
    .locals 0
    .param p1, "durationMs"    # J

    .line 155
    iput-wide p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    .line 156
    return-void
.end method

.method setUidState(IIIJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "stateId"    # I
    .param p3, "state"    # I
    .param p4, "time"    # J

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p1    # "uid":I
    .end local p2    # "stateId":I
    .end local p3    # "state":I
    .end local p4    # "time":J
    .local v3, "uid":I
    .local v4, "stateId":I
    .local v5, "state":I
    .local v6, "time":J
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidState(IIIJ)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "stateId":I
    .end local v5    # "state":I
    .end local v6    # "time":J
    .restart local p1    # "uid":I
    .restart local p2    # "stateId":I
    .restart local p3    # "state":I
    .restart local p4    # "time":J
    :cond_0
    nop

    .line 197
    .end local v0    # "i":I
    return-void
.end method

.method start(J)V
    .locals 2
    .param p1, "timestampMs"    # J

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->start(J)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 183
    .end local v0    # "i":I
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 380
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    const-string v1, "agg-power-stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 256
    .local v3, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eq v3, v4, :cond_0

    .line 257
    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 254
    .end local v3    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 260
    .end local v2    # "i":I
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 262
    return-void
.end method
