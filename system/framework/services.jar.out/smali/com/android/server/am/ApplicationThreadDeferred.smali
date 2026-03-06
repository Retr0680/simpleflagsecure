.class final Lcom/android/server/am/ApplicationThreadDeferred;
.super Landroid/app/IApplicationThread$Delegator;
.source "ApplicationThreadDeferred.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ApplicationThreadDeferred$Operation;,
        Lcom/android/server/am/ApplicationThreadDeferred$NotificationType;
    }
.end annotation


# static fields
.field private static final CLEAR_DNS_CACHE:I = 0x0

.field private static final NOTIFICATION_COUNT:I = 0x4

.field private static final SCHEDULE_LOW_MEMORY:I = 0x2

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final UPDATE_HTTP_PROXY:I = 0x3

.field private static final UPDATE_TIME_ZONE:I = 0x1


# instance fields
.field private final mBase:Landroid/app/IApplicationThread;

.field private final mDefer:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

.field private mPaused:Z

.field private final mPending:[Z


# direct methods
.method public static synthetic $r8$lambda$EyFIl9oQearTD0bqYtkIdp-2aEw(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$PP7wSw0gGLmO6hi1tOkPocTG8v8(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_AjVZez4200DRB8oUj9lSUVdMXo(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pzCGrkeFAdnodnDYXv9us5vUB_A(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;)V
    .locals 1
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 109
    invoke-static {}, Lcom/android/server/am/ApplicationThreadDeferred;->deferBindersWhenPaused()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ApplicationThreadDeferred;-><init>(Landroid/app/IApplicationThread;Z)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;Z)V
    .locals 3
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "defer"    # Z

    .line 96
    invoke-direct {p0, p1}, Landroid/app/IApplicationThread$Delegator;-><init>(Landroid/app/IApplicationThread;)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    .line 80
    const/4 v1, 0x4

    new-array v2, v1, [Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    iput-object v2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    .line 84
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    .line 98
    iput-object p1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    .line 99
    iput-boolean p2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mDefer:Z

    .line 101
    iget-object v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    new-instance v2, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    aput-object v2, v1, v0

    .line 102
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    new-instance v1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 103
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    new-instance v1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 104
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    new-instance v1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 105
    return-void
.end method

.method private static deferBindersWhenPaused()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method private execute(I)V
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mDefer:Z

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 160
    monitor-exit v0

    return-void

    .line 162
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/server/am/ApplicationThreadDeferred$Operation;->run()V

    .line 165
    return-void

    .line 162
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$new$0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->clearDnsCache()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateTimeZone()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->scheduleLowMemory()V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateHttpProxy()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public clearDnsCache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    .line 170
    return-void
.end method

.method onProcessPaused()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onProcessPausedCancelled()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    .line 150
    return-void
.end method

.method onProcessUnpaused()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/server/am/ApplicationThreadDeferred$Operation;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 138
    :catch_0
    move-exception v2

    goto :goto_4

    .line 133
    .restart local v2    # "i":I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 142
    .end local v2    # "i":I
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 143
    :goto_2
    goto :goto_5

    .line 144
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 142
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 143
    nop

    .end local p0    # "this":Lcom/android/server/am/ApplicationThreadDeferred;
    throw v2

    .line 138
    .restart local p0    # "this":Lcom/android/server/am/ApplicationThreadDeferred;
    :goto_4
    nop

    .line 142
    iget-object v2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_2

    .line 144
    :goto_5
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public scheduleLowMemory()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    .line 180
    return-void
.end method

.method public updateHttpProxy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    .line 185
    return-void
.end method

.method public updateTimeZone()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    .line 175
    return-void
.end method
