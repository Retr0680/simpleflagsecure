.class public Lcom/android/server/location/contexthub/ContextHubTestModeManager;
.super Ljava/lang/Object;
.source "ContextHubTestModeManager.java"


# static fields
.field private static final DROP_MESSAGE_TO_CONTEXT_HUB_EVENT:I = 0x1

.field private static final DROP_MESSAGE_TO_HOST_EVENT:I = 0x0

.field private static final DUPLICATE_MESSAGE_TO_CONTEXT_HUB_EVENT:I = 0x3

.field private static final DUPLICATE_MESSAGE_TO_HOST_EVENT:I = 0x2

.field private static final NUMBER_OF_EVENTS:I = 0x4

.field private static final NUM_MESSAGES_TO_DUPLICATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ContextHubTestModeManager"


# instance fields
.field private final mCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTestModeManager;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public handleNanoappMessage(Ljava/lang/Runnable;Landroid/hardware/location/NanoAppMessage;)Z
    .locals 10
    .param p1, "handleMessage"    # Ljava/lang/Runnable;
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 51
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTestModeManager;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 56
    .local v2, "counterValue":J
    const-wide/16 v4, 0x4

    rem-long v6, v2, v4

    const-wide/16 v8, 0x2

    cmp-long v0, v6, v8

    const-string v6, "ContextHubTestModeManager"

    const/4 v7, 0x1

    if-nez v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST MODE] Duplicating message to host (3 sends) with message sequence number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 63
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 65
    .end local v0    # "i":I
    return v7

    .line 68
    :cond_2
    rem-long v4, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST MODE] Dropping message to host with message sequence number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v7

    .line 75
    :cond_3
    return v1
.end method

.method public sendMessageToContextHub(Ljava/util/concurrent/Callable;Landroid/hardware/location/NanoAppMessage;)Z
    .locals 10
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/location/NanoAppMessage;",
            ")Z"
        }
    .end annotation

    .line 83
    .local p1, "sendMessage":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    return v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTestModeManager;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 88
    .local v2, "counterValue":J
    const-wide/16 v4, 0x4

    rem-long v6, v2, v4

    const-wide/16 v8, 0x3

    cmp-long v0, v6, v8

    const/4 v6, 0x1

    const-string v7, "ContextHubTestModeManager"

    if-nez v0, :cond_3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST MODE] Duplicating message to the Context Hub (3 sends) with message sequence number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 95
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendMessage returned an error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    .end local v1    # "result":I
    :catch_0
    move-exception v1

    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    goto :goto_3

    .line 99
    :goto_2
    nop

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in sendMessageToContextHub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 104
    .end local v0    # "i":I
    return v6

    .line 107
    :cond_3
    rem-long v4, v2, v4

    const-wide/16 v8, 0x1

    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TEST MODE] Dropping message to the Context Hub with message sequence number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v6

    .line 115
    :cond_4
    return v1
.end method
