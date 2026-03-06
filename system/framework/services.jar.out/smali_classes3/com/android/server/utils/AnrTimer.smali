.class public abstract Lcom/android/server/utils/AnrTimer;
.super Ljava/lang/Object;
.source "AnrTimer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/AnrTimer$Args;,
        Lcom/android/server/utils/AnrTimer$Injector;,
        Lcom/android/server/utils/AnrTimer$FeatureSwitch;,
        Lcom/android/server/utils/AnrTimer$FeatureDisabled;,
        Lcom/android/server/utils/AnrTimer$FeatureEnabled;,
        Lcom/android/server/utils/AnrTimer$TimerLock;,
        Lcom/android/server/utils/AnrTimer$Error;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AnrTimer"

.field private static final TRACE_TAG:J = 0x40L

.field private static final TRACK:Ljava/lang/String; = "AnrTimerTrack"

.field private static final sAnrTimerList:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/utils/AnrTimer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/utils/AnrTimer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

.field private static final sErrors:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/utils/AnrTimer$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArgs:Lcom/android/server/utils/AnrTimer$Args;

.field private final mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.FeatureSwitch;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLabel:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mMaxStarted:I

.field private final mTimerArgMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mTimerIdMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalErrors:I

.field private mTotalExpired:I

.field private mTotalStarted:I

