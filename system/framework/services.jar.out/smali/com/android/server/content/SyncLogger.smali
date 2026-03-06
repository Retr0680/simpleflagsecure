.class public Lcom/android/server/content/SyncLogger;
.super Ljava/lang/Object;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncLogger$RotatingFileLogger;
    }
.end annotation


# static fields
.field public static final CALLING_UID_SELF:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SyncLogger"

.field private static sInstance:Lcom/android/server/content/SyncLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/content/SyncLogger;
    .locals 2

    const-class v0, Lcom/android/server/content/SyncLogger;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/android/server/content/SyncLogger;

    invoke-direct {v1}, Lcom/android/server/content/SyncLogger;-><init>()V

    sput-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncLogger;->sInstance:Lcom/android/server/content/SyncLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 74
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static logSafe(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;

    .line 321
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;
    .locals 1
    .param p0, "asc"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 333
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;
    .locals 1
    .param p0, "operation"    # Lcom/android/server/content/SyncOperation;

    .line 329
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static logSafe(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/lang/String;
    .locals 1
    .param p0, "endPoint"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 325
    if-nez p0, :cond_0

    const-string v0, "[null]"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 116
    return-void
.end method

.method public enabled()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 109
    const-string v0, ""

    return-object v0
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # [Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public purgeOldLogs()V
    .locals 0

    .line 105
    return-void
.end method
