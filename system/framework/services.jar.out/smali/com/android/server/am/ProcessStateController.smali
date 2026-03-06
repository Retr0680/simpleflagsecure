.class public Lcom/android/server/am/ProcessStateController;
.super Ljava/lang/Object;
.source "ProcessStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessStateController$GlobalState;,
        Lcom/android/server/am/ProcessStateController$Builder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private final mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

.field private final mOomAdjuster:Lcom/android/server/am/OomAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "ProcessStateController"

    sput-object v0, Lcom/android/server/am/ProcessStateController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;Z)V
    .locals 11
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"    # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p4, "handlerThread"    # Lcom/android/server/ServiceThread;
    .param p5, "cachedAppOptimizer"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p6, "oomAdjInjector"    # Lcom/android/server/am/OomAdjuster$Injector;
    .param p7, "useOomAdjusterModernImpl"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/am/ProcessStateController$GlobalState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ProcessStateController$GlobalState;-><init>(Lcom/android/server/am/ProcessStateController-IA;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    .line 51
    if-eqz p7, :cond_0

    .line 52
    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl;

    iget-object v7, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/OomAdjusterModernImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v3, Lcom/android/server/am/OomAdjuster;

    iget-object v8, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/OomAdjuster$GlobalState;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;ZLcom/android/server/am/ProcessStateController-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/ProcessStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/OomAdjuster$Injector;Z)V

    return-void
.end method


# virtual methods
.method public addConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "cr"    # Lcom/android/server/am/ConnectionRecord;

    .line 449
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->addConnection(Lcom/android/server/am/ConnectionRecord;)V

    .line 450
    return-void
.end method

.method public addExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 0
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "externalProcessToken"    # Landroid/os/IBinder;
    .param p3, "callingUid"    # I
    .param p4, "callingTag"    # Ljava/lang/String;

    .line 368
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ContentProviderRecord;->addExternalProcessHandleLocked(Landroid/os/IBinder;ILjava/lang/String;)V

    .line 369
    return-void
.end method

.method public addProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpc"    # Lcom/android/server/am/ContentProviderConnection;

    .line 391
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessProviderRecord;->addProviderConnection(Lcom/android/server/am/ContentProviderConnection;)V

    .line 392
    return-void
.end method

