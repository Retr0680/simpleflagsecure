.class Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallDependencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallOnceProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Ljava/lang/Void;",
        "Lcom/android/server/pm/PackageManagerException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/OutcomeReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Lcom/android/server/pm/PackageManagerException;",
            ">;"
        }
    .end annotation
.end field

.field private mCalled:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$JKIEhxY3I6krJ8c-hvvA1canv4c(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->lambda$onError$1(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTuaETiNg7IebcFDIkwgeH9Gdn8(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->lambda$onResult$0()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Lcom/android/server/pm/PackageManagerException;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Lcom/android/server/pm/PackageManagerException;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    .line 271
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    .line 272
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Landroid/os/OutcomeReceiver;

    .line 273
    return-void
.end method

.method private synthetic lambda$onError$1(Lcom/android/server/pm/PackageManagerException;)V
    .locals 1
    .param p1, "error"    # Lcom/android/server/pm/PackageManagerException;

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method private synthetic lambda$onResult$0()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 281
    return-void
.end method


# virtual methods
.method public onError(Lcom/android/server/pm/PackageManagerException;)V
    .locals 2
    .param p1, "error"    # Lcom/android/server/pm/PackageManagerException;

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 297
    return-void

    .line 296
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 264
    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onError(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 264
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 285
    return-void

    .line 284
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
