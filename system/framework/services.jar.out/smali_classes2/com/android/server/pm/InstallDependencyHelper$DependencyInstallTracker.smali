.class Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallDependencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyInstallTracker"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field private final mPendingSessionIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p2, "pendingSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    .line 456
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    .line 457
    return-void
.end method


# virtual methods
.method public onSessionComplete(I)Z
    .locals 3
    .param p1, "sessionId"    # I

    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 468
    monitor-exit p0

    return v1

    .line 477
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    .line 474
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 476
    :cond_1
    monitor-exit p0

    return v1

    .line 477
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
