.class public Lcom/nothing/server/StorageStatusTracker;
.super Ljava/lang/Object;
.source "StorageStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_CHECK_STORAGE_STATUS:I = 0x0

.field private static final STORAGE_PROPPERTY_ARRAY:[Ljava/lang/String;

.field private static final STORAGE_STATUS_EVENT:Ljava/lang/String; = "Storage_Status"

.field private static final TAG:Ljava/lang/String; = "StorageStatusTracker"

.field private static sStorageStatusTracker:Lcom/nothing/server/StorageStatusTracker;


# instance fields
.field private mAppTracker:Lcom/nothing/experience/AppTracking;

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageStatusHandler:Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    const-string v7, "persist.vold.userdata_total_kb"

    const-string v8, "persist.vold.userdata_free_kb"

    const-string v0, "persist.vold.fs_dirtyRatio"

    const-string v1, "persist.vold.gc_urgent_seq_count"

    const-string v2, "persist.vold.gc_urgent_total_count"

    const-string v3, "persist.vold.gc_ufs_lifetime"

    const-string v4, "persist.vold.gc_ufs_hidcolor"

    const-string v5, "persist.vold.ufsgc_total_count"

    const-string v6, "persist.vold.u_name"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nothing/server/StorageStatusTracker;->STORAGE_PROPPERTY_ARRAY:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nothing/server/StorageStatusTracker;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "init StorageStatusTracker"

    const-string v1, "StorageStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/nothing/server/StorageStatusTracker;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/nothing/server/StorageStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nothing/experience/AppTracking;->getInstance(Landroid/content/Context;)Lcom/nothing/experience/AppTracking;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/server/StorageStatusTracker;->mAppTracker:Lcom/nothing/experience/AppTracking;

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nothing/server/StorageStatusTracker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/nothing/server/StorageStatusTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v0, Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;

    iget-object v1, p0, Lcom/nothing/server/StorageStatusTracker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;-><init>(Lcom/nothing/server/StorageStatusTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nothing/server/StorageStatusTracker;->mStorageStatusHandler:Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/nothing/server/StorageStatusTracker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/nothing/server/StorageStatusTracker;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/nothing/server/StorageStatusTracker;->sStorageStatusTracker:Lcom/nothing/server/StorageStatusTracker;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 57
    new-instance v1, Lcom/nothing/server/StorageStatusTracker;

    invoke-direct {v1, p0}, Lcom/nothing/server/StorageStatusTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nothing/server/StorageStatusTracker;->sStorageStatusTracker:Lcom/nothing/server/StorageStatusTracker;

    goto :goto_0

    .line 55
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 59
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Lcom/nothing/server/StorageStatusTracker;->sStorageStatusTracker:Lcom/nothing/server/StorageStatusTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getAllStorageStatus()V
    .locals 6

    .line 95
    const-string v0, ""

    .line 96
    .local v0, "all_result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/nothing/server/StorageStatusTracker;->STORAGE_PROPPERTY_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 97
    sget-object v2, Lcom/nothing/server/StorageStatusTracker;->STORAGE_PROPPERTY_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "prop":Ljava/lang/String;
    const-string v3, "_"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    goto :goto_1

    .line 102
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 99
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .end local v2    # "prop":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 106
    .end local v1    # "i":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "All_Storage_Status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/nothing/server/StorageStatusTracker;->mAppTracker:Lcom/nothing/experience/AppTracking;

    const-string v3, "Storage_Status"

    invoke-virtual {v2, v3, v1}, Lcom/nothing/experience/AppTracking;->logQualityEvent(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 109
    sget-boolean v2, Lcom/nothing/server/StorageStatusTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 110
    const-string v2, "StorageStatusTracker"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_3
    return-void
.end method

.method public setStartUpdateStorageStatus()V
    .locals 2

    .line 72
    const-string v0, "StorageStatusTracker"

    const-string v1, "Start update storage status"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/nothing/server/StorageStatusTracker;->mStorageStatusHandler:Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    return-void
.end method
