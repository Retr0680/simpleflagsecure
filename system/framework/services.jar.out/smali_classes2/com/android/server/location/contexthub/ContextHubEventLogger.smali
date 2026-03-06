.class public Lcom/android/server/location/contexthub/ContextHubEventLogger;
.super Ljava/lang/Object;
.source "ContextHubEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;,
        Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;,
        Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;,
        Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;,
        Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappEventBase;,
        Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubEventBase;
    }
.end annotation


# static fields
.field public static final NUM_EVENTS_TO_STORE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ContextHubEventLogger"

.field private static sInstance:Lcom/android/server/location/contexthub/ContextHubEventLogger;


# instance fields
.field private final mContextHubRestartEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageFromNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->sInstance:Lcom/android/server/location/contexthub/ContextHubEventLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 211
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 213
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageFromNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 215
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 217
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mContextHubRestartEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 223
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .locals 2

    const-class v0, Lcom/android/server/location/contexthub/ContextHubEventLogger;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubEventLogger;->sInstance:Lcom/android/server/location/contexthub/ContextHubEventLogger;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEventLogger;

    invoke-direct {v1}, Lcom/android/server/location/contexthub/ContextHubEventLogger;-><init>()V

    sput-object v1, Lcom/android/server/location/contexthub/ContextHubEventLogger;->sInstance:Lcom/android/server/location/contexthub/ContextHubEventLogger;

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 232
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/location/contexthub/ContextHubEventLogger;->sInstance:Lcom/android/server/location/contexthub/ContextHubEventLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 228
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    monitor-enter p0

    .line 240
    const/4 v0, 0x5

    :try_start_0
    new-array v1, v0, [Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageFromNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mContextHubRestartEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v2, v1, v3

    .line 243
    .local v2, "deque":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v2}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v2    # "deque":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 245
    :cond_0
    monitor-exit p0

    return-void

    .line 239
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized logContextHubRestart(I)V
    .locals 7
    .param p1, "contextHubId"    # I

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 353
    .local v0, "timeStampInMs":J
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;-><init>(JI)V

    .line 354
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mContextHubRestartEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v3, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 355
    .local v3, "status":Z
    if-nez v3, :cond_0

    .line 356
    const-string v4, "ContextHubEventLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add Context Hub restart event to queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 351
    .end local v0    # "timeStampInMs":J
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;
    .end local v3    # "status":Z
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .end local p1    # "contextHubId":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 358
    .restart local v0    # "timeStampInMs":J
    .restart local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;
    .restart local v3    # "status":Z
    .restart local p1    # "contextHubId":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 351
    .end local v0    # "timeStampInMs":J
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;
    .end local v3    # "status":Z
    .end local p1    # "contextHubId":I
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized logMessageFromNanoapp(ILandroid/hardware/location/NanoAppMessage;Z)V
    .locals 8
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p3, "success"    # Z

    monitor-enter p0

    .line 293
    if-nez p2, :cond_0

    .line 294
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v3, v0

    .line 298
    .local v3, "timeStampInMs":J
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;

    move v5, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "contextHubId":I
    .end local p2    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local p3    # "success":Z
    .local v5, "contextHubId":I
    .local v6, "message":Landroid/hardware/location/NanoAppMessage;
    .local v7, "success":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;-><init>(JILandroid/hardware/location/NanoAppMessage;Z)V

    .line 300
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageFromNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 301
    .local p1, "status":Z
    if-nez p1, :cond_1

    .line 302
    const-string p2, "ContextHubEventLogger"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add message from nanoapp event to queue: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .end local v3    # "timeStampInMs":J
    .end local v5    # "contextHubId":I
    .end local v6    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v7    # "success":Z
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .end local p1    # "status":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 304
    .restart local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .restart local v3    # "timeStampInMs":J
    .restart local v5    # "contextHubId":I
    .restart local v6    # "message":Landroid/hardware/location/NanoAppMessage;
    .restart local v7    # "success":Z
    .restart local p1    # "status":Z
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 292
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .end local v3    # "timeStampInMs":J
    .end local v5    # "contextHubId":I
    .end local v6    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v7    # "success":Z
    .end local p1    # "status":Z
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized logMessageToNanoapp(ILandroid/hardware/location/NanoAppMessage;Z)V
    .locals 8
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p3, "success"    # Z

    monitor-enter p0

    .line 315
    if-nez p2, :cond_0

    .line 316
    monitor-exit p0

    return-void

    .line 319
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v3, v0

    .line 320
    .local v3, "timeStampInMs":J
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;

    move v5, p1

    move-object v6, p2

    move v7, p3

    .end local p1    # "contextHubId":I
    .end local p2    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local p3    # "success":Z
    .local v5, "contextHubId":I
    .local v6, "message":Landroid/hardware/location/NanoAppMessage;
    .local v7, "success":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;-><init>(JILandroid/hardware/location/NanoAppMessage;Z)V

    .line 322
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 323
    .local p1, "status":Z
    if-nez p1, :cond_1

    .line 324
    const-string p2, "ContextHubEventLogger"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to add message to nanoapp event to queue: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 314
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .end local v3    # "timeStampInMs":J
    .end local v5    # "contextHubId":I
    .end local v6    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v7    # "success":Z
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .end local p1    # "status":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 326
    .restart local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .restart local v3    # "timeStampInMs":J
    .restart local v5    # "contextHubId":I
    .restart local v6    # "message":Landroid/hardware/location/NanoAppMessage;
    .restart local v7    # "success":Z
    .restart local p1    # "status":Z
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .end local v3    # "timeStampInMs":J
    .end local v5    # "contextHubId":I
    .end local v6    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v7    # "success":Z
    .end local p1    # "status":Z
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized logNanoappLoad(IJIJZ)V
    .locals 12
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "nanoappVersion"    # I
    .param p5, "nanoappSize"    # J
    .param p7, "success"    # Z

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v3, v0

    .line 259
    .local v3, "timeStampInMs":J
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;

    move v5, p1

    move-wide v6, p2

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;-><init>(JIJIJZ)V

    .line 261
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 262
    .local v0, "status":Z
    if-nez v0, :cond_0

    .line 263
    const-string v1, "ContextHubEventLogger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add nanoapp load event to queue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "status":Z
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
    .end local v3    # "timeStampInMs":J
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .end local p1    # "contextHubId":I
    .end local p2    # "nanoappId":J
    .end local p4    # "nanoappVersion":I
    .end local p5    # "nanoappSize":J
    .end local p7    # "success":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 265
    .restart local v0    # "status":Z
    .restart local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
    .restart local v3    # "timeStampInMs":J
    .restart local p1    # "contextHubId":I
    .restart local p2    # "nanoappId":J
    .restart local p4    # "nanoappVersion":I
    .restart local p5    # "nanoappSize":J
    .restart local p7    # "success":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    .end local v0    # "status":Z
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
    .end local v3    # "timeStampInMs":J
    .end local p1    # "contextHubId":I
    .end local p2    # "nanoappId":J
    .end local p4    # "nanoappVersion":I
    .end local p5    # "nanoappSize":J
    .end local p7    # "success":Z
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized logNanoappUnload(IJZ)V
    .locals 9
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "success"    # Z

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v3, v0

    .line 276
    .local v3, "timeStampInMs":J
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;

    move v5, p1

    move-wide v6, p2

    move v8, p4

    .end local p1    # "contextHubId":I
    .end local p2    # "nanoappId":J
    .end local p4    # "success":Z
    .local v5, "contextHubId":I
    .local v6, "nanoappId":J
    .local v8, "success":Z
    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;-><init>(JIJZ)V

    .line 278
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {p1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 279
    .local p1, "status":Z
    if-nez p1, :cond_0

    .line 280
    const-string p2, "ContextHubEventLogger"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to add nanoapp unload event to queue: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 274
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
    .end local v3    # "timeStampInMs":J
    .end local v5    # "contextHubId":I
    .end local v6    # "nanoappId":J
    .end local v8    # "success":Z
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .end local p1    # "status":Z
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 282
    .restart local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
    .restart local v3    # "timeStampInMs":J
    .restart local v5    # "contextHubId":I
    .restart local v6    # "nanoappId":J
    .restart local v8    # "success":Z
    .restart local p1    # "status":Z
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
    .end local v3    # "timeStampInMs":J
    .end local v5    # "contextHubId":I
    .end local v6    # "nanoappId":J
    .end local v8    # "success":Z
    .end local p1    # "status":Z
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized logReliableMessageToNanoappStatus(IB)V
    .locals 3
    .param p1, "messageSequenceNumber"    # I
    .param p2, "errorCode"    # B

    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;

    .line 337
    .local v1, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->message:Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->message:Landroid/hardware/location/NanoAppMessage;

    .line 338
    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 340
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;->setErrorCode(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    goto :goto_1

    .line 335
    .end local v1    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEventLogger;
    .end local p1    # "messageSequenceNumber":I
    .end local p2    # "errorCode":B
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 343
    .restart local p1    # "messageSequenceNumber":I
    .restart local p2    # "errorCode":B
    :cond_0
    goto :goto_0

    .line 344
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 335
    .end local p1    # "messageSequenceNumber":I
    .end local p2    # "errorCode":B
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Nanoapp Loads:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappLoadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;

    .line 366
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappLoadEvent;
    goto :goto_0

    .line 369
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "Nanoapp Unloads:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mNanoappUnloadEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;

    .line 373
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappUnloadEvent;
    goto :goto_1

    .line 376
    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, "Messages from Nanoapps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageFromNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;

    .line 380
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    goto :goto_2

    .line 383
    :cond_2
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v1, "Messages to Nanoapps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mMessageToNanoappQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;

    .line 387
    .restart local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$NanoappMessageEvent;
    goto :goto_3

    .line 390
    :cond_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v1, "Context Hub Restarts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEventLogger;->mContextHubRestartEventQueue:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;

    .line 394
    .local v2, "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 395
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .end local v2    # "event":Lcom/android/server/location/contexthub/ContextHubEventLogger$ContextHubRestartEvent;
    goto :goto_4

    .line 397
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