.field private final mWhat:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalErrors(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalExpired(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMaxStarted(Lcom/android/server/utils/AnrTimer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTotalStarted(Lcom/android/server/utils/AnrTimer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;ZZ)J
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCreate(Ljava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->notFoundLocked(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrelease(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer;->release(Lcom/android/server/utils/AnrTimer$TimerLock;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrace(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsDefaultInjector()Lcom/android/server/utils/AnrTimer$Injector;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smanrTimerServiceEnabled()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->anrTimerServiceEnabled()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smfreezerFeatureEnabled()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->freezerFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerAccept(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerAccept(JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerCancel(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCancel(JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerClose(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerClose(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerDiscard(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDiscard(JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerRelease(JI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerRelease(JI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeAnrTimerStart(JIIJ)I
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerStart(JIIJ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    .line 166
    new-instance v0, Lcom/android/server/utils/AnrTimer$Injector;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Injector;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 298
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/utils/AnrTimer$Error;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    .line 526
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    .line 901
    new-instance v0, Lcom/android/server/utils/AnrTimer$1;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$1;-><init>()V

    .line 902
    invoke-static {v0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    .line 901
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "label"    # Ljava/lang/String;

    .line 396
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    new-instance v0, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/android/server/utils/AnrTimer$Args;

    .line 360
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    .line 308
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    .line 316
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    .line 320
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 324
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    .line 361
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 362
    iput p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 363
    iput-object p3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    .line 365
    invoke-static {p4}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmInjector(Lcom/android/server/utils/AnrTimer$Args;)Lcom/android/server/utils/AnrTimer$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/AnrTimer$Injector;->serviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeTimersSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 366
    .local v0, "enabled":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/utils/AnrTimer;->createFeatureSwitch(Z)Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    .line 367
    return-void
.end method

.method private static anrTimerServiceEnabled()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method private createFeatureSwitch(Z)Lcom/android/server/utils/AnrTimer$FeatureSwitch;
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.FeatureSwitch;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 374
    new-instance v1, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {v1, p0, v0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-object v1

    .line 377
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/utils/AnrTimer$FeatureEnabled;

    invoke-direct {v1, p0}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;-><init>(Lcom/android/server/utils/AnrTimer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 378
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "AnrTimer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v2, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {v2, p0, v0}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-object v2
.end method

.method static debug(Z)V
    .locals 0
    .param p0, "f"    # Z

    .line 847
    sput-boolean p0, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    .line 848
    return-void
.end method

.method private dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 835
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    const-string v1, "timer: %s\n"

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 837
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 838
    iget-object v1, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 839
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 840
    monitor-exit v0

    .line 841
    return-void

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dump(Ljava/io/PrintWriter;Z)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "verbose"    # Z

    .line 938
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/AnrTimer;->dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V

    .line 939
    return-void
.end method

.method static dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V
    .locals 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "verbose"    # Z
    .param p2, "injector"    # Lcom/android/server/utils/AnrTimer$Injector;

    .line 911
    invoke-virtual {p2}, Lcom/android/server/utils/AnrTimer$Injector;->serviceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 914
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    const-string v1, "AnrTimer statistics"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 916
    sget-object v1, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 919
    :try_start_0
    sget-object v2, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 920
    .local v2, "size":I
    new-array v3, v2, [Lcom/android/server/utils/AnrTimer;

    .line 921
    .local v3, "active":[Lcom/android/server/utils/AnrTimer;
    const/4 v4, 0x0

    .line 922
    .local v4, "valid":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 923
    sget-object v6, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/utils/AnrTimer;

    .line 924
    .local v6, "a":Lcom/android/server/utils/AnrTimer;
    if-eqz v6, :cond_1

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "valid":I
    .local v7, "valid":I
    aput-object v6, v3, v4

    move v4, v7

    goto :goto_1

    .line 930
    .end local v2    # "size":I
    .end local v3    # "active":[Lcom/android/server/utils/AnrTimer;
    .end local v5    # "i":I
    .end local v6    # "a":Lcom/android/server/utils/AnrTimer;
    .end local v7    # "valid":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 922
    .restart local v2    # "size":I
    .restart local v3    # "active":[Lcom/android/server/utils/AnrTimer;
    .restart local v4    # "valid":I
    .restart local v5    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 926
    .end local v5    # "i":I
    sget-object v5, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 927
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v4, :cond_4

    .line 928
    aget-object v7, v3, v5

    if-eqz v7, :cond_3

    aget-object v7, v3, v5

    invoke-direct {v7, v0}, Lcom/android/server/utils/AnrTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 927
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 930
    .end local v2    # "size":I
    .end local v3    # "active":[Lcom/android/server/utils/AnrTimer;
    .end local v4    # "valid":I
    .end local v5    # "i":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    if-eqz p1, :cond_5

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->dumpErrors(Landroid/util/IndentingPrintWriter;)V

    .line 932
    :cond_5
    const-string v1, "AnrTimerEnd\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 933
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 934
    return-void

    .line 930
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static dumpErrors(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 862
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter v0

    .line 863
    :try_start_0
    sget-object v1, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 865
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 864
    :cond_0
    sget-object v1, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/utils/AnrTimer$Error;

    .line 865
    .local v1, "errors":[Lcom/android/server/utils/AnrTimer$Error;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    const-string v0, "Errors"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 868
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 869
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    invoke-static {v2, p0, v0}, Lcom/android/server/utils/AnrTimer$Error;->-$$Nest$mdump(Lcom/android/server/utils/AnrTimer$Error;Landroid/util/IndentingPrintWriter;I)V

    .line 868
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 871
    .end local v0    # "i":I
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 872
    return-void

    .line 865
    .end local v1    # "errors":[Lcom/android/server/utils/AnrTimer$Error;
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private expire(IIIJ)Z
    .locals 8
    .param p1, "timerId"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "elapsedMs"    # J

    .line 797
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    const-string v2, "expired"

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p1    # "timerId":I
    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "elapsedMs":J
    .local v3, "timerId":I
    .local v4, "pid":I
    .local v5, "uid":I
    .local v6, "elapsedMs":J
    invoke-direct/range {v1 .. v7}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;IIIJ)V

    .line 798
    const/4 p1, 0x0

    .line 799
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object p2, v1, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 800
    :try_start_0
    iget-object p3, v1, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object p1, p3

    .line 801
    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 802
    const-string p4, "AnrTimer"

    const-string p5, "failed to expire timer %s:%d : arg not found"

    iget-object v0, v1, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 803
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 802
    invoke-static {p5, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget p4, v1, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/2addr p4, p3

    iput p4, v1, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 805
    monitor-exit p2

    const/4 p2, 0x0

    return p2

    .line 808
    :catchall_0
    move-exception v0

    move-object p3, v0

    goto :goto_0

    .line 807
    :cond_0
    iget p4, v1, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    add-int/2addr p4, p3

    iput p4, v1, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    .line 808
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iget-object p2, v1, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget-object p4, v1, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p5, v1, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-static {p4, p5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 810
    return p3

    .line 808
    :goto_0
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p3
.end method

.method private static freezerFeatureEnabled()Z
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method private static native nativeAnrTimerAccept(JI)Z
.end method

.method private static native nativeAnrTimerCancel(JI)Z
.end method

.method private static native nativeAnrTimerClose(J)I
.end method

.method private native nativeAnrTimerCreate(Ljava/lang/String;ZZ)J
.end method

.method private static native nativeAnrTimerDiscard(JI)Z
.end method

.method private static native nativeAnrTimerDump(J)[Ljava/lang/String;
.end method

.method private static native nativeAnrTimerRelease(JI)Z
.end method

.method private static native nativeAnrTimerStart(JIIJ)I
.end method

.method private static native nativeAnrTimerSupported()Z
.end method

.method private static native nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static nativeTimersSupported()Z
    .locals 2

    .line 959
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    return v1
.end method

.method private notFoundLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 897
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    const-string v0, "notFound"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/utils/AnrTimer;->recordErrorLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method private static now()J
    .locals 2

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private recordErrorLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 882
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 883
    .local v1, "s":[Ljava/lang/StackTraceElement;
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 886
    .local v7, "what":Ljava/lang/String;
    const/4 v0, 0x6

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/StackTraceElement;

    .line 887
    .local v6, "location":[Ljava/lang/StackTraceElement;
    sget-object v8, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter v8

    .line 888
    :try_start_0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    new-instance v2, Lcom/android/server/utils/AnrTimer$Error;

    iget-object v5, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p1

    move-object v3, p2

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "errorMsg":Ljava/lang/String;
    .local v3, "errorMsg":Ljava/lang/String;
    .local v4, "operation":Ljava/lang/String;
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/utils/AnrTimer$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 889
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    sget-boolean p1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "AnrTimer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " timer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 892
    return-void

    .line 889
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v4    # "operation":Ljava/lang/String;
    .restart local p1    # "operation":Ljava/lang/String;
    .restart local p2    # "errorMsg":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v4, p1

    move-object v3, p2

    move-object p1, v0

    .end local p1    # "operation":Ljava/lang/String;
    .end local p2    # "errorMsg":Ljava/lang/String;
    .restart local v3    # "errorMsg":Ljava/lang/String;
    .restart local v4    # "operation":Ljava/lang/String;
    :goto_0
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.Timer",
            "Lock;",
            ")V"
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    .local p1, "t":Lcom/android/server/utils/AnrTimer$TimerLock;, "Lcom/android/server/utils/AnrTimer<TV;>.TimerLock;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->release(Lcom/android/server/utils/AnrTimer$TimerLock;)V

    .line 783
    return-void
.end method

.method private trace(Ljava/lang/String;I)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "timerId"    # I

    .line 425
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "label":Ljava/lang/String;
    const-wide/16 v1, 0x40

    const-string v3, "AnrTimerTrack"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-boolean v1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AnrTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    return-void
.end method

.method private static trace(Ljava/lang/String;II)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s(%d,%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "label":Ljava/lang/String;
    const-wide/16 v1, 0x40

    const-string v3, "AnrTimerTrack"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-boolean v1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AnrTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    return-void
.end method

.method private trace(Ljava/lang/String;IIIJ)V
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "timerId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "milliseconds"    # J

    .line 415
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    nop

    .line 416
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p1

    .end local p1    # "op":Ljava/lang/String;
    .local v0, "op":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s(%d,%d,%d,%s,%d)"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 417
    .local p1, "label":Ljava/lang/String;
    const-wide/16 v1, 0x40

    const-string v3, "AnrTimerTrack"

    invoke-static {v1, v2, v3, p1}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-boolean v1, Lcom/android/server/utils/AnrTimer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AnrTimer"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    return-void
.end method

.method public static traceFeatureEnabled()Z
    .locals 1

    .line 145
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->anrTimerServiceEnabled()Z

    const/4 v0, 0x0

    return v0
.end method

.method public static traceTimers([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "spec"    # [Ljava/lang/String;

    .line 950
    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.Timer",
            "Lock;"
        }
    .end annotation

    .line 758
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 738
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->cancel(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 817
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->close()V

    .line 818
    return-void
.end method

.method public discard(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 775
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->discard(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 827
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer;->close()V

    .line 828
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 829
    return-void
.end method

.method public abstract getPid(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public abstract getUid(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public serviceEnabled()Z
    .locals 1

    .line 407
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->enabled()Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J)V"
        }
    .end annotation

    .line 722
    .local p0, "this":Lcom/android/server/utils/AnrTimer;, "Lcom/android/server/utils/AnrTimer<TV;>;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v4, p2

    .line 723
    .end local p2    # "timeoutMs":J
    .local v4, "timeoutMs":J
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->getPid(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->getUid(Ljava/lang/Object;)I

    move-result v3

    move-object v1, p1

    .end local p1    # "arg":Ljava/lang/Object;, "TV;"
    .local v1, "arg":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->start(Ljava/lang/Object;IIJ)V

    .line 724
    return-void
.end method
