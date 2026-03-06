.class public Lcom/android/server/pm/AppDataHelper;
.super Ljava/lang/Object;
.source "AppDataHelper.java"


# static fields
.field private static final DEBUG_APP_DATA:Z = false


# instance fields
.field private final mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$2BeLf97yLOm88wYtplb9WF4eyqo(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/PackageSetting;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$EcbQ0RDhsp50zlsyfvd3o8Q6RFA(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppDataPostCommitLIF$0(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RIGeEJyYe5suegXcEg9XBNKTFvo(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/pm/AppDataHelper;->lambda$prepareAppData$2(Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YFf7DSMx-MyHV4nCg6MSaBHl8TQ(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppDataHelper;->lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getInstaller()Lcom/android/server/pm/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 81
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 82
    return-void
.end method

.method private assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 470
    invoke-interface {p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 471
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v1, "Package "

    if-eqz v0, :cond_4

    .line 475
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 481
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 482
    .local v2, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    goto :goto_0

    .line 483
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not installed for user "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or was deleted without DELETE_KEEP_DATA"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0x9

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 488
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 493
    return-void

    .line 489
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldn\'t have storage"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, -0xa

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 476
    .end local v2    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " found on unknown volume "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; expected volume "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    const/4 v2, -0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1

    .line 472
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is unknown"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x7

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v1

    throw v1
.end method

.method private destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 598
    move/from16 v1, p3

    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 599
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 600
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 601
    .local v3, "packageStateInternal":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v10, v4, v6

    .line 602
    .local v10, "realUserId":I
    if-eqz v3, :cond_0

    .line 603
    invoke-interface {v3, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v7

    :goto_1
    move-wide v12, v7

    goto :goto_2

    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 605
    .local v12, "ceDataInode":J
    :goto_2
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v9, p1

    move-object/from16 v8, p2

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    goto :goto_3

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_3
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/dex/DexManager;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->notifyPackageDataDestroyed(Ljava/lang/String;I)V

    .line 601
    .end local v10    # "realUserId":I
    .end local v12    # "ceDataInode":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 613
    :cond_1
    return-void
.end method

.method private executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    .locals 3
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v1, "PackageManager"

    const-string v2, "Failed to execute pending operations"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    return-void
.end method

.method private getInstalledUsersForPackage(Lcom/android/server/pm/PackageSetting;)[I
    .locals 8
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 107
    .local v0, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 109
    .local v2, "userIds":[I
    const/4 v3, 0x0

    .line 110
    .local v3, "userIdsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 111
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 112
    .local v6, "userId":I
    invoke-virtual {p1, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "userIdsCount":I
    .local v7, "userIdsCount":I
    aput v6, v2, v3

    move v3, v7

    .line 110
    .end local v6    # "userId":I
    .end local v7    # "userIdsCount":I
    .restart local v3    # "userIdsCount":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 116
    .end local v4    # "i":I
    .end local v5    # "size":I
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    return-object v4
.end method

.method private synthetic lambda$fixAppsDataOnBoot$3(Ljava/util/List;I)V
    .locals 12
    .param p1, "deferPackages"    # Ljava/util/List;
    .param p2, "storageFlags"    # I

    .line 514
    const-string v1, "PackageManager"

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemServerTimingAsync"

    const-wide/32 v3, 0x40000

    invoke-direct {v0, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    move-object v2, v0

    .line 516
    .local v2, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v0, "AppDataFixup"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/Installer;->fixupAppData(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "Trouble fixing GIDs"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_0
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 525
    const-string v0, "AppDataPrepare"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 526
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v4, p0

    move v8, p2

    goto/16 :goto_4

    .line 529
    :cond_0
    const/4 v0, 0x0

    .line 530
    .local v0, "count":I
    new-instance v3, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v3}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    move-object v5, v3

    .line 531
    .local v5, "batch":Lcom/android/server/pm/Installer$Batch;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v10, v0

    .end local v0    # "count":I
    .local v10, "count":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    .line 533
    .local v11, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v11, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 535
    .local v6, "packageStateInternal":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_2

    .line 536
    const/4 v4, 0x0

    invoke-interface {v6, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 537
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, p0

    move v8, p2

    .end local p2    # "storageFlags":I
    .local v8, "storageFlags":I
    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    .line 540
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 537
    .end local v8    # "storageFlags":I
    .restart local p2    # "storageFlags":I
    :cond_1
    move-object v4, p0

    move v8, p2

    .end local p2    # "storageFlags":I
    .restart local v8    # "storageFlags":I
    goto :goto_2

    .line 535
    .end local v8    # "storageFlags":I
    .restart local p2    # "storageFlags":I
    :cond_2
    move-object v4, p0

    move v8, p2

    .line 542
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v6    # "packageStateInternal":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "storageFlags":I
    .restart local v8    # "storageFlags":I
    :goto_2
    move p2, v8

    goto :goto_1

    .line 543
    .end local v8    # "storageFlags":I
    .restart local p2    # "storageFlags":I
    :cond_3
    move-object v4, p0

    move v8, p2

    .end local p2    # "storageFlags":I
    .restart local v8    # "storageFlags":I
    iget-object p2, v4, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object p2

    .line 544
    .local p2, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 546
    .end local p2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_4
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 547
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deferred reconcileAppsData finished "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " packages"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 543
    .restart local p2    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz p2, :cond_5

    :try_start_2
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw v1

    .line 526
    .end local v5    # "batch":Lcom/android/server/pm/Installer$Batch;
    .end local v8    # "storageFlags":I
    .end local v10    # "count":I
    .local p2, "storageFlags":I
    :cond_6
    move-object v4, p0

    move v8, p2

    .line 527
    .end local p2    # "storageFlags":I
    .restart local v8    # "storageFlags":I
    :goto_4
    return-void
.end method

.method private synthetic lambda$prepareAppData$2(Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/CreateAppDataResult;Ljava/lang/Throwable;)V
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "args"    # Landroid/os/CreateAppDataArgs;
    .param p6, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p7, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p8, "createAppDataResult"    # Landroid/os/CreateAppDataResult;
    .param p9, "e"    # Ljava/lang/Throwable;

    .line 247
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    if-eqz v6, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create app data for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", but trying to recover: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 250
    invoke-direct/range {p0 .. p4}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    .line 252
    const/4 v8, 0x3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v9, p5

    :try_start_1
    invoke-virtual {v0, v9}, Lcom/android/server/pm/Installer;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    .line 253
    .end local p8    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    .local v10, "createAppDataResult":Landroid/os/CreateAppDataResult;
    :try_start_2
    const-string v0, "Recovery succeeded!"

    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 256
    goto :goto_2

    .line 254
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v10    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    .restart local p8    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    :catch_1
    move-exception v0

    :goto_0
    move-object/from16 v10, p8

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v9, p5

    goto :goto_0

    .line 255
    .end local p8    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    .local v0, "e2":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v10    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    :goto_1
    const-string v11, "Recovery failed!"

    invoke-static {v8, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    goto :goto_2

    .line 247
    .end local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .end local v10    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    .restart local p8    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    :cond_0
    move-object/from16 v7, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    .line 259
    .end local p8    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    .restart local v10    # "createAppDataResult":Landroid/os/CreateAppDataResult;
    :goto_2
    iget-wide v11, v10, Landroid/os/CreateAppDataResult;->ceDataInode:J

    .line 260
    .local v11, "ceDataInode":J
    iget-wide v13, v10, Landroid/os/CreateAppDataResult;->deDataInode:J

    .line 262
    .local v13, "deDataInode":J
    and-int/lit8 v0, v3, 0x2

    const-wide/16 v15, -0x1

    if-eqz v0, :cond_1

    cmp-long v0, v11, v15

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 264
    :try_start_3
    invoke-virtual {v4, v11, v12, v2}, Lcom/android/server/pm/PackageSetting;->setCeDataInode(JI)V

    .line 265
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 267
    :cond_1
    :goto_3
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    cmp-long v0, v13, v15

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    .line 269
    :try_start_5
    invoke-virtual {v4, v13, v14, v2}, Lcom/android/server/pm/PackageSetting;->setDeDataInode(JI)V

    .line 270
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 273
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 274
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 276
    :cond_3
    return-void
.end method

.method private synthetic lambda$prepareAppDataAndMigrate$1(ZLcom/android/server/pm/PackageSetting;II)V
    .locals 7
    .param p1, "maybeMigrateAppData"    # Z
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 194
    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/AppDataHelper;->maybeMigrateAppDataLIF(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    move-object v2, v0

    .line 198
    .local v2, "batchInner":Lcom/android/server/pm/Installer$Batch;
    const/4 v4, -0x1

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    .end local p2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v5, "userId":I
    .local v6, "flags":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    .line 199
    invoke-direct {p0, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    goto :goto_0

    .line 194
    .end local v2    # "batchInner":Lcom/android/server/pm/Installer$Batch;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "userId":I
    .end local v6    # "flags":I
    .restart local p2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p3    # "userId":I
    .restart local p4    # "flags":I
    :cond_0
    move-object v1, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 201
    .end local p2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v5    # "userId":I
    .restart local v6    # "flags":I
    :goto_0
    return-void
.end method

.method private static synthetic lambda$prepareAppDataPostCommitLIF$0(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V
    .locals 2
    .param p0, "umInternal"    # Lcom/android/server/pm/UserManagerInternal;
    .param p1, "userId"    # I
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "smInternal"    # Landroid/os/storage/StorageManagerInternal;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 160
    .local v0, "uid":I
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/os/storage/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    .line 162
    .end local v0    # "uid":I
    :cond_0
    return-void
.end method

.method private maybeMigrateAppDataLIF(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 5
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 320
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 323
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 325
    .local v0, "storageTarget":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/android/server/pm/Installer;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_1

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to migrate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 331
    .end local v2    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    return v1

    .line 333
    .end local v0    # "storageTarget":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;
    .locals 17
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "previousAppId"    # I
    .param p4, "userId"    # I
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Installer$Batch;",
            "Lcom/android/server/pm/PackageSetting;",
            "III)",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    .line 217
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "packageName":Ljava/lang/String;
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 226
    move-object/from16 v9, p2

    move/from16 v4, p4

    :try_start_0
    invoke-virtual {v9, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/pkg/SELinuxUtil;->getSeinfoUser(Lcom/android/server/pm/pkg/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 227
    .local v10, "seInfoUser":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 229
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 230
    .local v8, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    .line 233
    .local v4, "appId":I
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v11

    .line 234
    .local v11, "pkgSeInfo":Ljava/lang/String;
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "seInfo":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v6

    .line 238
    .local v6, "targetSdkVersion":I
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    .local v7, "usesSdk":Z
    :goto_1
    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v12

    .line 241
    move v13, v4

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    .end local v4    # "appId":I
    .end local v5    # "seInfo":Ljava/lang/String;
    .end local v6    # "targetSdkVersion":I
    .end local v7    # "usesSdk":Z
    .local v12, "args":Landroid/os/CreateAppDataArgs;
    .local v13, "appId":I
    .local v14, "seInfo":Ljava/lang/String;
    .local v15, "targetSdkVersion":I
    .local v16, "usesSdk":Z
    move/from16 v2, p3

    iput v2, v12, Landroid/os/CreateAppDataArgs;->previousAppId:I

    .line 243
    move-object/from16 v3, p1

    invoke-virtual {v3, v12}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    move-object v3, v0

    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v3, "volumeUuid":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;

    move/from16 v5, p5

    move-object v2, v1

    move-object v7, v9

    move-object v6, v12

    move-object/from16 v1, p0

    move-object v9, v4

    move/from16 v4, p4

    .end local v1    # "packageName":Ljava/lang/String;
    .end local v12    # "args":Landroid/os/CreateAppDataArgs;
    .local v2, "packageName":Ljava/lang/String;
    .local v6, "args":Landroid/os/CreateAppDataArgs;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/lang/String;Ljava/lang/String;IILandroid/os/CreateAppDataArgs;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V

    move-object v1, v2

    move-object v2, v0

    move-object v0, v3

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .restart local v0    # "volumeUuid":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2

    .line 227
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "args":Landroid/os/CreateAppDataArgs;
    .end local v8    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v10    # "seInfoUser":Ljava/lang/String;
    .end local v11    # "pkgSeInfo":Ljava/lang/String;
    .end local v13    # "appId":I
    .end local v14    # "seInfo":Ljava/lang/String;
    .end local v15    # "targetSdkVersion":I
    .end local v16    # "usesSdk":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method private prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V
    .locals 8
    .param p1, "batch"    # Lcom/android/server/pm/Installer$Batch;
    .param p2, "psi"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "maybeMigrateAppData"    # Z

    .line 178
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_0

    move v6, p3

    move v7, p4

    move v4, p5

    move-object p3, p1

    goto/16 :goto_1

    .line 182
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping preparing app data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object v4, v0

    .line 189
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 190
    const/4 v5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    .end local p1    # "batch":Lcom/android/server/pm/Installer$Batch;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .local v3, "batch":Lcom/android/server/pm/Installer$Batch;
    .local v6, "userId":I
    .local v7, "flags":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    move-object p3, v3

    .end local v3    # "batch":Lcom/android/server/pm/Installer$Batch;
    .local p3, "batch":Lcom/android/server/pm/Installer$Batch;
    new-instance v2, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v5, v4

    move v4, p5

    .end local p5    # "maybeMigrateAppData":Z
    .local v4, "maybeMigrateAppData":Z
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppDataHelper;ZLcom/android/server/pm/PackageSetting;II)V

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 202
    return-void

    .line 189
    .end local v4    # "maybeMigrateAppData":Z
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "userId":I
    .end local v7    # "flags":I
    .restart local p1    # "batch":Lcom/android/server/pm/Installer$Batch;
    .local p3, "userId":I
    .restart local p4    # "flags":I
    .restart local p5    # "maybeMigrateAppData":Z
    :catchall_0
    move-exception v0

    move v6, p3

    move v7, p4

    move v4, p5

    move-object p3, p1

    move-object p1, v0

    .end local p1    # "batch":Lcom/android/server/pm/Installer$Batch;
    .end local p4    # "flags":I
    .end local p5    # "maybeMigrateAppData":Z
    .restart local v4    # "maybeMigrateAppData":Z
    .restart local v6    # "userId":I
    .restart local v7    # "flags":I
    .local p3, "batch":Lcom/android/server/pm/Installer$Batch;
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 178
    .end local v4    # "maybeMigrateAppData":Z
    .end local v6    # "userId":I
    .end local v7    # "flags":I
    .restart local p1    # "batch":Lcom/android/server/pm/Installer$Batch;
    .local p3, "userId":I
    .restart local p4    # "flags":I
    .restart local p5    # "maybeMigrateAppData":Z
    :cond_2
    move v6, p3

    move v7, p4

    move v4, p5

    move-object p3, p1

    .line 179
    .end local p1    # "batch":Lcom/android/server/pm/Installer$Batch;
    .end local p4    # "flags":I
    .end local p5    # "maybeMigrateAppData":Z
    .restart local v4    # "maybeMigrateAppData":Z
    .restart local v6    # "userId":I
    .restart local v7    # "flags":I
    .local p3, "batch":Lcom/android/server/pm/Installer$Batch;
    :goto_1
    const-string p1, "PackageManager"

    const-string p4, "Package was null!"

    new-instance p5, Ljava/lang/Throwable;

    invoke-direct {p5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1, p4, p5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return-void
.end method

.method private prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 290
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "packageName":Ljava/lang/String;
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_2

    .line 297
    if-nez p2, :cond_0

    .line 298
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "primaryCpuAbi":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "nativeLibPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    return-void

    .line 305
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v0, v1, v3, p3}, Lcom/android/server/pm/Installer;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_1

    .line 307
    :catch_0
    move-exception v4

    .line 308
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to link native for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v2    # "primaryCpuAbi":Ljava/lang/String;
    .end local v3    # "nativeLibPath":Ljava/lang/String;
    .end local v4    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_2
    :goto_1
    return-void
.end method

.method private reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;
    .locals 26
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "migrateAppData"    # Z
    .param p5, "onlyCoreApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v9, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconcileAppsData for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " migrateAppData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v11, "PackageManager"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    .line 380
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v3, v5, v9}, Lcom/android/server/pm/Installer;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cleanup deleted dirs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 385
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    .line 386
    .local v14, "ceDir":Ljava/io/File;
    invoke-static/range {p1 .. p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v15

    .line 388
    .local v15, "deDir":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 391
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    and-int/lit8 v0, v9, 0x2

    const-string v4, "Failed to destroy: "

    const-string v6, " due to: "

    const-string v7, "Destroying "

    const/16 v16, 0x0

    if-eqz v0, :cond_4

    .line 392
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_2

    .line 393
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Yikes, someone asked us to reconcile CE storage while "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " was still locked; this would have caused massive data loss!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :goto_2
    invoke-static {v14}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v8

    .line 399
    .local v8, "files":[Ljava/io/File;
    array-length v13, v8

    move-object/from16 v18, v8

    move/from16 v8, v16

    .end local v8    # "files":[Ljava/io/File;
    .local v18, "files":[Ljava/io/File;
    :goto_3
    if-ge v8, v13, :cond_3

    move/from16 v19, v8

    aget-object v8, v18, v19

    .line 400
    .local v8, "file":Ljava/io/File;
    move-object/from16 v20, v4

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    move-object v9, v2

    move/from16 v21, v19

    move-object/from16 v10, v20

    move-object/from16 v19, v14

    move-object/from16 v20, v18

    move-object v14, v7

    move/from16 v18, v13

    move-object v13, v6

    goto/16 :goto_5

    .line 403
    :catch_1
    move-exception v0

    move-object/from16 v21, v0

    .line 404
    .local v21, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    .end local v21    # "e":Lcom/android/server/pm/PackageManagerException;
    .local v6, "e":Lcom/android/server/pm/PackageManagerException;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v2

    const/4 v2, 0x5

    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .local v21, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 406
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v23, v6

    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    .local v23, "e":Lcom/android/server/pm/PackageManagerException;
    const/4 v6, 0x2

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v8    # "file":Ljava/io/File;
    .local v25, "file":Ljava/io/File;
    const-wide/16 v7, 0x0

    move-object/from16 v10, v20

    move-object/from16 v9, v21

    move-object/from16 v20, v18

    move/from16 v21, v19

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    .end local v14    # "ceDir":Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .end local v21    # "snapshot":Lcom/android/server/pm/Computer;
    .local v9, "snapshot":Lcom/android/server/pm/Computer;
    .local v19, "ceDir":Ljava/io/File;
    .local v20, "files":[Ljava/io/File;
    :try_start_3
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 410
    goto :goto_5

    .line 408
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v9    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v19    # "ceDir":Ljava/io/File;
    .end local v20    # "files":[Ljava/io/File;
    .end local v23    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v25    # "file":Ljava/io/File;
    .restart local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v14    # "ceDir":Ljava/io/File;
    .restart local v18    # "files":[Ljava/io/File;
    .restart local v21    # "snapshot":Lcom/android/server/pm/Computer;
    :catch_3
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v25, v8

    move-object/from16 v10, v20

    move-object/from16 v9, v21

    move-object/from16 v20, v18

    move/from16 v21, v19

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v13, v22

    move-object v14, v7

    .line 409
    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v8    # "file":Ljava/io/File;
    .end local v14    # "ceDir":Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .end local v21    # "snapshot":Lcom/android/server/pm/Computer;
    .local v0, "e2":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v9    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v19    # "ceDir":Ljava/io/File;
    .restart local v20    # "files":[Ljava/io/File;
    .restart local v23    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v25    # "file":Ljava/io/File;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 399
    .end local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v23    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v25    # "file":Ljava/io/File;
    :goto_5
    add-int/lit8 v8, v21, 0x1

    move-object v2, v9

    move-object v4, v10

    move-object v6, v13

    move-object v7, v14

    move/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v18, v20

    move/from16 v9, p3

    move/from16 v10, p4

    goto/16 :goto_3

    .end local v9    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v19    # "ceDir":Ljava/io/File;
    .end local v20    # "files":[Ljava/io/File;
    .restart local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v14    # "ceDir":Ljava/io/File;
    .restart local v18    # "files":[Ljava/io/File;
    :cond_3
    move-object v9, v2

    move-object v10, v4

    move-object v13, v6

    move-object/from16 v19, v14

    move-object/from16 v20, v18

    move-object v14, v7

    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v14    # "ceDir":Ljava/io/File;
    .end local v18    # "files":[Ljava/io/File;
    .restart local v9    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v19    # "ceDir":Ljava/io/File;
    .restart local v20    # "files":[Ljava/io/File;
    goto :goto_6

    .line 391
    .end local v9    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v19    # "ceDir":Ljava/io/File;
    .end local v20    # "files":[Ljava/io/File;
    .restart local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v14    # "ceDir":Ljava/io/File;
    :cond_4
    move-object v9, v2

    move-object v10, v4

    move-object v13, v6

    move-object/from16 v19, v14

    move-object v14, v7

    .line 414
    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v14    # "ceDir":Ljava/io/File;
    .restart local v9    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v19    # "ceDir":Ljava/io/File;
    :goto_6
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_6

    .line 415
    invoke-static {v15}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    .line 416
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    move/from16 v6, v16

    :goto_7
    if-ge v6, v4, :cond_5

    aget-object v7, v2, v6

    .line 417
    .local v7, "file":Ljava/io/File;
    move v8, v4

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 419
    .restart local v4    # "packageName":Ljava/lang/String;
    :try_start_4
    invoke-direct {v1, v9, v3, v4, v5}, Lcom/android/server/pm/AppDataHelper;->assertPackageStorageValid(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 428
    move-object/from16 v16, v2

    move-object v7, v3

    move/from16 v18, v6

    move/from16 v21, v8

    const/4 v6, 0x5

    goto :goto_9

    .line 420
    :catch_4
    move-exception v0

    move-object/from16 v16, v0

    .line 421
    .local v16, "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v6

    move-object/from16 v6, v16

    .end local v16    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v2

    const/4 v2, 0x5

    .end local v2    # "files":[Ljava/io/File;
    .local v16, "files":[Ljava/io/File;
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 423
    :try_start_5
    iget-object v2, v1, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v20, v6

    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    .local v20, "e":Lcom/android/server/pm/PackageManagerException;
    const/4 v6, 0x1

    move-object/from16 v22, v7

    move/from16 v21, v8

    .end local v7    # "file":Ljava/io/File;
    .local v22, "file":Ljava/io/File;
    const-wide/16 v7, 0x0

    :try_start_6
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_6
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v7, v3

    .line 427
    const/4 v6, 0x5

    goto :goto_9

    .line 425
    :catch_5
    move-exception v0

    move-object v7, v3

    goto :goto_8

    .end local v20    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v22    # "file":Ljava/io/File;
    .restart local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v7    # "file":Ljava/io/File;
    :catch_6
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move/from16 v21, v8

    move-object v7, v3

    .line 426
    .end local v6    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "file":Ljava/io/File;
    .restart local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v20    # "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v22    # "file":Ljava/io/File;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 416
    .end local v0    # "e2":Lcom/android/server/pm/Installer$InstallerException;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v20    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v22    # "file":Ljava/io/File;
    :goto_9
    add-int/lit8 v0, v18, 0x1

    move v6, v0

    move-object v3, v7

    move-object/from16 v2, v16

    move/from16 v4, v21

    goto :goto_7

    .end local v16    # "files":[Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    :cond_5
    move-object/from16 v16, v2

    move-object v7, v3

    .end local v2    # "files":[Ljava/io/File;
    .restart local v16    # "files":[Ljava/io/File;
    goto :goto_a

    .line 414
    .end local v16    # "files":[Ljava/io/File;
    :cond_6
    move-object v7, v3

    .line 434
    :goto_a
    const-string/jumbo v0, "prepareAppDataAndMigrate"

    const-wide/32 v13, 0x40000

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 435
    new-instance v2, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v2}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    .line 436
    .local v2, "batch":Lcom/android/server/pm/Installer$Batch;
    invoke-interface {v9, v7}, Lcom/android/server/pm/Computer;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 437
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v3, 0x0

    .line 438
    .local v3, "preparedCount":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v3

    .end local v3    # "preparedCount":I
    .local v10, "preparedCount":I
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 439
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 440
    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-nez v6, :cond_7

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v13

    const-string v13, "Odd, missing scanned package "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    goto :goto_c

    .line 447
    :cond_7
    move-wide/from16 v16, v13

    if-eqz p5, :cond_8

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    move-result v6

    if-nez v6, :cond_8

    .line 448
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    nop

    .line 438
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_c
    move-wide/from16 v13, v16

    goto :goto_b

    .line 452
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_8
    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 453
    move/from16 v6, p4

    move-object v13, v4

    move v4, v5

    move/from16 v5, p3

    .end local v4    # "packageName":Ljava/lang/String;
    .local v13, "packageName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataAndMigrate(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/pkg/PackageStateInternal;IIZ)V

    .line 454
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 452
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_9
    move-object v13, v4

    .line 456
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_d
    move/from16 v5, p2

    move-wide/from16 v13, v16

    goto :goto_b

    .line 457
    :cond_a
    move-wide/from16 v16, v13

    invoke-direct {v1, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 458
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconcileAppsData finished "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-object v12
.end method

.method private shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .locals 3
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 643
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 645
    return v1

    .line 647
    :cond_0
    nop

    .line 648
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string v2, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager$Property;

    .line 649
    .local v0, "noAppDataProp":Landroid/content/pm/PackageManager$Property;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 553
    if-nez p1, :cond_0

    .line 554
    return-void

    .line 556
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    .line 558
    const/high16 v0, 0x20000

    and-int/2addr v0, p3

    if-nez v0, :cond_1

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 561
    :cond_1
    return-void
.end method

.method clearAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 565
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 566
    .local v1, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 567
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 568
    .local v2, "packageStateInternal":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v10, v4, v6

    .line 569
    .local v10, "realUserId":I
    if-eqz v2, :cond_0

    .line 570
    invoke-interface {v2, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v7

    :goto_1
    move-wide v12, v7

    goto :goto_2

    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 572
    .local v12, "ceDataInode":J
    :goto_2
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/AppDataHelper;->mInstaller:Lcom/android/server/pm/Installer;

    move-object v9, p1

    move-object/from16 v8, p2

    move/from16 v11, p4

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/Installer;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_3

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v10    # "realUserId":I
    .end local v12    # "ceDataInode":J
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 581
    if-nez p1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    return-void

    .line 585
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method public clearKeystoreData(II)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "appId"    # I

    .line 656
    if-gez p2, :cond_0

    .line 657
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->resolveUserIds(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 661
    .local v4, "realUserId":I
    nop

    .line 662
    invoke-static {v4, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    int-to-long v5, v5

    .line 661
    invoke-static {v2, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 660
    .end local v4    # "realUserId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 664
    :cond_1
    return-void
.end method

.method public destroyAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 589
    if-nez p1, :cond_0

    .line 590
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    return-void

    .line 593
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(Ljava/lang/String;Ljava/lang/String;II)V

    .line 594
    return-void
.end method

.method destroyAppProfilesLIF(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 619
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->artManagerLocalIsInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    return-void

    .line 629
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    .line 631
    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/art/ArtManagerLocal;->clearAppProfiles(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    goto :goto_0

    .line 628
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 632
    :catch_0
    move-exception v1

    nop

    .line 634
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 637
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :cond_1
    return-void

    .line 628
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1
.end method

.method public fixAppsDataOnBoot()Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 502
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const/4 v0, 0x1

    move v4, v0

    .local v0, "storageFlags":I
    goto :goto_0

    .line 505
    .end local v0    # "storageFlags":I
    :cond_0
    const/4 v0, 0x3

    move v4, v0

    .line 508
    .local v4, "storageFlags":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v7

    .line 509
    .local v7, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_0
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    .local v0, "deferPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 513
    .end local v7    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_1
    new-instance v2, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/AppDataHelper;Ljava/util/List;I)V

    const-string/jumbo v3, "prepareAppData"

    invoke-static {v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 549
    .local v2, "prepareAppDataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    return-object v2

    .line 508
    .end local v0    # "deferPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "prepareAppDataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .restart local v7    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v0

    :goto_1
    move-object v2, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_1

    :goto_2
    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
.end method

.method public prepareAppDataAfterInstallLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 100
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/pm/AppDataHelper;->getInstalledUsersForPackage(Lcom/android/server/pm/PackageSetting;)[I

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V

    .line 103
    return-void

    .line 100
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v1
.end method

.method public prepareAppDataContentsLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "userId"    # I
    .param p4, "flags"    # I

    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "PackageManager"

    const-string v2, "Package was null!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppDataHelper;->prepareAppDataContentsLeafLIF(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;II)V

    .line 286
    return-void
.end method

.method public prepareAppDataPostCommitLIF(Lcom/android/server/pm/PackageSetting;I[I)V
    .locals 10
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "previousAppId"    # I
    .param p3, "userIds"    # [I

    .line 126
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 128
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppDataHelper;->shouldHaveAppStorage(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping preparing app data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v0}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    move-object v2, v0

    .line 137
    .local v2, "batch":Lcom/android/server/pm/Installer$Batch;
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 138
    .local v0, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManagerInternal;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 140
    .local v7, "smInternal":Landroid/os/storage/StorageManagerInternal;
    array-length v8, p3

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_3

    aget v5, p3, v9

    .line 142
    .local v5, "userId":I
    invoke-static {v5}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v7, v5}, Landroid/os/storage/StorageManagerInternal;->isCeStoragePrepared(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const/4 v1, 0x3

    move v6, v1

    .local v1, "flags":I
    goto :goto_1

    .line 145
    .end local v1    # "flags":I
    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const/4 v1, 0x1

    move v6, v1

    .line 152
    .local v6, "flags":I
    :goto_1
    move-object v1, p0

    move-object v3, p1

    move v4, p2

    .end local p1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p2    # "previousAppId":I
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v4, "previousAppId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppDataHelper;->prepareAppData(Lcom/android/server/pm/Installer$Batch;Lcom/android/server/pm/PackageSetting;III)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    move-object p2, v1

    new-instance v1, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, v5, v3, v7}, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_2

    .line 145
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "previousAppId":I
    .end local v6    # "flags":I
    .restart local p1    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p2    # "previousAppId":I
    :cond_2
    move-object v3, p1

    move v4, p2

    move-object p2, p0

    .line 140
    .end local v5    # "userId":I
    .end local p1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p2    # "previousAppId":I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "previousAppId":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object p1, v3

    move p2, v4

    goto :goto_0

    .line 164
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "previousAppId":I
    .restart local p1    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local p2    # "previousAppId":I
    :cond_3
    move v4, p2

    move-object p2, p0

    .end local p2    # "previousAppId":I
    .restart local v4    # "previousAppId":I
    invoke-direct {p0, v2}, Lcom/android/server/pm/AppDataHelper;->executeBatchLI(Lcom/android/server/pm/Installer$Batch;)V

    .line 165
    return-void

    .line 128
    .end local v0    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v2    # "batch":Lcom/android/server/pm/Installer$Batch;
    .end local v4    # "previousAppId":I
    .end local v7    # "smInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local p2    # "previousAppId":I
    :catchall_0
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-object p2, p0

    move-object p1, v0

    .end local p1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local p2    # "previousAppId":I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "previousAppId":I
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3
.end method

.method public reconcileAppsData(IIZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "flags"    # I
    .param p3, "migrateAppsData"    # Z

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 347
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 348
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "volumeUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/AppDataHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v4

    .line 350
    .local v4, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_0
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 352
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v4    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_0
    goto :goto_0

    .line 349
    .restart local v2    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v3    # "volumeUuid":Ljava/lang/String;
    .restart local v4    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :catchall_0
    move-exception v1

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1

    .line 353
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v4    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_2
    return-void
.end method

.method reconcileAppsDataLI(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I
    .param p4, "migrateAppData"    # Z

    .line 358
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "flags":I
    .end local p4    # "migrateAppData":Z
    .local v1, "volumeUuid":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "flags":I
    .local v4, "migrateAppData":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/AppDataHelper;->reconcileAppsDataLI(Ljava/lang/String;IIZZ)Ljava/util/List;

    .line 359
    return-void
.end method