.method public addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    .line 349
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 350
    .local v0, "providers":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessProviderRecord;->hasProvider(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 351
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessProviderRecord;->installProvider(Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)V

    .line 352
    const/4 v1, 0x1

    return v1
.end method

.method public clearShortFgsInfo(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 554
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearShortFgsInfo()V

    .line 555
    return-void
.end method

.method public decrementCurReceivers(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enqueueUpdateTarget(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 70
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 71
    return-void
.end method

.method public getOomAdjuster()Lcom/android/server/am/OomAdjuster;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    return-object v0
.end method

.method public incrementCurReceivers(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCleanupApplicationRecord(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 518
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->onCleanupApplicationRecordLocked()V

    .line 519
    return-void
.end method

.method public removeAllConnections(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 463
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->removeAllConnections()V

    .line 464
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->removeAllSdkSandboxConnections()V

    .line 465
    return-void
.end method

.method public removeConnection(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ConnectionRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "cr"    # Lcom/android/server/am/ConnectionRecord;

    .line 456
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->removeConnection(Lcom/android/server/am/ConnectionRecord;)V

    .line 457
    return-void
.end method

.method public removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p2, "externalProcessToken"    # Landroid/os/IBinder;

    .line 376
    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderRecord;->removeExternalProcessHandleLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public removeProviderConnection(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderConnection;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpc"    # Lcom/android/server/am/ContentProviderConnection;

    .line 399
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessProviderRecord;->removeProviderConnection(Lcom/android/server/am/ContentProviderConnection;)Z

    .line 400
    return-void
.end method

.method public removePublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "name"    # Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 360
    .local v0, "providers":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessProviderRecord;->removeProvider(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public removeUpdateTarget(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procDied"    # Z

    .line 77
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OomAdjuster;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 78
    return-void
.end method

.method public runFollowUpUpdate()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjuster;->updateOomAdjFollowUpTargetsLocked()V

    .line 109
    return-void
.end method

.method public runFullUpdate(I)V
    .locals 1
    .param p1, "oomAdjReason"    # I

    .line 100
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(I)V

    .line 101
    return-void
.end method

.method public runPendingUpdate(I)V
    .locals 1
    .param p1, "oomAdjReason"    # I

    .line 93
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(I)V

    .line 94
    return-void
.end method

.method public runUpdate(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"    # I

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    return v0
.end method

.method public setActiveInstrumentation(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActiveInstrumentation;)V
    .locals 0
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activeInstrumentation"    # Lcom/android/server/am/ActiveInstrumentation;

    .line 253
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V

    .line 254
    return-void
.end method

.method public setActivityStateFlags(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "flags"    # I

    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 238
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->setAttachingProcessStatesLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 239
    return-void
.end method

.method public setBackupTarget(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "userId"    # I

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    iget-object v0, v0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method public setBroadcastSchedGroup(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "schedGroup"    # I

    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExecServicesFg(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "execServicesFg"    # Z

    .line 471
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setExecServicesFg(Z)V

    .line 472
    return-void
.end method

.method public setForcingToImportant(Lcom/android/server/am/ProcessRecord;Ljava/lang/Object;)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "forcingToImportant"    # Ljava/lang/Object;

    .line 304
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setForcingToImportant(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public setForegroundServiceType(Lcom/android/server/am/ServiceRecord;I)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fgsType"    # I

    .line 540
    iput p2, p1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 541
    return-void
.end method

.method public setHasAboveClient(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "hasAboveClient"    # Z

    .line 503
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setHasAboveClient(Z)V

    .line 504
    return-void
.end method

.method public setHasActivity(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hasActivity"    # Z

    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHasClientActivities(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "hasClientActivities"    # Z

    .line 488
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    .line 489
    return-void
.end method

.method public setHasForegroundServices(Lcom/android/server/am/ProcessServiceRecord;ZIZ)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "hasForegroundServices"    # Z
    .param p3, "fgServiceTypes"    # I
    .param p4, "hasTypeNoneFgs"    # Z

    .line 480
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/am/ProcessServiceRecord;->setHasForegroundServices(ZIZ)V

    .line 481
    return-void
.end method

.method public setHasOverlayUi(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hasOverlayUi"    # Z

    .line 277
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 278
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasOverlayUi(Z)V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public setHasShownUi(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hasShownUi"    # Z

    .line 313
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasShownUi(Z)V

    .line 315
    return-void
.end method

.method public setHasTopUi(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hasTopUi"    # Z

    .line 263
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 264
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lcom/android/server/am/ProcessStateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting hasTopUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setHasTopUi(Z)V

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public setHasVisibleActivity(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hasVisibleActivity"    # Z

    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeavyWeightProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHostProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "host"    # Lcom/android/server/am/ProcessRecord;

    .line 525
    iput-object p2, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 526
    return-void
.end method

.method public setIsForegroundService(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "isFgs"    # Z

    .line 532
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 533
    return-void
.end method

.method public setIsLastMemoryLevelNormal(Z)V
    .locals 1
    .param p1, "isMemoryNormal"    # Z

    .line 214
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    iput-boolean p1, v0, Lcom/android/server/am/ProcessStateController$GlobalState;->isLastMemoryLevelNormal:Z

    .line 215
    return-void
.end method

.method public setLastProviderTime(Lcom/android/server/am/ProcessRecord;J)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "uptimeMs"    # J

    .line 383
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/ProcessProviderRecord;->setLastProviderTime(J)V

    .line 384
    return-void
.end method

.method public setLastTopAlmostPerceptibleBindRequest(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "lastTopAlmostPerceptibleBindRequestUptimeMs"    # J

    .line 577
    iput-wide p2, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    .line 579
    return-void
.end method

.method public setMaxAdj(Lcom/android/server/am/ProcessRecord;I)V
    .locals 1
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "adj"    # I

    .line 230
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 231
    return-void
.end method

.method public setPendingFinishAttach(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 0
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pendingFinishAttach"    # Z

    .line 245
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessRecord;->setPendingFinishAttach(Z)V

    .line 246
    return-void
.end method

.method public setPreviousProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRunningRemoteAnimation(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "runningRemoteAnimation"    # Z

    .line 290
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 291
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcom/android/server/am/ProcessStateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting runningRemoteAnimation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setRunningRemoteAnimation(Z)V

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public setServiceLastActivityTime(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "lastActivityUpdateMs"    # J

    .line 561
    iput-wide p2, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 562
    return-void
.end method

.method public setShortFgsInfo(Lcom/android/server/am/ServiceRecord;J)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "uptimeNow"    # J

    .line 547
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ServiceRecord;->setShortFgsInfo(J)V

    .line 548
    return-void
.end method

.method public setStartRequested(Lcom/android/server/am/ServiceRecord;Z)V
    .locals 0
    .param p1, "sr"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "startRequested"    # Z

    .line 568
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 569
    return-void
.end method

.method public setTopApp(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTopProcessState(I)V
    .locals 2
    .param p1, "procState"    # I

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTreatLikeActivity(Lcom/android/server/am/ProcessServiceRecord;Z)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "treatLikeActivity"    # Z

    .line 495
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    .line 496
    return-void
.end method

.method public setUidTempAllowlistStateLSP(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "allowList"    # Z

    .line 222
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OomAdjuster;->setUidTempAllowlistStateLSP(IZ)V

    .line 223
    return-void
.end method

.method public setUseTopSchedGroupForTopProcess(Z)V
    .locals 2
    .param p1, "useTopSchedGroup"    # Z

    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisibleDozeUiProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWakefulness(I)V
    .locals 2
    .param p1, "wakefulness"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/am/ProcessStateController$GlobalState;->isAwake:Z

    .line 193
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->onWakefulnessChanged(I)V

    .line 194
    return-void
.end method

.method public startExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 428
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->startExecutingService(Lcom/android/server/am/ServiceRecord;)V

    .line 429
    return-void
.end method

.method public startService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 1
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 407
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->startService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    return v0
.end method

.method public stopAllExecutingServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 442
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->stopAllExecutingServices()V

    .line 443
    return-void
.end method

.method public stopAllServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 421
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->stopAllServices()V

    .line 422
    return-void
.end method

.method public stopBackupTarget(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 207
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController;->mGlobalState:Lcom/android/server/am/ProcessStateController$GlobalState;

    iget-object v0, v0, Lcom/android/server/am/ProcessStateController$GlobalState;->backupTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 208
    return-void
.end method

.method public stopExecutingService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 435
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->stopExecutingService(Lcom/android/server/am/ServiceRecord;)V

    .line 436
    return-void
.end method

.method public stopService(Lcom/android/server/am/ProcessServiceRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 1
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "sr"    # Lcom/android/server/am/ServiceRecord;

    .line 414
    invoke-virtual {p1, p2}, Lcom/android/server/am/ProcessServiceRecord;->stopService(Lcom/android/server/am/ServiceRecord;)Z

    move-result v0

    return v0
.end method

.method public updateHasAboveClientLocked(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 511
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateHasAboveClientLocked()V

    .line 512
    return-void
.end method

.method public updateHasTopStartedAlmostPerceptibleServices(Lcom/android/server/am/ProcessServiceRecord;)V
    .locals 0
    .param p1, "psr"    # Lcom/android/server/am/ProcessServiceRecord;

    .line 586
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    .line 587
    return-void
.end method
