.class final Lcom/android/server/pm/DeletePackageHelper;
.super Ljava/lang/Object;
.source "DeletePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    }
.end annotation


# static fields
.field private static final DEBUG_CLEAN_APKS:Z = false

.field private static final DEBUG_SD_INSTALL:Z = false


# instance fields
.field private final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$-oeUp2P8o8iDLUc_n3ggTncXCE8(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$0(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Hr_v2af0PSvgDGHaWT-s7nAcws(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$1(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$At051VPPk0B3rzESNnDqgcryRsc(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$3(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K8jinxL8TaNMNq1r3FA2gQNwNFQ(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/DeletePackageHelper;->lambda$removeUnusedPackagesLPw$6(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MC3hsuSffYYhEszBQHJvs-FTT6I(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$5(Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OmU3_QuZgW_Cze1CVHdRM6F2mcY(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$4(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RQQgPNIc9pnksz9sGvFB4kTgrj8(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/DeletePackageHelper;->lambda$deletePackageVersionedInternal$2(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "removePackageHelper"    # Lcom/android/server/pm/RemovePackageHelper;
    .param p3, "broadcastHelper"    # Lcom/android/server/pm/BroadcastHelper;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 107
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 108
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 109
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 110
    return-void
.end method

.method private deleteArtDexoptArtifacts(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    .line 382
    .local v0, "filteredSnapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    goto :goto_0

    .line 378
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 384
    :catch_0
    move-exception v1

    nop

    .line 385
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "PackageManager"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 388
    .end local v0    # "filteredSnapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :cond_0
    return-void

    .line 378
    .restart local v0    # "filteredSnapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method

.method private deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    .locals 8
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I
    .param p3, "deleteCodeAndResources"    # Z
    .param p4, "flags"    # I
    .param p5, "allUserHandles"    # [I
    .param p6, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p7, "writeSettings"    # Z

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 604
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    iput v0, p6, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 606
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 607
    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    .line 605
    invoke-virtual {v0, v2, p1, p5, v3}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p6, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 608
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 611
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    move-object v2, p1

    move v3, p2

    move v6, p4

    move-object v4, p5

    move-object v5, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    .line 615
    if-eqz p3, :cond_0

    .line 616
    new-instance v0, Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 617
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/CleanUpArgs;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p6, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 621
    :cond_0
    return-void

    .line 608
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V
    .locals 15
    .param p1, "action"    # Lcom/android/server/pm/DeletePackageAction;
    .param p2, "allUserHandles"    # [I
    .param p3, "writeSettings"    # Z

    .line 684
    move-object/from16 v1, p1

    iget v0, v1, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 685
    .local v0, "flags":I
    iget-object v3, v1, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 686
    .local v3, "deletedPs":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v1, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 687
    .local v8, "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    iget-object v2, v8, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v10, v2

    .line 688
    .local v10, "applyUserRestrictions":Z
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    .line 693
    .local v11, "deletedPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v12, v1, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 698
    .local v12, "disabledPs":Lcom/android/server/pm/PackageSetting;
    const-string v2, "PackageManager"

    const-string v5, "Deleting system pkg from data partition"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iput-boolean v4, v8, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 713
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v13

    cmp-long v2, v5, v13

    if-ltz v2, :cond_2

    .line 714
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v5

    if-eq v2, v5, :cond_1

    goto :goto_1

    .line 719
    :cond_1
    or-int/2addr v0, v4

    move v6, v0

    goto :goto_2

    .line 716
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, -0x2

    move v6, v0

    .line 721
    .end local v0    # "flags":I
    .local v6, "flags":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v13

    .line 722
    .local v13, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object/from16 v7, p2

    move/from16 v9, p3

    :try_start_0
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 725
    .end local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_3
    return-void

    .line 721
    .restart local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_4

    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v2
.end method

.method private executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    .locals 18
    .param p1, "action"    # Lcom/android/server/pm/DeletePackageAction;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deleteCodeAndResources"    # Z
    .param p4, "allUserHandles"    # [I
    .param p5, "writeSettings"    # Z
    .param p6, "keepArtProfile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/SystemDeleteException;
        }
    .end annotation

    .line 484
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    iget-object v2, v9, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 485
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v9, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 486
    .local v7, "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    iget-object v11, v9, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    .line 488
    .local v11, "user":Landroid/os/UserHandle;
    if-eqz p6, :cond_0

    iget v0, v9, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    const/high16 v3, 0x20000

    or-int/2addr v0, v3

    move v5, v0

    goto :goto_0

    .line 489
    :cond_0
    iget v0, v9, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    move v5, v0

    :goto_0
    nop

    .line 490
    .local v5, "flags":I
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v12

    .line 493
    .local v12, "systemApp":Z
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v13, v0

    .line 494
    .local v13, "hadSuspendAppsPermission":Landroid/util/SparseBooleanArray;
    array-length v0, v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, v6, v3

    .line 495
    .local v4, "userId":I
    const/16 v16, 0x0

    iget-object v14, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v15, "android.permission.SUSPEND_APPS"

    invoke-virtual {v14, v15, v10, v4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    move/from16 v15, v16

    :goto_2
    invoke-virtual {v13, v4, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 494
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 499
    :cond_2
    const/16 v16, 0x0

    const/4 v0, -0x1

    if-nez v11, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 501
    .local v3, "userId":I
    :goto_3
    if-ne v3, v0, :cond_4

    .line 502
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    move-result-object v4

    goto :goto_4

    .line 503
    :cond_4
    const/4 v4, 0x1

    new-array v14, v4, [I

    aput v3, v14, v16

    move-object v4, v14

    :goto_4
    iput-object v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 504
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageRemovedInfo;->populateBroadcastUsers(Lcom/android/server/pm/PackageSetting;)V

    .line 505
    and-int/lit8 v4, v5, 0x1

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    move/from16 v4, v16

    :goto_5
    iput-boolean v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 506
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 507
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 508
    nop

    .line 509
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    move/from16 v4, v16

    :goto_6
    iput-boolean v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 510
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    move-result v4

    iput-boolean v4, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 511
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v14

    iput-wide v14, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 513
    if-eqz v12, :cond_7

    and-int/lit8 v4, v5, 0x4

    if-eqz v4, :cond_8

    :cond_7
    goto :goto_7

    :cond_8
    const/4 v14, 0x1

    goto :goto_c

    :goto_7
    if-eq v3, v0, :cond_e

    .line 521
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 522
    :try_start_0
    invoke-direct {v1, v2, v11, v5}, Lcom/android/server/pm/DeletePackageHelper;->markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;I)V

    .line 523
    if-nez v12, :cond_b

    .line 525
    iget-object v14, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 526
    invoke-virtual {v14, v10}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v14

    .line 527
    .local v14, "keepUninstalledPackage":Z
    iget-object v15, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 528
    invoke-virtual {v15}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    .line 527
    invoke-virtual {v2, v15, v3}, Lcom/android/server/pm/PackageSetting;->isInstalledOnAnyOtherUser([II)Z

    move-result v15

    if-nez v15, :cond_9

    if-eqz v14, :cond_a

    :cond_9
    goto :goto_8

    .line 536
    :cond_a
    iget-object v15, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v15, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 537
    const/4 v15, 0x0

    .local v15, "clearPackageStateAndReturn":Z
    goto :goto_9

    .line 547
    .end local v14    # "keepUninstalledPackage":Z
    .end local v15    # "clearPackageStateAndReturn":Z
    :catchall_0
    move-exception v0

    goto :goto_b

    .line 533
    .restart local v14    # "keepUninstalledPackage":Z
    :goto_8
    const/4 v15, 0x1

    .line 539
    .end local v14    # "keepUninstalledPackage":Z
    .restart local v15    # "clearPackageStateAndReturn":Z
    :goto_9
    goto :goto_a

    .line 545
    .end local v15    # "clearPackageStateAndReturn":Z
    :cond_b
    const/4 v14, 0x1

    move v15, v14

    .line 547
    .restart local v15    # "clearPackageStateAndReturn":Z
    :goto_a
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 548
    if-eqz v15, :cond_d

    .line 549
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/pm/RemovePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V

    .line 552
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    iput v0, v7, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 555
    iget-boolean v0, v7, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    if-eqz v0, :cond_c

    .line 556
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 558
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(Landroid/os/UserHandle;)V

    .line 559
    return-void

    .line 548
    :cond_d
    const/4 v14, 0x1

    goto :goto_c

    .line 547
    .end local v15    # "clearPackageStateAndReturn":Z
    :goto_b
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 513
    :cond_e
    const/4 v14, 0x1

    .line 564
    :goto_c
    if-eqz v12, :cond_f

    .line 568
    invoke-direct {v1, v9, v6, v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledSystemPackage(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    .line 569
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v9, v6, v8}, Lcom/android/server/pm/PackageManagerService;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    goto :goto_d

    .line 572
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isIncremental()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 575
    invoke-direct {v1, v10}, Lcom/android/server/pm/DeletePackageHelper;->deleteArtDexoptArtifacts(Ljava/lang/String;)V

    .line 577
    :cond_10
    move/from16 v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    .line 583
    :goto_d
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v4

    .line 584
    .local v4, "snapshot":Lcom/android/server/pm/Computer;
    iget-object v6, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    array-length v8, v6

    move/from16 v15, v16

    :goto_e
    if-ge v15, v8, :cond_12

    aget v14, v6, v15

    .line 585
    .local v14, "affectedUserId":I
    invoke-virtual {v13, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 586
    move-object/from16 v17, v2

    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v17, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v4, v10, v14, v0}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)V

    .line 588
    iget-object v2, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v4, v14}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(Lcom/android/server/pm/Computer;I)V

    goto :goto_f

    .line 585
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_11
    move-object/from16 v17, v2

    .line 584
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "affectedUserId":I
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v17

    const/4 v14, 0x1

    goto :goto_e

    .line 593
    .end local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_12
    move-object/from16 v17, v2

    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 594
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v14, 0x1

    goto :goto_10

    :cond_13
    move/from16 v14, v16

    :goto_10
    iput-boolean v14, v7, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 595
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 596
    return-void

    .line 595
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userIds"    # [I

    .line 1004
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    .line 1005
    .local v0, "result":[I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    .line 1006
    .local v3, "userId":I
    invoke-interface {p1, p2, v3}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1007
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 1005
    .end local v3    # "userId":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    return-object v0
.end method

.method private isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;[I)Z
    .locals 10
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "targetUserIds"    # [I

    .line 958
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 959
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    goto :goto_4

    .line 962
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 965
    .local v0, "callingUserId":I
    array-length v2, p4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v2, :cond_2

    aget v7, p4, v4

    .line 967
    .local v7, "user":I
    nop

    .line 968
    :try_start_0
    invoke-interface {p1, p3, v7}, Lcom/android/server/pm/Computer;->getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 967
    invoke-interface {p1, v8, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, v5, :cond_1

    .line 969
    return v1

    .line 974
    :cond_1
    goto :goto_1

    .line 971
    :catch_0
    move-exception v5

    .line 965
    .end local v7    # "user":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 978
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v4, v2

    move v7, v3

    :goto_2
    if-ge v7, v4, :cond_4

    aget-object v8, v2, v7

    .line 979
    .local v8, "verifierPackageName":Ljava/lang/String;
    invoke-interface {p1, v8, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v9

    if-ne p2, v9, :cond_3

    .line 980
    return v1

    .line 979
    :cond_3
    nop

    .line 978
    .end local v8    # "verifierPackageName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 985
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    nop

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 986
    invoke-interface {p1, v2, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 987
    return v1

    .line 991
    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    invoke-interface {p1, v2, v5, v6, v0}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne p2, v2, :cond_6

    .line 993
    return v1

    .line 998
    :cond_6
    const-string v2, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-interface {p1, v2, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    return v1

    .line 960
    .end local v0    # "callingUserId":I
    :cond_8
    :goto_4
    return v1
.end method

.method private isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 952
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 953
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$deletePackageVersionedInternal$0(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p2, "deleteFlags"    # I

    .line 775
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 777
    const-string v1, "android.content.pm.extra.CALLBACK"

    new-instance v2, Landroid/content/pm/PackageManager$UninstallCompleteCallback;

    .line 778
    invoke-interface {p1}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/IBinder;)V

    .line 777
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_0

    .line 783
    const-string v1, "android.content.pm.extra.DELETE_FLAGS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 786
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 785
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-interface {p1, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onUserActionRequired(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 788
    :goto_1
    return-void
.end method

.method private static synthetic lambda$deletePackageVersionedInternal$1(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .line 806
    :try_start_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not removing package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": has active device admin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 813
    :goto_0
    return-void
.end method

.method private static synthetic lambda$deletePackageVersionedInternal$2(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .line 819
    :try_start_0
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to delete protected package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 825
    :goto_0
    return-void
.end method

.method private static synthetic lambda$deletePackageVersionedInternal$3(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 2
    .param p0, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 836
    const/4 v0, -0x3

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 840
    :goto_0
    return-void
.end method

.method private static synthetic lambda$deletePackageVersionedInternal$4(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 2
    .param p0, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 847
    const/4 v0, -0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 851
    :goto_0
    return-void
.end method

.method private synthetic lambda$deletePackageVersionedInternal$5(Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .locals 20
    .param p1, "internalPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "canViewInstantApps"    # Z
    .param p4, "deleteAllUsers"    # Z
    .param p5, "versionCode"    # J
    .param p7, "userId"    # I
    .param p8, "deleteFlags"    # I
    .param p9, "users"    # [I
    .param p10, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p11, "packageName"    # Ljava/lang/String;

    .line 864
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p9

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v9

    .line 865
    .local v9, "innerSnapshot":Lcom/android/server/pm/Computer;
    nop

    .line 866
    invoke-interface {v9, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 867
    .local v10, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v0, 0x1

    .line 868
    .local v0, "doDeletePackage":Z
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_2

    .line 869
    nop

    .line 870
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v10, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 871
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    .line 872
    .local v3, "targetIsInstantApp":Z
    if-eqz v3, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v4, v11

    goto :goto_1

    :goto_0
    move v4, v12

    :goto_1
    move v0, v4

    move v13, v0

    goto :goto_2

    .line 868
    .end local v3    # "targetIsInstantApp":Z
    :cond_2
    move v13, v0

    .line 875
    .end local v0    # "doDeletePackage":Z
    .local v13, "doDeletePackage":Z
    :goto_2
    const-string v14, "PackageManager"

    if-eqz v13, :cond_e

    .line 876
    const-string v0, ", returnCode "

    const-string v15, "Package delete failed for user "

    if-nez p4, :cond_9

    .line 877
    const/4 v7, 0x0

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v7

    .line 881
    move v3, v5

    move v4, v6

    .local v7, "returnCode":I
    if-ne v7, v12, :cond_f

    if-eqz v10, :cond_f

    .line 884
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5, v3, v12}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object v5

    .line 886
    .local v5, "childUserIds":[I
    array-length v6, v5

    move/from16 v19, v11

    move v11, v7

    move/from16 v7, v19

    .end local v7    # "returnCode":I
    .local v11, "returnCode":I
    :goto_3
    if-ge v7, v6, :cond_8

    move-object/from16 v16, v5

    .end local v5    # "childUserIds":[I
    .local v16, "childUserIds":[I
    aget v5, v16, v7

    .line 887
    .local v5, "childId":I
    if-ne v5, v3, :cond_3

    move/from16 v17, v6

    move/from16 v18, v7

    goto/16 :goto_4

    .line 888
    :cond_3
    iget-object v12, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v12, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v12

    if-eq v12, v3, :cond_4

    .line 889
    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_4

    .line 893
    :cond_4
    invoke-interface {v10, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v12

    if-nez v12, :cond_5

    .line 894
    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_4

    .line 897
    :cond_5
    iget-object v12, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 898
    invoke-virtual {v12, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v12

    .line 899
    .local v12, "userProperties":Landroid/content/pm/UserProperties;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 900
    sget-object v17, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_DUAL_APPS_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static/range {v17 .. v17}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Lcom/nothing/server/ext/INtDualAppsService;

    .line 901
    invoke-interface {v1, v2, v5, v4}, Lcom/nothing/server/ext/INtDualAppsService;->adjustDeleteWithParentFlags(Ljava/lang/String;II)I

    move-result v1

    .line 902
    .local v1, "adjustDeleteFlags":I
    move/from16 v17, v7

    const/4 v7, 0x0

    move-wide/from16 v3, p5

    move/from16 v18, v17

    move/from16 v17, v6

    move v6, v1

    move-object/from16 v1, p0

    .end local v1    # "adjustDeleteFlags":I
    .local v6, "adjustDeleteFlags":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v7

    .line 904
    .local v7, "returnCodeOfChild":I
    const/4 v3, 0x1

    if-eq v7, v3, :cond_7

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v3, -0x8

    move v11, v3

    .end local v11    # "returnCode":I
    .local v3, "returnCode":I
    goto :goto_4

    .line 899
    .end local v3    # "returnCode":I
    .end local v6    # "adjustDeleteFlags":I
    .end local v7    # "returnCodeOfChild":I
    .restart local v11    # "returnCode":I
    :cond_6
    move/from16 v17, v6

    move/from16 v18, v7

    .line 886
    .end local v5    # "childId":I
    .end local v12    # "userProperties":Landroid/content/pm/UserProperties;
    :cond_7
    :goto_4
    add-int/lit8 v7, v18, 0x1

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, v16

    move/from16 v6, v17

    const/4 v12, 0x1

    goto/16 :goto_3

    .end local v16    # "childUserIds":[I
    .local v5, "childUserIds":[I
    :cond_8
    move-object/from16 v16, v5

    .line 911
    .end local v5    # "childUserIds":[I
    move v7, v11

    goto :goto_8

    .line 913
    .end local v11    # "returnCode":I
    :cond_9
    invoke-direct {v1, v9, v2, v8}, Lcom/android/server/pm/DeletePackageHelper;->getBlockUninstallForUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)[I

    move-result-object v12

    .line 916
    .local v12, "blockUninstallUserIds":[I
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 917
    const/4 v7, 0x0

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v0

    move-object/from16 v1, p0

    move v7, v0

    .local v0, "returnCode":I
    goto :goto_7

    .line 921
    .end local v0    # "returnCode":I
    :cond_a
    and-int/lit8 v6, p8, -0x3

    .line 922
    .local v6, "userFlags":I
    array-length v1, v8

    :goto_5
    if-ge v11, v1, :cond_d

    aget v5, v8, v11

    .line 923
    .local v5, "userId1":I
    invoke-static {v12, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_b

    .line 924
    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v3, p5

    move/from16 v16, v1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v7

    .line 926
    .local v7, "returnCode":I
    const/4 v3, 0x1

    if-eq v7, v3, :cond_c

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 923
    .end local v7    # "returnCode":I
    :cond_b
    move/from16 v16, v1

    move-object/from16 v1, p0

    .line 922
    .end local v5    # "userId1":I
    :cond_c
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    goto :goto_5

    .line 934
    :cond_d
    move-object/from16 v1, p0

    const/4 v0, -0x4

    move v7, v0

    .line 936
    .end local v6    # "userFlags":I
    .end local v12    # "blockUninstallUserIds":[I
    .restart local v7    # "returnCode":I
    :goto_7
    goto :goto_8

    .line 938
    .end local v7    # "returnCode":I
    :cond_e
    const/4 v7, -0x1

    .line 941
    .restart local v7    # "returnCode":I
    :cond_f
    :goto_8
    const/4 v0, 0x0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    :try_start_0
    invoke-interface {v2, v3, v7, v0}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    goto :goto_9

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Observer no longer exists."

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService;->schedulePruneUnusedStaticSharedLibraries(Z)V

    .line 948
    return-void
.end method

.method private synthetic lambda$removeUnusedPackagesLPw$6(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1073
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v4, "userId":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    return-void
.end method

.method private markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;I)V
    .locals 30
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "flags"    # I

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :cond_0
    goto :goto_0

    .line 627
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    aput v4, v3, v2

    goto :goto_1

    .line 626
    :goto_0
    iget-object v3, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 627
    :goto_1
    nop

    .line 628
    .local v3, "userIds":[I
    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_5

    move v5, v2

    aget v2, v3, v5

    .line 635
    .local v2, "nextUserId":I
    const/4 v6, 0x0

    .line 636
    .local v6, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 637
    .local v7, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    and-int/lit8 v8, p3, 0x1

    if-eqz v8, :cond_2

    .line 638
    new-instance v8, Landroid/util/ArraySet;

    .line 639
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v6, v8

    .line 640
    new-instance v8, Landroid/util/ArraySet;

    .line 641
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v7, v8

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto :goto_3

    .line 637
    :cond_2
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 646
    .end local v6    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_3
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_3

    .line 647
    const/4 v6, 0x0

    move-object/from16 v26, v6

    goto :goto_4

    .line 648
    :cond_3
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v6

    move-object/from16 v26, v6

    :goto_4
    nop

    .line 652
    .local v26, "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    and-int/lit8 v6, p3, 0x1

    if-nez v6, :cond_4

    .line 653
    const-wide/16 v6, 0x0

    move-wide/from16 v23, v6

    goto :goto_5

    .line 654
    :cond_4
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v6

    move-wide/from16 v23, v6

    :goto_5
    nop

    .line 656
    .local v23, "firstInstallTime":J
    nop

    .line 657
    move-object v6, v3

    move v7, v4

    .end local v3    # "userIds":[I
    .local v6, "userIds":[I
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v3

    .line 658
    move v9, v5

    move-object v8, v6

    .end local v6    # "userIds":[I
    .local v8, "userIds":[I
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->getDeDataInode(I)J

    move-result-wide v5

    .line 656
    move v10, v7

    const/4 v7, 0x0

    move-object v11, v8

    .end local v8    # "userIds":[I
    .local v11, "userIds":[I
    const/4 v8, 0x0

    move v12, v9

    const/4 v9, 0x1

    move v13, v10

    const/4 v10, 0x1

    move-object v14, v11

    .end local v11    # "userIds":[I
    .local v14, "userIds":[I
    const/4 v11, 0x0

    move v15, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    .end local v14    # "userIds":[I
    .local v19, "userIds":[I
    const/4 v14, 0x0

    move/from16 v20, v15

    const/4 v15, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move-object/from16 v22, v19

    .end local v19    # "userIds":[I
    .local v22, "userIds":[I
    const/16 v19, 0x0

    move/from16 v25, v20

    const/16 v20, 0x0

    move/from16 v27, v21

    const/16 v21, 0x0

    move-object/from16 v28, v22

    .end local v22    # "userIds":[I
    .local v28, "userIds":[I
    const/16 v22, 0x0

    move/from16 v29, v25

    const/16 v25, 0x0

    invoke-virtual/range {v1 .. v26}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 628
    .end local v2    # "nextUserId":I
    .end local v17    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "firstInstallTime":J
    .end local v26    # "archiveState":Lcom/android/server/pm/pkg/ArchiveState;
    add-int/lit8 v2, v29, 0x1

    move/from16 v4, v27

    move-object/from16 v3, v28

    goto/16 :goto_2

    .line 679
    .end local v28    # "userIds":[I
    .restart local v3    # "userIds":[I
    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 680
    return-void
.end method

.method public static mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;
    .locals 11
    .param p0, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPs"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 450
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 451
    return-object v0

    .line 453
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    and-int/lit8 v1, p3, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 455
    .local v1, "deleteSystem":Z
    :goto_0
    if-eqz p4, :cond_2

    .line 456
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 457
    .local v2, "deleteAllUsers":Z
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-nez p2, :cond_5

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to delete unknown system package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-object v0

    .line 466
    .end local v1    # "deleteSystem":Z
    .end local v2    # "deleteAllUsers":Z
    :cond_5
    new-instance v5, Lcom/android/server/pm/DeletePackageAction;

    move-object v8, p0

    move-object v6, p1

    move-object v7, p2

    move v9, p3

    move-object v10, p4

    .end local p0    # "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    .end local p1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p2    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "flags":I
    .end local p4    # "user":Landroid/os/UserHandle;
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "disabledPs":Lcom/android/server/pm/PackageSetting;
    .local v8, "outInfo":Lcom/android/server/pm/PackageRemovedInfo;
    .local v9, "flags":I
    .local v10, "user":Landroid/os/UserHandle;
    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/DeletePackageAction;-><init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageRemovedInfo;ILandroid/os/UserHandle;)V

    return-object v5
.end method


# virtual methods
.method public deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 12
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I

    .line 1082
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1087
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v8

    .line 1089
    .local v8, "versionCode":J
    const/4 v2, 0x0

    .line 1090
    .local v2, "installedForUsersCount":I
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 1092
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1093
    invoke-interface {v0, v7, v8, v9}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, "internalPkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v5

    .line 1095
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 1096
    iget-object v10, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v10

    invoke-virtual {v5, v10, v6}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v10

    .line 1098
    .local v10, "installedUsers":[I
    array-length v11, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v11

    move v10, v2

    goto :goto_0

    .line 1100
    .end local v0    # "internalPkgName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "installedUsers":[I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1095
    .restart local v0    # "internalPkgName":Ljava/lang/String;
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    move v10, v2

    .line 1100
    .end local v0    # "internalPkgName":Ljava/lang/String;
    .end local v2    # "installedForUsersCount":I
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "installedForUsersCount":I
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1102
    if-le v10, v6, :cond_1

    .line 1103
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    goto :goto_1

    .line 1106
    :cond_1
    const/4 v0, -0x1

    :try_start_2
    invoke-interface {p2, v7, v0, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1109
    goto :goto_1

    .line 1108
    :catch_0
    move-exception v0

    .line 1111
    :goto_1
    return-void

    .line 1100
    :catchall_1
    move-exception v0

    move v2, v10

    .end local v10    # "installedForUsersCount":I
    .restart local v2    # "installedForUsersCount":I
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "deleteCodeAndResources"    # Z
    .param p4, "allUserHandles"    # [I
    .param p5, "flags"    # I
    .param p6, "outInfo"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p7, "writeSettings"    # Z

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 400
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 404
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v8

    .line 425
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v0

    move/from16 v9, p5

    move-object/from16 v10, p6

    goto/16 :goto_0

    .line 406
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 407
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 410
    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/INtPackageManagerService;

    invoke-interface {v5}, Lcom/android/server/pm/INtPackageManagerService;->isDebugPersistApp()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 414
    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/INtPackageManagerService;

    invoke-interface {v5, p1}, Lcom/android/server/pm/INtPackageManagerService;->isNdasScopedApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_PM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 417
    invoke-static {v5}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/INtPackageManagerService;

    invoke-interface {v5, p1}, Lcom/android/server/pm/INtPackageManagerService;->isEscapeDeleteCheckSystemPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string v6, "android.permission.CONTROL_KEYGUARD"

    .line 419
    invoke-virtual {v5, v6, p1, v8}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 421
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to delete keyguard system package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v8

    .line 424
    :cond_1
    move/from16 v9, p5

    move-object/from16 v10, p6

    :try_start_2
    invoke-static {v10, v0, v4, v9, p2}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v5

    .line 425
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .local v5, "action":Lcom/android/server/pm/DeletePackageAction;
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 427
    if-nez v5, :cond_2

    .line 429
    return v8

    .line 433
    :cond_2
    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move/from16 v6, p7

    move-object v2, v5

    move-object v5, p4

    .end local v5    # "action":Lcom/android/server/pm/DeletePackageAction;
    .local v2, "action":Lcom/android/server/pm/DeletePackageAction;
    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_3
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 438
    nop

    .line 439
    const/4 v0, 0x1

    return v0

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Lcom/android/server/pm/SystemDeleteException;
    return v8

    .line 425
    .end local v0    # "e":Lcom/android/server/pm/SystemDeleteException;
    .end local v2    # "action":Lcom/android/server/pm/DeletePackageAction;
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V
    .locals 21
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I
    .param p5, "callingUid"    # I
    .param p6, "allowSilentUninstall"    # Z

    .line 737
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v3, p5

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v13

    .line 740
    .local v13, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v13, v3, v8}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    move-result v2

    .line 741
    .local v2, "canViewInstantApps":Z
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v14

    const-wide v18, 0x7fffffffffffffffL

    const-string/jumbo v20, "versionCode must be >= -1"

    const-wide/16 v16, -0x1

    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 748
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v6

    .line 751
    .local v6, "versionCode":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 752
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isBaseOfLockedTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const/4 v0, -0x7

    invoke-interface {v11, v12, v0, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 755
    const-string v0, "127605586"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x534e4554

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    return-void

    .line 758
    :catch_0
    move-exception v0

    goto :goto_0

    .line 760
    :cond_0
    goto :goto_1

    .line 758
    :goto_0
    nop

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 763
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 764
    move v4, v2

    .end local v2    # "canViewInstantApps":Z
    .local v4, "canViewInstantApps":Z
    invoke-interface {v13, v12, v6, v7}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "internalPackageName":Ljava/lang/String;
    and-int/lit8 v0, v9, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_2

    :cond_1
    move v0, v5

    :goto_2
    move v14, v0

    .line 767
    .local v14, "deleteAllUsers":Z
    if-eqz v14, :cond_2

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    goto :goto_3

    :cond_2
    new-array v0, v10, [I

    aput v8, v0, v5

    :goto_3
    move-object v15, v0

    .line 769
    .local v15, "users":[I
    invoke-direct {v1, v13, v2}, Lcom/android/server/pm/DeletePackageHelper;->isOrphaned(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p6, :cond_3

    .line 771
    invoke-direct {v1, v13, v3, v2, v15}, Lcom/android/server/pm/DeletePackageHelper;->isCallerAllowedToSilentlyUninstall(Lcom/android/server/pm/Computer;ILjava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 773
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v12, v11, v9}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 789
    return-void

    .line 792
    :cond_3
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, v8, :cond_4

    if-eqz v14, :cond_5

    array-length v0, v15

    if-le v0, v10, :cond_5

    .line 793
    :cond_4
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deletePackage for user "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v10, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 802
    .local v17, "token":J
    :try_start_1
    array-length v0, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_8

    :try_start_2
    aget v10, v15, v5

    .line 803
    .local v10, "user":I
    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v12, v10}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 804
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, v12, v11}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    return-void

    .line 830
    .end local v10    # "user":I
    :catchall_0
    move-exception v0

    move v5, v14

    move-object v10, v15

    goto :goto_5

    .line 816
    .restart local v10    # "user":I
    :cond_6
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, v10, v12}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 817
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;

    invoke-direct {v5, v12, v11}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    return-void

    .line 816
    :cond_7
    nop

    .line 802
    .end local v10    # "user":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_4

    .line 830
    :cond_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    nop

    .line 833
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v5, "no_uninstall_apps"

    invoke-virtual {v0, v8, v5}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 834
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5, v11, v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda4;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    return-void

    .line 844
    :cond_9
    if-nez v14, :cond_a

    invoke-interface {v13, v2, v8}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 845
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;

    invoke-direct {v5, v11, v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda5;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 852
    return-void

    .line 862
    :cond_a
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;

    move v10, v14

    move-object v14, v5

    move v5, v10

    move-object v10, v15

    .end local v14    # "deleteAllUsers":Z
    .end local v15    # "users":[I
    .local v5, "deleteAllUsers":Z
    .local v10, "users":[I
    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 949
    return-void

    .line 830
    .end local v5    # "deleteAllUsers":Z
    .end local v10    # "users":[I
    .restart local v14    # "deleteAllUsers":Z
    .restart local v15    # "users":[I
    :catchall_1
    move-exception v0

    move v5, v14

    move-object v10, v15

    .end local v14    # "deleteAllUsers":Z
    .end local v15    # "users":[I
    .restart local v5    # "deleteAllUsers":Z
    .restart local v10    # "users":[I
    :goto_5
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    throw v0
.end method

.method public deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    .locals 7
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver2;
    .param p3, "userId"    # I
    .param p4, "deleteFlags"    # I
    .param p5, "allowSilentUninstall"    # Z

    .line 730
    nop

    .line 731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 730
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .end local p1    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local p2    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    .end local p3    # "userId":I
    .end local p4    # "deleteFlags":I
    .end local p5    # "allowSilentUninstall":Z
    .local v1, "versionedPackage":Landroid/content/pm/VersionedPackage;
    .local v2, "observer":Landroid/content/pm/IPackageDeleteObserver2;
    .local v3, "userId":I
    .local v4, "deleteFlags":I
    .local v6, "allowSilentUninstall":Z
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIIZ)V

    .line 732
    return-void
.end method

.method public deletePackageX(Ljava/lang/String;JIIZ)I
    .locals 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "deleteFlags"    # I
    .param p6, "removedBySystem"    # Z

    .line 131
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    new-instance v7, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v7}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    move-object v8, v7

    .line 134
    .local v8, "info":Lcom/android/server/pm/PackageRemovedInfo;
    and-int/lit8 v0, p5, 0x2

    const/4 v12, -0x1

    if-eqz v0, :cond_0

    .line 135
    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v13, v0

    .line 149
    .local v13, "removeUser":I
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    move-object v14, v0

    .line 151
    .local v14, "computer":Lcom/android/server/pm/Computer;
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_25

    move-object v4, v0

    .line 152
    .local v4, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_1

    .line 153
    :try_start_1
    const-string v0, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removing non-existent package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v12

    .line 254
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    :catchall_0
    move-exception v0

    move/from16 v10, p5

    move-object v6, v1

    :goto_1
    move-object v7, v2

    move-object/from16 v24, v8

    move v14, v13

    goto/16 :goto_26

    .line 157
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    :cond_1
    const-wide/16 v5, -0x1

    cmp-long v0, v9, v5

    if-eqz v0, :cond_2

    .line 158
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    cmp-long v0, v5, v9

    if-eqz v0, :cond_2

    .line 159
    const-string v0, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not removing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with versionCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return v12

    .line 164
    :cond_2
    :try_start_3
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_25

    if-eqz v0, :cond_4

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_4

    .line 166
    :try_start_4
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 167
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget-object v6, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 168
    invoke-virtual {v6, v11}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v6

    .line 167
    invoke-virtual {v5, v6}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-nez v5, :cond_4

    .line 169
    :cond_3
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not removing package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as only admin user (or their profile) may downgrade system apps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v5, "170646036"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6, v2}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x534e4554

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 172
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v3, -0x3

    return v3

    .line 176
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    :try_start_5
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v20, v0

    .line 179
    .local v20, "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v5, v0

    .line 181
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_25

    move-object v6, v0

    .line 183
    .local v6, "allUsers":[I
    if-eqz v5, :cond_10

    .line 184
    const/4 v7, 0x0

    .line 185
    .local v7, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :try_start_6
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v15, :cond_5

    .line 186
    :try_start_7
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v15

    .line 187
    const/16 v21, 0x0

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v0

    .line 186
    invoke-interface {v14, v15, v0, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v7, v0

    move-object v15, v7

    move/from16 v22, v13

    goto :goto_2

    .line 254
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "allUsers":[I
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p5

    goto/16 :goto_1

    .line 188
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "allUsers":[I
    .restart local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :cond_5
    const/16 v21, 0x0

    :try_start_8
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v0, :cond_6

    .line 189
    :try_start_9
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move/from16 v22, v13

    .end local v13    # "removeUser":I
    .local v22, "removeUser":I
    int-to-long v12, v1

    .line 189
    :try_start_a
    invoke-interface {v14, v0, v12, v13}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v7, v0

    move-object v15, v7

    goto :goto_2

    .line 254
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "allUsers":[I
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :catchall_2
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v22

    goto/16 :goto_26

    .end local v22    # "removeUser":I
    .restart local v13    # "removeUser":I
    :catchall_3
    move-exception v0

    move/from16 v22, v13

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v22

    .end local v13    # "removeUser":I
    .restart local v22    # "removeUser":I
    goto/16 :goto_26

    .line 188
    .end local v22    # "removeUser":I
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "allUsers":[I
    .restart local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v13    # "removeUser":I
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :cond_6
    move/from16 v22, v13

    .end local v13    # "removeUser":I
    .restart local v22    # "removeUser":I
    move-object v15, v7

    .line 193
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v15, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :goto_2
    if-eqz v15, :cond_f

    .line 194
    move/from16 v0, v21

    .line 195
    .local v0, "flagSdkLibIndependence":Z
    :try_start_b
    array-length v1, v6

    move/from16 v7, v21

    :goto_3
    if-ge v7, v1, :cond_e

    aget v19, v6, v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move/from16 v12, v19

    .line 196
    .local v12, "currUserId":I
    move/from16 v13, v22

    move/from16 v22, v7

    move v7, v13

    const/4 v13, -0x1

    .end local v22    # "removeUser":I
    .local v7, "removeUser":I
    if-eq v7, v13, :cond_7

    if-eq v7, v12, :cond_7

    .line 197
    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v19, v5

    move/from16 v23, v7

    goto/16 :goto_6

    .line 199
    :cond_7
    const-wide/32 v16, 0x402000

    const/16 v18, 0x3e8

    move/from16 v19, v12

    .end local v12    # "currUserId":I
    .local v19, "currUserId":I
    :try_start_c
    invoke-interface/range {v14 .. v19}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v12

    move/from16 v13, v19

    .line 201
    .end local v19    # "currUserId":I
    .local v12, "libClientPackagesPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .local v13, "currUserId":I
    move/from16 v16, v0

    .end local v0    # "flagSdkLibIndependence":Z
    .local v16, "flagSdkLibIndependence":Z
    iget-object v0, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 202
    .local v0, "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    move/from16 v17, v1

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 205
    .local v1, "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/16 v18, 0x0

    .line 209
    .local v18, "allowLibIndependence":Z
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_b

    .line 210
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 211
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 212
    move-object/from16 v19, v5

    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v19, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move/from16 v23, v7

    .end local v7    # "removeUser":I
    .local v23, "removeUser":I
    :try_start_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_c

    if-eqz v16, :cond_c

    .line 214
    const/16 v18, 0x1

    .line 215
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_c

    .line 216
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 217
    .local v7, "usesSdkLibOptional":Z
    if-nez v7, :cond_8

    .line 218
    const/16 v18, 0x0

    .line 219
    goto :goto_5

    .line 217
    :cond_8
    nop

    .line 215
    .end local v7    # "usesSdkLibOptional":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 254
    .end local v0    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v1    # "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "i":I
    .end local v6    # "allUsers":[I
    .end local v12    # "libClientPackagesPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .end local v13    # "currUserId":I
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .end local v15    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v16    # "flagSdkLibIndependence":Z
    .end local v18    # "allowLibIndependence":Z
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :catchall_4
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v23

    goto/16 :goto_26

    .end local v23    # "removeUser":I
    .local v7, "removeUser":I
    :catchall_5
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v23

    .end local v7    # "removeUser":I
    .restart local v23    # "removeUser":I
    goto/16 :goto_26

    .line 211
    .end local v23    # "removeUser":I
    .restart local v0    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local v1    # "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "allUsers":[I
    .restart local v7    # "removeUser":I
    .restart local v12    # "libClientPackagesPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .restart local v13    # "currUserId":I
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    .restart local v15    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v16    # "flagSdkLibIndependence":Z
    .restart local v18    # "allowLibIndependence":Z
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :cond_9
    move-object/from16 v19, v5

    move/from16 v23, v7

    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v7    # "removeUser":I
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    goto :goto_5

    .line 210
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v23    # "removeUser":I
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v7    # "removeUser":I
    :cond_a
    move-object/from16 v19, v5

    move/from16 v23, v7

    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v7    # "removeUser":I
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    goto :goto_5

    .line 209
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v23    # "removeUser":I
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v7    # "removeUser":I
    :cond_b
    move-object/from16 v19, v5

    move/from16 v23, v7

    .line 223
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v7    # "removeUser":I
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    :cond_c
    :goto_5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v18, :cond_d

    .line 224
    const-string v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v1

    .end local v1    # "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .local v24, "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const-string v1, "Not removing package "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hosting lib "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v15}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " used by "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for user "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    const/4 v1, -0x6

    return v1

    .line 223
    .end local v24    # "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .restart local v1    # "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_d
    move-object/from16 v24, v1

    .line 195
    .end local v0    # "libClientPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local v1    # "libClientOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v12    # "libClientPackagesPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .end local v13    # "currUserId":I
    .end local v18    # "allowLibIndependence":Z
    :goto_6
    add-int/lit8 v7, v22, 0x1

    move-wide/from16 v9, p2

    move/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v5, v19

    move/from16 v22, v23

    goto/16 :goto_3

    .line 254
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "allUsers":[I
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .end local v15    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v16    # "flagSdkLibIndependence":Z
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "removeUser":I
    .restart local v22    # "removeUser":I
    :catchall_6
    move-exception v0

    move/from16 v23, v22

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v23

    .end local v22    # "removeUser":I
    .restart local v23    # "removeUser":I
    goto/16 :goto_26

    .line 195
    .end local v23    # "removeUser":I
    .local v0, "flagSdkLibIndependence":Z
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "allUsers":[I
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    .restart local v15    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "removeUser":I
    :cond_e
    move/from16 v16, v0

    move-object/from16 v19, v5

    move/from16 v23, v22

    .end local v0    # "flagSdkLibIndependence":Z
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v22    # "removeUser":I
    .restart local v16    # "flagSdkLibIndependence":Z
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    goto :goto_7

    .line 193
    .end local v16    # "flagSdkLibIndependence":Z
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v23    # "removeUser":I
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v22    # "removeUser":I
    :cond_f
    move-object/from16 v19, v5

    move/from16 v23, v22

    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v22    # "removeUser":I
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    goto :goto_7

    .line 254
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "allUsers":[I
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .end local v15    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "removeUser":I
    .local v13, "removeUser":I
    :catchall_7
    move-exception v0

    move/from16 v23, v13

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v23

    .end local v13    # "removeUser":I
    .restart local v23    # "removeUser":I
    goto/16 :goto_26

    .line 183
    .end local v23    # "removeUser":I
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v6    # "allUsers":[I
    .restart local v13    # "removeUser":I
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :cond_10
    move-object/from16 v19, v5

    move/from16 v23, v13

    const/16 v21, 0x0

    .line 234
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "removeUser":I
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    :goto_7
    const/4 v9, 0x1

    :try_start_e
    invoke-virtual {v4, v6, v9}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 236
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_24

    if-eqz v0, :cond_12

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_12

    .line 240
    const/4 v0, -0x1

    .line 241
    .local v0, "freezeUser":I
    :try_start_f
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 242
    .local v1, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8
    array-length v7, v6

    if-ge v5, v7, :cond_11

    .line 243
    aget v7, v6, v5

    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 244
    .local v7, "userState":Lcom/android/server/pm/pkg/PackageUserState;
    aget v12, v6, v5

    new-instance v13, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 245
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v15

    .line 246
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v18, "info":Lcom/android/server/pm/PackageRemovedInfo;
    :try_start_10
    invoke-direct {v13, v15, v9, v10, v8}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;ZLcom/android/server/pm/DeletePackageHelper-IA;)V

    .line 244
    invoke-virtual {v1, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 242
    .end local v7    # "userState":Lcom/android/server/pm/pkg/PackageUserState;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, v18

    const/4 v9, 0x1

    goto :goto_8

    .line 254
    .end local v0    # "freezeUser":I
    .end local v1    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "i":I
    .end local v6    # "allUsers":[I
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :catchall_8
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v18

    move/from16 v14, v23

    goto/16 :goto_26

    .end local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    :catchall_9
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v18

    move/from16 v14, v23

    .end local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto/16 :goto_26

    .line 242
    .end local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v0    # "freezeUser":I
    .restart local v1    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "i":I
    .restart local v6    # "allUsers":[I
    .restart local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v14    # "computer":Lcom/android/server/pm/Computer;
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    :cond_11
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .end local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    move-object v9, v1

    move v1, v0

    .end local v5    # "i":I
    goto :goto_9

    .line 236
    .end local v0    # "freezeUser":I
    .end local v1    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    :cond_12
    move-object/from16 v18, v8

    const/4 v8, 0x0

    .line 249
    .end local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    move/from16 v0, v23

    .line 250
    .restart local v0    # "freezeUser":I
    const/4 v1, 0x0

    move-object v9, v1

    move v1, v0

    .line 253
    .end local v0    # "freezeUser":I
    .local v1, "freezeUser":I
    .local v9, "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    :goto_9
    move-object/from16 v10, p0

    :try_start_11
    iget-object v0, v10, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->isInstallerPackage(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    .line 254
    .end local v14    # "computer":Lcom/android/server/pm/Computer;
    .local v12, "isInstallerPackage":Z
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_23

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 256
    iget-object v0, v10, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v13

    .line 258
    .local v13, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_12
    iget-object v2, v10, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_21

    move-object v5, v6

    .end local v6    # "allUsers":[I
    .local v5, "allUsers":[I
    :try_start_13
    const-string v6, "deletePackageX"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_20

    const/16 v7, 0xd

    move-object/from16 v3, p1

    move-object v15, v4

    move/from16 v14, v23

    move v4, v1

    move-object v1, v5

    move/from16 v5, p5

    .end local v5    # "allUsers":[I
    .end local v23    # "removeUser":I
    .local v1, "allUsers":[I
    .local v4, "freezeUser":I
    .local v14, "removeUser":I
    .local v15, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    :try_start_14
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(Ljava/lang/String;IILjava/lang/String;I)Lcom/android/server/pm/PackageFreezer;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1f

    move/from16 v17, v4

    .end local v4    # "freezeUser":I
    .local v17, "freezeUser":I
    move-object/from16 v22, v0

    .line 260
    .local v22, "freezer":Lcom/android/server/pm/PackageFreezer;
    :try_start_15
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1d

    const/high16 v0, -0x80000000

    or-int v6, p5, v0

    move-object v0, v8

    const/4 v8, 0x1

    const/4 v4, 0x1

    move-object/from16 v2, p1

    move-object v5, v1

    move-object v1, v10

    move-object/from16 v7, v18

    move/from16 v10, p5

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v0

    .end local v1    # "allUsers":[I
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v5    # "allUsers":[I
    .local v7, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v18, "isInstallerPackage":Z
    :try_start_16
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1c

    move-object v6, v1

    move-object v8, v5

    move-object v1, v7

    move-object v7, v2

    .end local v5    # "allUsers":[I
    .end local v7    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v1, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v8, "allUsers":[I
    move/from16 v23, v0

    .line 262
    .local v23, "res":Z
    if-eqz v22, :cond_13

    :try_start_17
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageFreezer;->close()V

    goto :goto_a

    .line 256
    .end local v22    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v23    # "res":Z
    :catchall_a
    move-exception v0

    move-object/from16 v24, v1

    move-object v1, v0

    goto/16 :goto_24

    .line 263
    .restart local v23    # "res":Z
    :cond_13
    :goto_a
    if-eqz v23, :cond_15

    if-eqz v12, :cond_15

    .line 265
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 266
    :try_start_18
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    move/from16 v0, v21

    .line 267
    .local v0, "packageInstalledForSomeUsers":Z
    :goto_b
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :try_start_19
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 268
    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v3, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v2, v12, v15, v3, v0}, Lcom/android/server/pm/InstantAppRegistry;->onPackageUninstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    goto :goto_c

    .line 267
    .end local v0    # "packageInstalledForSomeUsers":Z
    :catchall_b
    move-exception v0

    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :try_start_1b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v8    # "allUsers":[I
    .end local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v18    # "isInstallerPackage":Z
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 271
    .restart local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v8    # "allUsers":[I
    .restart local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "freezeUser":I
    .restart local v18    # "isInstallerPackage":Z
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :cond_15
    :goto_c
    :try_start_1c
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_18

    .line 272
    if-eqz v23, :cond_16

    .line 273
    :try_start_1d
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    invoke-virtual {v0, v15, v3}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 274
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    goto :goto_d

    .line 276
    :catchall_c
    move-exception v0

    move-object/from16 v24, v1

    goto/16 :goto_21

    :cond_16
    :goto_d
    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_19

    :try_start_1f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 277
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    .line 278
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 280
    .end local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_17
    if-eqz v23, :cond_1a

    .line 281
    and-int/lit8 v0, v10, 0x8

    if-nez v0, :cond_18

    const/4 v3, 0x1

    goto :goto_e

    :cond_18
    move/from16 v3, v21

    .line 282
    .local v3, "killApp":Z
    :goto_e
    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_19

    const/4 v5, 0x1

    goto :goto_f

    :cond_19
    move/from16 v5, v21

    .line 283
    .local v5, "isArchived":Z
    :goto_f
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v4, p6

    move/from16 v13, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 285
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/BroadcastHelper;->sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 286
    invoke-static {v1, v10, v14}, Lcom/android/server/pm/PackageMetrics;->onUninstallSucceeded(Lcom/android/server/pm/PackageRemovedInfo;II)V

    goto :goto_10

    .line 280
    .end local v3    # "killApp":Z
    .end local v5    # "isArchived":Z
    :cond_1a
    move/from16 v13, v21

    .line 291
    :goto_10
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 295
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2

    .line 296
    .local v2, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_20
    iget-object v0, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_15

    if-eqz v0, :cond_1b

    .line 297
    :try_start_21
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    iget-object v3, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {v3}, Lcom/android/server/pm/CleanUpArgs;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 298
    invoke-virtual {v4}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    invoke-virtual {v5}, Lcom/android/server/pm/CleanUpArgs;->getInstructionSets()[Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto :goto_11

    .line 295
    :catchall_d
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object v1, v0

    goto/16 :goto_1f

    .line 301
    :cond_1b
    :goto_11
    const/4 v3, 0x0

    .line 303
    .local v3, "reEnableStub":Z
    if-eqz v9, :cond_23

    .line 304
    :try_start_22
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    .line 305
    :try_start_23
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageManagerService;->getPackageSettingForMutation(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 306
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_22

    .line 307
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    .line 308
    .local v5, "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v5, :cond_1c

    :try_start_24
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v21
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    if-eqz v21, :cond_1c

    const/16 v21, 0x1

    goto :goto_12

    .line 330
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_e
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    goto/16 :goto_19

    .line 308
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_1c
    move/from16 v21, v13

    :goto_12
    nop

    .line 309
    .local v21, "pkgEnabled":Z
    const/16 v22, 0x0

    move/from16 v13, v22

    .local v13, "i":I
    :goto_13
    move-object/from16 v24, v1

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v24, "info":Lcom/android/server/pm/PackageRemovedInfo;
    :try_start_25
    array-length v1, v8

    if-ge v13, v1, :cond_21

    .line 310
    aget v1, v8, v13

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    .line 311
    .local v1, "priorUserState":Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    move-object/from16 v25, v2

    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v25, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_26
    iget v2, v1, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    .line 312
    .local v2, "enabledState":I
    move/from16 v26, v3

    .end local v3    # "reEnableStub":Z
    .local v26, "reEnableStub":Z
    :try_start_27
    aget v3, v8, v13

    move-object/from16 v27, v5

    .end local v5    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v27, "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v5, v1, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 314
    if-nez v26, :cond_1f

    iget-boolean v3, v1, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    if-eqz v3, :cond_1f

    if-nez v2, :cond_1d

    if-nez v21, :cond_1e

    :cond_1d
    goto :goto_14

    :cond_1e
    const/4 v5, 0x1

    goto :goto_15

    :goto_14
    const/4 v5, 0x1

    nop

    if-ne v2, v5, :cond_20

    .line 318
    :goto_15
    const/4 v3, 0x1

    .end local v26    # "reEnableStub":Z
    .restart local v3    # "reEnableStub":Z
    goto :goto_17

    .line 314
    .end local v3    # "reEnableStub":Z
    .restart local v26    # "reEnableStub":Z
    :cond_1f
    const/4 v5, 0x1

    goto :goto_16

    .line 330
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "priorUserState":Lcom/android/server/pm/DeletePackageHelper$TempUserState;
    .end local v2    # "enabledState":I
    .end local v13    # "i":I
    .end local v21    # "pkgEnabled":Z
    .end local v27    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_f
    move-exception v0

    move/from16 v3, v26

    goto :goto_19

    .line 309
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v13    # "i":I
    .restart local v21    # "pkgEnabled":Z
    .restart local v27    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_20
    :goto_16
    move/from16 v3, v26

    .end local v26    # "reEnableStub":Z
    .restart local v3    # "reEnableStub":Z
    :goto_17
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v5, v27

    goto :goto_13

    .line 330
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v13    # "i":I
    .end local v21    # "pkgEnabled":Z
    .end local v27    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_10
    move-exception v0

    move/from16 v26, v3

    .end local v3    # "reEnableStub":Z
    .restart local v26    # "reEnableStub":Z
    goto :goto_19

    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v26    # "reEnableStub":Z
    .local v2, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v3    # "reEnableStub":Z
    :catchall_11
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v26, v3

    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v3    # "reEnableStub":Z
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v26    # "reEnableStub":Z
    goto :goto_19

    .line 309
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v26    # "reEnableStub":Z
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v3    # "reEnableStub":Z
    .restart local v5    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v13    # "i":I
    .restart local v21    # "pkgEnabled":Z
    :cond_21
    move-object/from16 v25, v2

    move/from16 v26, v3

    move-object/from16 v27, v5

    const/4 v5, 0x1

    .line 321
    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v3    # "reEnableStub":Z
    .end local v5    # "aPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "i":I
    .end local v21    # "pkgEnabled":Z
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v26    # "reEnableStub":Z
    goto :goto_18

    .line 330
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v26    # "reEnableStub":Z
    .local v1, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v3    # "reEnableStub":Z
    :catchall_12
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    goto :goto_19

    .line 326
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_22
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    const/4 v5, 0x1

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_28
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing PackageSetting after uninstalling the update for system app: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ". This should not happen."

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_18
    iget-object v1, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 330
    .end local v0    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    :try_start_29
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    goto :goto_1a

    .line 295
    .end local v3    # "reEnableStub":Z
    :catchall_13
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1f

    .line 330
    .restart local v3    # "reEnableStub":Z
    :catchall_14
    move-exception v0

    :goto_19
    :try_start_2a
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    :try_start_2b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .end local v8    # "allUsers":[I
    .end local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v18    # "isInstallerPackage":Z
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "res":Z
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    throw v0

    .line 295
    .end local v3    # "reEnableStub":Z
    .restart local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v8    # "allUsers":[I
    .restart local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "freezeUser":I
    .restart local v18    # "isInstallerPackage":Z
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "res":Z
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_15
    move-exception v0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object v1, v0

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    goto/16 :goto_1f

    .line 303
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v3    # "reEnableStub":Z
    :cond_23
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    const/4 v5, 0x1

    .line 334
    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :goto_1a
    if-nez v20, :cond_24

    move-object/from16 v0, v19

    goto :goto_1b

    :cond_24
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    :goto_1b
    move-object v1, v0

    .line 335
    .local v1, "stubPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 337
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    .line 338
    :try_start_2c
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 339
    .local v0, "stubPs":Lcom/android/server/pm/PackageSetting;
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    :try_start_2d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 341
    if-eqz v0, :cond_27

    .line 342
    if-eqz v3, :cond_26

    .line 343
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v2, :cond_25

    .line 344
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Enabling system stub after removal; pkg: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_25
    iget-object v2, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_1c

    .line 348
    :cond_26
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v2, :cond_27

    .line 349
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "System stub disabled for all users, leaving uncompressed after removal; pkg: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    goto :goto_1c

    .line 339
    .end local v0    # "stubPs":Lcom/android/server/pm/PackageSetting;
    :catchall_16
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_16

    :try_start_2f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .end local v8    # "allUsers":[I
    .end local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v18    # "isInstallerPackage":Z
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v23    # "res":Z
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    .line 354
    .end local v1    # "stubPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "reEnableStub":Z
    .restart local v8    # "allUsers":[I
    .restart local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "freezeUser":I
    .restart local v18    # "isInstallerPackage":Z
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v23    # "res":Z
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :cond_27
    :goto_1c
    if-eqz v25, :cond_28

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 356
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_28
    if-eqz v23, :cond_29

    if-eqz v18, :cond_29

    .line 357
    iget-object v0, v6, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 358
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    .line 359
    .local v0, "packageInstallerService":Lcom/android/server/pm/PackageInstallerService;
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Lcom/android/server/pm/PackageInstallerService;->onInstallerPackageDeleted(II)V

    .line 362
    .end local v0    # "packageInstallerService":Lcom/android/server/pm/PackageInstallerService;
    :cond_29
    if-eqz v23, :cond_2b

    if-eqz v7, :cond_2b

    .line 363
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    .line 364
    .local v0, "ux_perf":Landroid/util/BoostFramework;
    nop

    .line 365
    iget v1, v0, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_2a

    iget v1, v0, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v1, v2, :cond_2a

    .line 367
    const/4 v1, 0x7

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13, v7, v11}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    goto :goto_1d

    .line 365
    :cond_2a
    const/4 v13, 0x0

    .line 369
    const/16 v1, 0x10a4

    filled-new-array {v11, v13}, [I

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v7, v3, v2}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    .line 373
    .end local v0    # "ux_perf":Landroid/util/BoostFramework;
    :cond_2b
    :goto_1d
    if-eqz v23, :cond_2c

    goto :goto_1e

    :cond_2c
    const/4 v5, -0x1

    :goto_1e
    return v5

    .line 295
    .restart local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :goto_1f
    if-eqz v25, :cond_2d

    :try_start_30
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    goto :goto_20

    :catchall_17
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_20
    throw v1

    .line 256
    .end local v23    # "res":Z
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v25    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v1, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v13, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_18
    move-exception v0

    move-object/from16 v24, v1

    move-object v1, v0

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto/16 :goto_24

    .line 276
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v23    # "res":Z
    :catchall_19
    move-exception v0

    move-object/from16 v24, v1

    .end local v1    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    :goto_21
    :try_start_31
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    :try_start_32
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .end local v8    # "allUsers":[I
    .end local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v18    # "isInstallerPackage":Z
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    throw v0
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1a

    .line 256
    .end local v23    # "res":Z
    .restart local v8    # "allUsers":[I
    .restart local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .restart local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "freezeUser":I
    .restart local v18    # "isInstallerPackage":Z
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_1a
    move-exception v0

    move-object v1, v0

    goto/16 :goto_24

    .line 276
    .restart local v23    # "res":Z
    :catchall_1b
    move-exception v0

    goto :goto_21

    .line 258
    .end local v8    # "allUsers":[I
    .end local v23    # "res":Z
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v5, "allUsers":[I
    .restart local v7    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v22    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :catchall_1c
    move-exception v0

    move-object v6, v1

    move-object v8, v5

    move-object/from16 v24, v7

    move-object v7, v2

    move-object v1, v0

    .end local v5    # "allUsers":[I
    .end local v7    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v8    # "allUsers":[I
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto :goto_22

    .end local v8    # "allUsers":[I
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v1, "allUsers":[I
    .local v12, "isInstallerPackage":Z
    .local v18, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_1d
    move-exception v0

    move-object/from16 v7, p1

    move-object v8, v1

    move-object v6, v10

    move-object/from16 v24, v18

    move/from16 v10, p5

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object v1, v0

    .end local v1    # "allUsers":[I
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v8    # "allUsers":[I
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v18, "isInstallerPackage":Z
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    :goto_22
    if-eqz v22, :cond_2e

    :try_start_33
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception v0

    :try_start_34
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_23
    nop

    .end local v8    # "allUsers":[I
    .end local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v18    # "isInstallerPackage":Z
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "versionCode":J
    .end local p4    # "userId":I
    .end local p5    # "deleteFlags":I
    .end local p6    # "removedBySystem":Z
    throw v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1a

    .line 256
    .end local v22    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v1    # "allUsers":[I
    .restart local v4    # "freezeUser":I
    .restart local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .local v12, "isInstallerPackage":Z
    .restart local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .local v18, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .restart local p0    # "this":Lcom/android/server/pm/DeletePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "versionCode":J
    .restart local p4    # "userId":I
    .restart local p5    # "deleteFlags":I
    .restart local p6    # "removedBySystem":Z
    :catchall_1f
    move-exception v0

    move-object v8, v1

    move-object v7, v3

    move/from16 v17, v4

    move-object v6, v10

    move-object/from16 v24, v18

    move v10, v5

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object v1, v0

    .end local v1    # "allUsers":[I
    .end local v4    # "freezeUser":I
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v8    # "allUsers":[I
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v17    # "freezeUser":I
    .local v18, "isInstallerPackage":Z
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto :goto_24

    .end local v8    # "allUsers":[I
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v1, "freezeUser":I
    .local v4, "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "allUsers":[I
    .local v12, "isInstallerPackage":Z
    .local v18, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v23, "removeUser":I
    :catchall_20
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v17, v1

    move-object v15, v4

    move-object v8, v5

    move-object v6, v10

    move-object/from16 v24, v18

    move/from16 v14, v23

    move/from16 v10, p5

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object v1, v0

    .end local v1    # "freezeUser":I
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "allUsers":[I
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v23    # "removeUser":I
    .restart local v8    # "allUsers":[I
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "freezeUser":I
    .local v18, "isInstallerPackage":Z
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto :goto_24

    .end local v8    # "allUsers":[I
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v1    # "freezeUser":I
    .restart local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "allUsers":[I
    .local v12, "isInstallerPackage":Z
    .local v18, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v23    # "removeUser":I
    :catchall_21
    move-exception v0

    move-object/from16 v7, p1

    move/from16 v17, v1

    move-object v15, v4

    move-object v8, v6

    move-object v6, v10

    move-object/from16 v24, v18

    move/from16 v14, v23

    move/from16 v10, p5

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object v1, v0

    .end local v1    # "freezeUser":I
    .end local v4    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "allUsers":[I
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v23    # "removeUser":I
    .restart local v8    # "allUsers":[I
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "removeUser":I
    .restart local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .restart local v17    # "freezeUser":I
    .local v18, "isInstallerPackage":Z
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    :goto_24
    if-eqz v13, :cond_2f

    :try_start_35
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_22

    goto :goto_25

    :catchall_22
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2f
    :goto_25
    throw v1

    .line 254
    .end local v8    # "allUsers":[I
    .end local v9    # "priorUserStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/DeletePackageHelper$TempUserState;>;"
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v14    # "removeUser":I
    .end local v15    # "uninstalledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "freezeUser":I
    .end local v20    # "disabledSystemPs":Lcom/android/server/pm/PackageSetting;
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v18, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v23    # "removeUser":I
    :catchall_23
    move-exception v0

    move-object v7, v2

    move-object v6, v10

    move-object/from16 v24, v18

    move/from16 v14, v23

    move/from16 v10, p5

    .end local v18    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v23    # "removeUser":I
    .restart local v14    # "removeUser":I
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto :goto_26

    .end local v14    # "removeUser":I
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v8, "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v23    # "removeUser":I
    :catchall_24
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v10, p5

    move-object v7, v2

    move-object/from16 v24, v8

    move/from16 v14, v23

    .end local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v23    # "removeUser":I
    .restart local v14    # "removeUser":I
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    goto :goto_26

    .end local v14    # "removeUser":I
    .end local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .restart local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .local v13, "removeUser":I
    :catchall_25
    move-exception v0

    move/from16 v10, p5

    move-object v6, v1

    move-object v7, v2

    move-object/from16 v24, v8

    move v14, v13

    .end local v8    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    .end local v13    # "removeUser":I
    .restart local v14    # "removeUser":I
    .restart local v24    # "info":Lcom/android/server/pm/PackageRemovedInfo;
    :goto_26
    :try_start_36
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_26

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_26
    move-exception v0

    goto :goto_26
.end method

.method public executeDeletePackage(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    .locals 3
    .param p1, "action"    # Lcom/android/server/pm/DeletePackageAction;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deleteCodeAndResources"    # Z
    .param p4, "allUserHandles"    # [I
    .param p5, "writeSettings"    # Z
    .param p6, "keepArtProfile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/SystemDeleteException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v1

    .line 473
    .local v1, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 476
    .end local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_0
    return-void

    .line 472
    .restart local v1    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V
    .locals 8
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p2, "userId"    # I

    .line 1034
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 1035
    .local v0, "users":[I
    iget-object v1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 1036
    .local v1, "numPackages":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 1037
    iget-object v3, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/Settings;->getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1038
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1039
    goto :goto_3

    .line 1041
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1043
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    .line 1044
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1045
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1046
    goto :goto_3

    .line 1051
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageManagerService;->shouldKeepUninstalledPackageLPr(Ljava/lang/String;)Z

    move-result v5

    .line 1052
    .local v5, "keep":Z
    if-eqz v5, :cond_2

    goto :goto_2

    .line 1057
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_4

    .line 1058
    aget v7, v0, v6

    if-eq v7, p2, :cond_3

    aget v7, v0, v6

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1059
    const/4 v5, 0x1

    .line 1064
    goto :goto_2

    .line 1057
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1068
    .end local v6    # "i":I
    :cond_4
    :goto_2
    if-nez v5, :cond_5

    .line 1073
    iget-object v6, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4, p2}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1036
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "keep":Z
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    nop

    .line 1078
    .end local v2    # "index":I
    return-void
.end method
