.class Lcom/android/server/display/plugin/PluginEventStorage;
.super Ljava/lang/Object;
.source "PluginEventStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;,
        Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;
    }
.end annotation


# static fields
.field private static final MAX_TIME_FRAMES:I = 0xa

.field private static final MIN_EVENT_DELAY:J = 0x1f4L

.field private static final TIME_FRAME_LENGTH:J = 0xea60L

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mCounters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;",
            "Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeFrameStart:J


# direct methods
.method public static synthetic $r8$lambda$g-ur3r5bXUmhjeSEVRG2XcfrL-0()Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    .locals 2

    .line 0
    new-instance v0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$q0WELSZlIUwnm3Ijsgi3PBSm79k(I)[Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/plugin/PluginEventStorage;->lambda$new$0(I)[Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsDateFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/display/plugin/PluginEventStorage;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/server/display/plugin/PluginEventStorage;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/display/plugin/PluginEventStorage$$ExternalSyntheticLambda1;-><init>()V

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    return-void
.end method

.method private closeCurrentTimeFrame()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    iget-wide v2, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    iget-wide v4, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(I)[Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
    .locals 1
    .param p0, "x$0"    # I

    .line 42
    new-array v0, p0, [Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    return-object v0
.end method

.method private updateCurrentTimeFrame(Lcom/android/server/display/plugin/PluginType;J)V
    .locals 5
    .param p2, "eventTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;J)V"
        }
    .end annotation

    .line 66
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    .line 67
    .local v0, "counter":Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 68
    .local v1, "previousTimestamp":J
    if-nez v0, :cond_0

    .line 69
    new-instance v3, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;-><init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    move-object v0, v3

    .line 70
    iget-object v3, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->-$$Nest$mincrease(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;JJ)V

    .line 73
    iget-object v3, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEventTimes:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method getTimeFrames()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v0, "timeFrames":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;>;"
    new-instance v1, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    iget-wide v2, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mCounters:Ljava/util/Map;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;Lcom/android/server/display/plugin/PluginEventStorage-IA;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-object v0
.end method

.method onValueUpdated(Lcom/android/server/display/plugin/PluginType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p1, "type":Lcom/android/server/display/plugin/PluginType;, "Lcom/android/server/display/plugin/PluginType<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    .local v0, "eventTime":J
    const-wide/32 v2, 0xea60

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginEventStorage;->closeCurrentTimeFrame()V

    .line 52
    iput-wide v0, p0, Lcom/android/server/display/plugin/PluginEventStorage;->mTimeFrameStart:J

    .line 54
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/plugin/PluginEventStorage;->updateCurrentTimeFrame(Lcom/android/server/display/plugin/PluginType;J)V

    .line 55
    return-void
.end method
