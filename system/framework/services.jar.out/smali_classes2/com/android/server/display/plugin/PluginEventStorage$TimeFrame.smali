.class Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;
.super Ljava/lang/Object;
.source "PluginEventStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/plugin/PluginEventStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeFrame"
.end annotation


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

.field private final mEnd:J

.field private final mStart:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 89
    const-wide/16 v3, 0x0

    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object v5

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    .line 90
    return-void
.end method

.method private constructor <init>(JJLjava/util/Map;)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map<",
            "Lcom/android/server/display/plugin/PluginType<",
            "*>;",
            "Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p5, "counters":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/display/plugin/PluginType<*>;Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-wide p1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mStart:J

    .line 94
    iput-wide p3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mEnd:J

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(JJLjava/util/Map;Lcom/android/server/display/plugin/PluginEventStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>(JJLjava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;-><init>()V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 100
    const-string v0, "TimeFrame:["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/plugin/PluginEventStorage;->-$$Nest$sfgetsDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mStart:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 101
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 102
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/plugin/PluginEventStorage;->-$$Nest$sfgetsDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mEnd:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 103
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 104
    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 106
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "NO EVENTS"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->mCounters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 110
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/display/plugin/PluginType<*>;Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/plugin/PluginType;

    iget-object v3, v3, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, " -> {"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;

    invoke-static {v3, v0}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->-$$Nest$mdump(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;Ljava/io/PrintWriter;)V

    .line 112
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/display/plugin/PluginType<*>;Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;>;"
    goto :goto_0

    .line 115
    :cond_1
    :goto_1
    return-void
.end method
