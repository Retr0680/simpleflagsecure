.class public abstract Lcom/android/server/companion/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final HEADER_LENGTH:I = 0xc

.field static final MESSAGE_RESPONSE_FAILURE:I = 0x33706573

.field static final MESSAGE_RESPONSE_SUCCESS:I = 0x33838567

.field protected static final TAG:Ljava/lang/String; = "CDM_CompanionTransport"


# instance fields
.field protected final mAssociationId:I

.field protected final mContext:Landroid/content/Context;

.field protected final mFd:Landroid/os/ParcelFileDescriptor;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/companion/IOnMessageReceivedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

.field protected final mPendingRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/CompletableFuture<",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected final mRemoteIn:Ljava/io/InputStream;

.field protected final mRemoteOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 1
    .param p1, "associationId"    # I
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "context"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    iput p1, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    .line 98
    iput-object p2, p0, Lcom/android/server/companion/transport/Transport;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 99
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteIn:Ljava/io/InputStream;

    .line 100
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/android/server/companion/transport/Transport;->mRemoteOut:Ljava/io/OutputStream;

    .line 101
    iput-object p3, p0, Lcom/android/server/companion/transport/Transport;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private callback(I[B)V
    .locals 4
    .param p1, "message"    # I
    .param p2, "data"    # [B

    .line 290
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    monitor-exit v0

    return-void

    .line 295
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 295
    .local v1, "listenersToCall":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/IOnMessageReceivedListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const-string v0, "CDM_CompanionTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is received from associationId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sending data length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to the listener(s)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/IOnMessageReceivedListener;

    .line 301
    .local v2, "listener":Landroid/companion/IOnMessageReceivedListener;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/companion/transport/Transport;->getAssociationId()I

    move-result v3

    invoke-interface {v2, v3, p2}, Landroid/companion/IOnMessageReceivedListener;->onMessageReceived(I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    goto :goto_1

    .line 302
    :catch_0
    move-exception v3

    .line 304
    .end local v2    # "listener":Landroid/companion/IOnMessageReceivedListener;
    :goto_1
    goto :goto_0

    .line 305
    :cond_1
    return-void

    .line 295
    .end local v1    # "listenersToCall":Ljava/util/Set;, "Ljava/util/Set<Landroid/companion/IOnMessageReceivedListener;>;"
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static isOneway(I)Z
    .locals 2
    .param p0, "message"    # I

    .line 88
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x43000000    # 128.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRequest(I)Z
    .locals 2
    .param p0, "message"    # I

    .line 80
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x63000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isResponse(I)Z
    .locals 2
    .param p0, "message"    # I

    .line 84
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    const/high16 v1, 0x33000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processOneway(I[B)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "data"    # [B

    .line 243
    sparse-switch p1, :sswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown message 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionTransport"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 248
    nop

    .line 255
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x43708287 -> :sswitch_0
        0x43807378 -> :sswitch_0
        0x43847987 -> :sswitch_0
    .end sparse-switch
.end method

.method private processRequest(II[B)V
    .locals 4
    .param p1, "message"    # I
    .param p2, "sequence"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const v0, 0x33706573

    const-string v1, "CDM_CompanionTransport"

    const v2, 0x33838567

    sparse-switch p1, :sswitch_data_0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown request 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    goto :goto_0

    .line 272
    :sswitch_0
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 273
    sget-object v3, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to restore permissions"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 261
    :sswitch_1
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 262
    goto :goto_0

    .line 266
    :sswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->callback(I[B)V

    .line 267
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 268
    nop

    .line 286
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x63678883 -> :sswitch_2
        0x63807378 -> :sswitch_1
        0x63826983 -> :sswitch_0
        0x63827765 -> :sswitch_2
    .end sparse-switch
.end method

.method private processResponse(II[B)V
    .locals 4
    .param p1, "message"    # I
    .param p2, "sequence"    # I
    .param p3, "data"    # [B

    .line 309
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CompletableFuture;

    .line 311
    .local v1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-nez v1, :cond_0

    .line 313
    const-string v0, "CDM_CompanionTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown sequence "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 327
    const-string v0, "CDM_CompanionTransport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unknown response 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :sswitch_0
    invoke-virtual {v1, p3}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 320
    goto :goto_0

    .line 323
    :sswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Remote failure"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 324
    nop

    .line 330
    :goto_0
    return-void

    .line 311
    .end local v1    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x33706573 -> :sswitch_1
        0x33838567 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAndForget(I[B)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "message"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    .line 206
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Sending a one-way message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 210
    .local v0, "pending":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 216
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 3
    .param p1, "message"    # I
    .param p2, "listener"    # Landroid/companion/IOnMessageReceivedListener;

    .line 110
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 114
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/transport/Transport;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    invoke-interface {v0, p0}, Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;->onClosed(Lcom/android/server/companion/transport/Transport;)V

    .line 144
    :cond_0
    return-void
.end method

.method public getAssociationId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    return v0
.end method

.method protected getFd()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method protected final handleMessage(II[B)V
    .locals 4
    .param p1, "message"    # I
    .param p2, "sequence"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    const-string v1, "CDM_CompanionTransport"

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sequence "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from association "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/companion/transport/Transport;->mAssociationId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isOneway(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-direct {p0, p1, p3}, Lcom/android/server/companion/transport/Transport;->processOneway(I[B)V

    goto :goto_1

    .line 229
    :cond_1
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processRequest(II[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to respond to 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 235
    :cond_2
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isResponse(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/transport/Transport;->processResponse(II[B)V

    goto :goto_1

    .line 238
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_1
    return-void
.end method

.method public requestForResponse(I[B)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "message"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    sget-boolean v0, Lcom/android/server/companion/transport/Transport;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDM_CompanionTransport"

    const-string v1, "Requesting for response"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/transport/Transport;->mNextSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 188
    .local v0, "sequence":I
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 189
    .local v1, "pending":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/companion/transport/Transport;->sendMessage(II[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    goto :goto_0

    .line 195
    :catch_0
    move-exception v2

    move-object v3, v2

    .line 196
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    monitor-enter v4

    .line 197
    :try_start_2
    iget-object v2, p0, Lcom/android/server/companion/transport/Transport;->mPendingRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 202
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 198
    .restart local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 191
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public sendMessage(I[B)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "message"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 161
    .local v0, "pending":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isOneway(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->sendAndForget(I[B)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/android/server/companion/transport/Transport;->isRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/Transport;->requestForResponse(I[B)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 166
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send message 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDM_CompanionTransport"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The message being sent must be either a one-way or a request."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 171
    return-object v0
.end method

.method protected abstract sendMessage(II[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method setOnTransportClosedListener(Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    .line 333
    iput-object p1, p0, Lcom/android/server/companion/transport/Transport;->mOnTransportClosed:Lcom/android/server/companion/transport/Transport$OnTransportClosedListener;

    .line 334
    return-void
.end method

.method abstract start()V
.end method

.method abstract stop()V
.end method
