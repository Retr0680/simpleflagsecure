.class Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
.super Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;
.source "InstallDependencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallDependencyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DependencyInstallerCallbackCallOnce"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field private mDependencyInstallerCallbackInvoked:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;


# direct methods
.method public static synthetic $r8$lambda$Kt3-GGszpNON01-m61rud1b8C_c(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->lambda$validateSessionIds$2(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T8pWQuu5GiV4_bkHl0Oll56UgMo(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->lambda$onFailureToResolveAllDependencies$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rd2v2mEAXOx0nOy7DznzLts-3xg(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->lambda$onAllDependenciesResolved$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;I)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callback"    # Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-direct {p0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;-><init>()V

    .line 311
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 315
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mHandler:Landroid/os/Handler;

    .line 316
    iput-object p3, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    .line 317
    iput p4, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mUserId:I

    .line 318
    return-void
.end method

.method private synthetic lambda$onAllDependenciesResolved$0(I)V
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallDependencyHelper;->notifySessionComplete(I)V

    .line 360
    return-void
.end method

.method private synthetic lambda$onFailureToResolveAllDependencies$1()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    const-string v1, "Failed to resolve all dependencies automatically"

    invoke-static {v0, v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$smonError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method private static synthetic lambda$validateSessionIds$2(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 1
    .param p0, "sessionId"    # I
    .param p1, "s"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 426
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private validateSessionIds([I)Landroid/util/ArraySet;
    .locals 9
    .param p1, "sessionIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 391
    .local v0, "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 392
    .local v1, "historicalSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 393
    aget v3, p1, v2

    .line 394
    .local v3, "sessionId":I
    iget-object v4, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v4}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    .line 397
    .local v4, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    const-string v5, "Session already finished: "

    if-eqz v4, :cond_1

    .line 398
    iget-boolean v6, v4, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    if-nez v6, :cond_0

    .line 404
    iget-boolean v5, v4, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-nez v5, :cond_3

    .line 406
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAllDependenciesResolved pending session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 416
    :cond_1
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAllDependenciesResolved cleaning up finished session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-nez v1, :cond_2

    .line 421
    iget-object v6, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v6}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v6

    iget v7, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageInstallerService;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 422
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 425
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;

    invoke-direct {v7, v3}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 426
    invoke-interface {v6}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 428
    if-eqz v4, :cond_5

    .line 433
    iget-boolean v6, v4, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-eqz v6, :cond_4

    .line 392
    .end local v3    # "sessionId":I
    .end local v4    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 434
    .restart local v3    # "sessionId":I
    .restart local v4    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 429
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 392
    .end local v3    # "sessionId":I
    .end local v4    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_6
    nop

    .line 438
    .end local v2    # "i":I
    return-object v0
.end method


# virtual methods
.method public onAllDependenciesResolved([I)V
    .locals 6
    .param p1, "sessionIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    if-nez v0, :cond_3

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 328
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 332
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAllDependenciesResolved started"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->validateSessionIds([I)Landroid/util/ArraySet;

    move-result-object v0

    .line 339
    .local v0, "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    .line 341
    return-void

    .line 363
    .end local v0    # "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    goto :goto_1

    .line 345
    .restart local v0    # "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Landroid/util/ArraySet;)V

    .line 347
    .local v1, "tracker":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v2}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmTrackers(Lcom/android/server/pm/InstallDependencyHelper;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v3}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmTrackers(Lcom/android/server/pm/InstallDependencyHelper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :try_start_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 354
    .local v3, "sessionId":I
    iget-object v4, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v4}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageInstallerService;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    .line 357
    .local v4, "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-nez v4, :cond_1

    .line 358
    new-instance v5, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;I)V

    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 362
    .end local v3    # "sessionId":I
    .end local v4    # "sessionInfo":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_1
    goto :goto_0

    .line 353
    :cond_2
    nop

    .line 369
    .end local v0    # "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v1    # "tracker":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    nop

    .line 370
    return-void

    .line 349
    .restart local v0    # "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v1    # "tracker":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
    .end local p1    # "sessionIds":[I
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 363
    .end local v0    # "validSessionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v1    # "tracker":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    .restart local p0    # "this":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
    .restart local p1    # "sessionIds":[I
    :goto_1
    nop

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    monitor-enter p0

    .line 366
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 367
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 368
    throw v0

    .line 367
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 324
    :cond_3
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback is being or has been already processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
    .end local p1    # "sessionIds":[I
    throw v0

    .line 328
    .restart local p0    # "this":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
    .restart local p1    # "sessionIds":[I
    :goto_2
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method public onFailureToResolveAllDependencies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;->mDependencyInstallerCallbackInvoked:Z

    .line 380
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 385
    return-void

    .line 380
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 376
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback is being or has been already processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
    throw v0

    .line 380
    .restart local p0    # "this":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
