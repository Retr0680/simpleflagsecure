.class Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;
.super Ljava/lang/Object;
.source "PluginEventStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/plugin/PluginEventStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventCounter"
.end annotation


# instance fields
.field private mEventCounter:I

.field private mFastEventCounter:I


# direct methods
.method static bridge synthetic -$$Nest$mdump(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincrease(Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->increase(JJ)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    .line 120
    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/plugin/PluginEventStorage-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;-><init>()V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 130
    const-string v0, "Count:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 131
    const-string v1, "; Fast:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 132
    return-void
.end method

.method private increase(JJ)V
    .locals 4
    .param p1, "timestamp"    # J
    .param p3, "previousTimestamp"    # J

    .line 123
    iget v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mEventCounter:I

    .line 124
    sub-long v0, p1, p3

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 125
    iget v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/plugin/PluginEventStorage$EventCounter;->mFastEventCounter:I

    .line 127
    :cond_0
    return-void
.end method
