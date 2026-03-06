.class Lcom/android/server/wm/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "ClientLifecycleManager.java"


# static fields
.field private static final ENABLE_BUNDLE_LAUNCH_ACTIVITY_ITEM:J = 0x1352f516L

.field private static final TAG:Ljava/lang/String; = "ClientLifecycleManager"


# instance fields
.field final mPendingTransactions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    return-void
.end method

.method private getOrCreatePendingTransaction(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;
    .locals 4
    .param p1, "client"    # Landroid/app/IApplicationThread;

    .line 215
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .local v0, "clientBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/servertransaction/ClientTransaction;

    .line 217
    .local v1, "pendingTransaction":Landroid/app/servertransaction/ClientTransaction;
    if-eqz v1, :cond_0

    .line 218
    return-object v1

    .line 222
    :cond_0
    new-instance v2, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v2, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 223
    .local v2, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v3, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-object v2
.end method

.method private onClientTransactionItemScheduled(Landroid/app/servertransaction/ClientTransaction;Z)Z
    .locals 2
    .param p1, "clientTransaction"    # Landroid/app/servertransaction/ClientTransaction;
    .param p2, "shouldDispatchImmediately"    # Z

    .line 237
    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result v0

    return v0
.end method

.method static shouldDispatchLaunchActivityItemIndependently(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "appPackageName"    # Ljava/lang/String;
    .param p1, "appUid"    # I

    .line 264
    nop

    .line 266
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 264
    const-wide/32 v1, 0x1352f516

    invoke-static {v1, v2, p0, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldDispatchPendingTransactionsImmediately()Z
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 248
    return v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 257
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isTraversalScheduled()Z

    move-result v0

    nop

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 258
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 256
    :goto_0
    return v1
.end method


# virtual methods
.method dispatchPendingTransaction(Landroid/app/IApplicationThread;)V
    .locals 2
    .param p1, "client"    # Landroid/app/IApplicationThread;

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 194
    .local v0, "pendingTransaction":Landroid/app/servertransaction/ClientTransaction;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    .line 197
    :cond_0
    return-void
.end method

.method dispatchPendingTransactions()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    const-string v0, "clientTransactionsDispatched"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 183
    .local v0, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 184
    iget-object v4, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/servertransaction/ClientTransaction;

    .line 185
    .local v4, "transaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    .line 183
    .end local v4    # "transaction":Landroid/app/servertransaction/ClientTransaction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 187
    .end local v3    # "i":I
    iget-object v3, p0, Lcom/android/server/wm/ClientLifecycleManager;->mPendingTransactions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 188
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 189
    return-void
.end method

.method onLayoutContinued()V
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/android/server/wm/ClientLifecycleManager;->shouldDispatchPendingTransactionsImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/ClientLifecycleManager;->dispatchPendingTransactions()V

    .line 210
    :cond_0
    return-void
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z
    .locals 4
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 75
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()Landroid/os/RemoteException;

    move-result-object v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 78
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 79
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deliver transaction for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\ntransaction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClientLifecycleManager"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const/4 v2, 0x0

    return v2

    .line 82
    .end local v1    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    .locals 3
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "item"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->getOrCreatePendingTransaction(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 117
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ClientLifecycleManager;->onClientTransactionItemScheduled(Landroid/app/servertransaction/ClientTransaction;Z)Z

    move-result v1

    .line 121
    .local v1, "res":Z
    if-eqz v1, :cond_0

    .line 125
    return v1

    .line 123
    :cond_0
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2
.end method

.method scheduleTransactionItemNow(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    .locals 3
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "transactionItem"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-direct {v0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/app/IApplicationThread;)V

    .line 95
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)Z

    move-result v1

    .line 97
    .local v1, "res":Z
    if-eqz v1, :cond_0

    .line 101
    return v1

    .line 99
    :cond_0
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2
.end method

.method varargs scheduleTransactionItems(Landroid/app/IApplicationThread;Z[Landroid/app/servertransaction/ClientTransactionItem;)Z
    .locals 4
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "shouldDispatchImmediately"    # Z
    .param p3, "items"    # [Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/wm/ClientLifecycleManager;->getOrCreatePendingTransaction(Landroid/app/IApplicationThread;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 162
    .local v0, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    array-length v1, p3

    .line 163
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    aget-object v3, p3, v2

    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 167
    .end local v2    # "i":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->onClientTransactionItemScheduled(Landroid/app/servertransaction/ClientTransaction;Z)Z

    move-result v2

    .line 169
    .local v2, "res":Z
    if-eqz v2, :cond_1

    .line 173
    return v2

    .line 171
    :cond_1
    new-instance v3, Landroid/os/DeadObjectException;

    invoke-direct {v3}, Landroid/os/DeadObjectException;-><init>()V

    throw v3
.end method

.method varargs scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z
    .locals 1
    .param p1, "client"    # Landroid/app/IApplicationThread;
    .param p2, "items"    # [Landroid/app/servertransaction/ClientTransactionItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;Z[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0

    return v0
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 64
    iput-object p1, p0, Lcom/android/server/wm/ClientLifecycleManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 65
    return-void
.end method
