.class final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$Injector;,
        Lcom/android/server/power/WakeLockLog$TagDatabase;,
        Lcom/android/server/power/WakeLockLog$EntryByteTranslator;,
        Lcom/android/server/power/WakeLockLog$TheLog;,
        Lcom/android/server/power/WakeLockLog$LogEntry;,
        Lcom/android/server/power/WakeLockLog$TagData;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEBUG:Z = false

.field private static final FLAG_ACQUIRE_CAUSES_WAKEUP:I = 0x10

.field private static final FLAG_ON_AFTER_RELEASE:I = 0x8

.field private static final FLAG_SYSTEM_WAKELOCK:I = 0x20

.field private static final LEVEL_DOZE_WAKE_LOCK:I = 0x6

.field private static final LEVEL_DRAW_WAKE_LOCK:I = 0x7

.field private static final LEVEL_FULL_WAKE_LOCK:I = 0x2

.field private static final LEVEL_PARTIAL_WAKE_LOCK:I = 0x1

.field private static final LEVEL_PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x5

.field private static final LEVEL_SCREEN_BRIGHT_WAKE_LOCK:I = 0x4

.field private static final LEVEL_SCREEN_DIM_WAKE_LOCK:I = 0x3

.field private static final LEVEL_SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK:I = 0x0

.field private static final LEVEL_TO_STRING:[Ljava/lang/String;

.field private static final LOG_SIZE:I = 0xc00

.field private static final LOG_SIZE_MIN:I = 0xa

.field private static final MASK_LOWER_6_BITS:I = 0x3f

.field private static final MASK_LOWER_7_BITS:I = 0x7f

.field private static final MAX_LOG_ENTRY_BYTE_SIZE:I = 0x9

.field private static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;

.field static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "System"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService.WLLog"

.field private static final TAG_DATABASE_SIZE:I = 0x40

.field private static final TAG_DATABASE_SIZE_MAX:I = 0x80

.field private static final TAG_DATABASE_STARTING_SIZE:I = 0x10

.field private static final TYPE_ACQUIRE:I = 0x1

.field private static final TYPE_RELEASE:I = 0x2

.field private static final TYPE_TIME_RESET:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field private final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLEVEL_TO_STRING()[Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 100
    const-string v6, "doze"

    const-string v7, "draw"

    const-string/jumbo v0, "override"

    const-string/jumbo v1, "partial"

    const-string v2, "full"

    const-string/jumbo v3, "screen-dim"

    const-string/jumbo v4, "screen-bright"

    const-string/jumbo v5, "prox"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    .line 122
    const-string v0, "*gms_scheduler*/"

    const-string v1, "IntentOp:"

    const-string v2, "*job*/"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {v0}, Lcom/android/server/power/WakeLockLog$Injector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V
    .locals 3
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;
    .param p2, "context"    # Landroid/content/Context;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 149
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 150
    new-instance v0, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, v1}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;-><init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    .line 151
    .local v0, "translator":Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    new-instance v1, Lcom/android/server/power/WakeLockLog$TheLog;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 152
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 153
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    .line 154
    return-void
.end method

.method private handleWakeLockEventInternal(ILjava/lang/String;IIJ)V
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "flags"    # I
    .param p5, "time"    # J

    .line 282
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v0

    move-object v6, v0

    .line 285
    .local v6, "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    new-instance v2, Lcom/android/server/power/WakeLockLog$LogEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, p1

    move v7, p4

    move-wide v3, p5

    .end local p1    # "eventType":I
    .end local p4    # "flags":I
    .end local p5    # "time":J
    .local v3, "time":J
    .local v5, "eventType":I
    .local v7, "flags":I
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 286
    .end local v6    # "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "time":J
    .end local v5    # "eventType":I
    .end local v7    # "flags":I
    .restart local p1    # "eventType":I
    .restart local p4    # "flags":I
    .restart local p5    # "time":J
    :catchall_1
    move-exception v0

    move v5, p1

    move v7, p4

    move-wide v3, p5

    move-object p1, v0

    .end local p1    # "eventType":I
    .end local p4    # "flags":I
    .end local p5    # "time":J
    .restart local v3    # "time":J
    .restart local v5    # "eventType":I
    .restart local v7    # "flags":I
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onWakeLockEvent(ILjava/lang/String;IIJ)V
    .locals 9
    .param p1, "eventType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "flags"    # I
    .param p5, "eventTime"    # J

    .line 256
    if-nez p2, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient data to log wakelock [tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, "PowerManagerService.WLLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/WakeLockLog$Injector;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    move-wide v0, p5

    :goto_0
    move-wide v7, v0

    .line 265
    .local v7, "time":J
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 266
    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog;->translateFlagsFromPowerManager(I)I

    move-result v0

    move v6, v0

    goto :goto_1

    .line 267
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    nop

    .line 268
    .local v6, "translatedFlags":I
    invoke-direct {p0, p2}, Lcom/android/server/power/WakeLockLog;->tagNameReducer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move v3, p1

    move v5, p3

    .end local p1    # "eventType":I
    .end local p3    # "ownerUid":I
    .local v3, "eventType":I
    .local v5, "ownerUid":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/WakeLockLog;->handleWakeLockEventInternal(ILjava/lang/String;IIJ)V

    .line 270
    return-void
.end method

.method private tagNameReducer(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 351
    if-nez p1, :cond_0

    .line 352
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 356
    .local v0, "reduciblePrefix":Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    nop

    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 357
    .local v5, "reducedTagPrefix":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    move-object v0, v5

    .line 359
    goto :goto_1

    .line 357
    :cond_1
    nop

    .line 356
    .end local v5    # "reducedTagPrefix":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 363
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 371
    .local v2, "end":I
    const/4 v4, 0x1

    .line 372
    .local v4, "printNext":Z
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 373
    .local v5, "index":I
    :goto_2
    if-ge v5, v2, :cond_7

    .line 374
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 375
    .local v6, "c":C
    const/16 v7, 0x2e

    if-eq v6, v7, :cond_3

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    move v7, v3

    goto :goto_4

    :goto_3
    const/4 v7, 0x1

    .line 377
    .local v7, "isMarker":Z
    :goto_4
    if-nez v7, :cond_5

    if-eqz v4, :cond_6

    .line 378
    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    :cond_6
    move v4, v7

    .line 373
    .end local v6    # "c":C
    .end local v7    # "isMarker":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 382
    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 385
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "end":I
    .end local v4    # "printNext":Z
    .end local v5    # "index":I
    :cond_8
    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    .line 187
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "includeTagDb"    # Z

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    const-string v1, "Wake Lock Log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, "numEvents":I
    const/4 v2, 0x0

    .line 196
    .local v2, "numResets":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 198
    .local v3, "uidToPackagesCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v5}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmSavedAcquisitions(Lcom/android/server/power/WakeLockLog$TheLog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 199
    add-int/lit8 v1, v1, 0x1

    .line 200
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v5}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmSavedAcquisitions(Lcom/android/server/power/WakeLockLog$TheLog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 202
    .local v5, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 207
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 198
    .end local v5    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "numEvents":I
    .end local v2    # "numResets":I
    .end local v3    # "uidToPackagesCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 198
    .restart local v1    # "numEvents":I
    .restart local v2    # "numResets":I
    .restart local v3    # "uidToPackagesCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_0
    nop

    .line 210
    .end local v4    # "i":I
    new-instance v4, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v4}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 211
    .local v4, "tempEntry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v5, v4}, Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;

    move-result-object v5

    .line 212
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/power/WakeLockLog$LogEntry;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 213
    const/4 v6, 0x0

    .line 218
    .local v6, "address":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 219
    .local v7, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    if-eqz v7, :cond_2

    .line 220
    iget v8, v7, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v8, :cond_1

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 223
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 224
    iget-object v8, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 224
    invoke-virtual {v7, v3, v8}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 229
    iget-object v8, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, p1, v8}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 232
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    :cond_2
    :goto_2
    goto :goto_1

    .line 233
    :cond_3
    const-string v6, "  -"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Events: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Time-Resets: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Buffer, Bytes used: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v7}, Lcom/android/server/power/WakeLockLog$TheLog;->getUsedBufferSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    if-eqz p2, :cond_4

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .end local v1    # "numEvents":I
    .end local v2    # "numResets":I
    .end local v3    # "uidToPackagesCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Ljava/lang/String;>;"
    .end local v4    # "tempEntry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/power/WakeLockLog$LogEntry;>;"
    :cond_4
    monitor-exit v0

    .line 242
    goto :goto_4

    .line 239
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/power/WakeLockLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "includeTagDb":Z
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    .restart local p0    # "this":Lcom/android/server/power/WakeLockLog;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "includeTagDb":Z
    :catch_0
    move-exception v0

    nop

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception dumping wake-lock log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public onWakeLockAcquired(Ljava/lang/String;IIJ)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "flags"    # I
    .param p4, "eventTime"    # J

    .line 165
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "ownerUid":I
    .end local p3    # "flags":I
    .end local p4    # "eventTime":J
    .local v2, "tag":Ljava/lang/String;
    .local v3, "ownerUid":I
    .local v4, "flags":I
    .local v5, "eventTime":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;IIJ)V

    .line 166
    return-void
.end method

.method public onWakeLockReleased(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "eventTime"    # J

    .line 176
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "ownerUid":I
    .end local p3    # "eventTime":J
    .local v2, "tag":Ljava/lang/String;
    .local v3, "ownerUid":I
    .local v5, "eventTime":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;IIJ)V

    .line 177
    return-void
.end method

.method translateFlagsFromPowerManager(I)I
    .locals 3
    .param p1, "flags"    # I

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "newFlags":I
    const v1, 0xffff

    and-int/2addr v1, p1

    sparse-switch v1, :sswitch_data_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported lock level for logging, flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :sswitch_0
    const/4 v0, 0x0

    .line 325
    goto :goto_0

    .line 318
    :sswitch_1
    const/4 v0, 0x7

    .line 319
    goto :goto_0

    .line 315
    :sswitch_2
    const/4 v0, 0x6

    .line 316
    goto :goto_0

    .line 321
    :sswitch_3
    const/4 v0, 0x5

    .line 322
    goto :goto_0

    .line 312
    :sswitch_4
    const/4 v0, 0x2

    .line 313
    goto :goto_0

    .line 309
    :sswitch_5
    const/4 v0, 0x4

    .line 310
    goto :goto_0

    .line 306
    :sswitch_6
    const/4 v0, 0x3

    .line 307
    goto :goto_0

    .line 303
    :sswitch_7
    const/4 v0, 0x1

    .line 304
    nop

    .line 330
    :goto_0
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 331
    or-int/lit8 v0, v0, 0x10

    .line 333
    :cond_0
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 334
    or-int/lit8 v0, v0, 0x8

    .line 336
    :cond_1
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 337
    or-int/lit8 v0, v0, 0x20

    .line 339
    :cond_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x6 -> :sswitch_6
        0xa -> :sswitch_5
        0x1a -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
