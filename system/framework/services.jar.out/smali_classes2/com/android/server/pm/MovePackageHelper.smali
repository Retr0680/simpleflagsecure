.class public final Lcom/android/server/pm/MovePackageHelper;
.super Ljava/lang/Object;
.source "MovePackageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;
    }
.end annotation


# instance fields
.field final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public static synthetic $r8$lambda$hO6Xq9gpW5zc9gxy7Z4mO-vs088(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/MovePackageHelper;->lambda$movePackageInternal$0(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogAppMovedStorage(Lcom/android/server/pm/MovePackageHelper;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/MovePackageHelper;->logAppMovedStorage(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 78
    return-void
.end method

.method private getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "stats"    # Landroid/content/pm/PackageStats;

    .line 359
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    iget-object v3, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 360
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 361
    invoke-interface {v12, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 362
    .local v13, "packageStateInternal":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v14, 0x0

    const-string v15, "PackageManager"

    if-nez v13, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find settings for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return v14

    .line 367
    :cond_0
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "packageNames":[Ljava/lang/String;
    nop

    .line 369
    move/from16 v6, p2

    invoke-interface {v13, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v3

    new-array v9, v0, [J

    aput-wide v3, v9, v14

    .line 370
    .local v9, "ceDataInodes":[J
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPathString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    .line 373
    .local v10, "codePaths":[Ljava/lang/String;
    :try_start_0
    iget-object v3, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    const/4 v7, 0x0

    move-object/from16 v11, p3

    :try_start_1
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 377
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUpdatedSystemApp(Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 379
    const-wide/16 v3, 0x0

    iput-wide v3, v11, Landroid/content/pm/PackageStats;->codeSize:J

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    goto :goto_1

    .line 383
    :cond_1
    :goto_0
    iget-wide v3, v11, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v6, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    sub-long/2addr v3, v6

    iput-wide v3, v11, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    nop

    .line 390
    return v0

    .line 385
    :catch_1
    move-exception v0

    move-object/from16 v11, p3

    :goto_1
    nop

    .line 386
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v14
.end method

.method private synthetic lambda$movePackageInternal$0(Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V
    .locals 10
    .param p1, "installedLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "startFreeBytes"    # J
    .param p4, "measurePath"    # Ljava/io/File;
    .param p5, "sizeBytes"    # J
    .param p7, "moveId"    # I

    .line 292
    nop

    :goto_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 293
    nop

    .line 303
    return-void

    .line 296
    :cond_0
    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 298
    :goto_1
    invoke-virtual {p4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 299
    .local v0, "deltaFreeBytes":J
    const-wide/16 v2, 0x50

    mul-long/2addr v2, v0

    div-long v4, v2, p5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x50

    invoke-static/range {v4 .. v9}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0xa

    .line 301
    .local v2, "progress":I
    iget-object v3, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    move/from16 v4, p7

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 302
    .end local v0    # "deltaFreeBytes":J
    .end local v2    # "progress":I
    goto :goto_0
.end method

.method private logAppMovedStorage(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isPreviousLocationExternal"    # Z

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 331
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    .line 332
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v1, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 337
    .local v2, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 338
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 339
    .local v3, "volume":Landroid/os/storage/VolumeInfo;
    nop

    .line 340
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v4

    .line 339
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageExternalStorageType(Landroid/os/storage/VolumeInfo;Z)I

    move-result v4

    .line 342
    .local v4, "packageExternalStorageType":I
    const/16 v5, 0xb7

    if-nez p2, :cond_1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 344
    const/4 v6, 0x1

    invoke-static {v5, v4, v6, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v6

    if-nez v6, :cond_2

    .line 350
    const/4 v6, 0x2

    invoke-static {v5, v4, v6, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;)V

    .line 355
    :cond_2
    :goto_0
    return-void
.end method

.method private prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6
    .param p1, "fromVolumeUuid"    # Ljava/lang/String;
    .param p2, "toVolumeUuid"    # Ljava/lang/String;
    .param p3, "userIds"    # [I

    .line 399
    iget-object v0, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/os/storage/StorageManagerInternal;

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 401
    .local v0, "smInternal":Landroid/os/storage/StorageManagerInternal;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p3, v3

    .line 403
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 404
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v4    # "userId":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v0, p1, p2, v1}, Landroid/os/storage/StorageManagerInternal;->prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 407
    return-void
.end method


# virtual methods
.method public movePackageInternal(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 45
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "volumeUuid"    # Ljava/lang/String;
    .param p3, "moveId"    # I
    .param p4, "callingUid"    # I
    .param p5, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    move/from16 v13, p4

    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/storage/StorageManager;

    .line 84
    .local v14, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 86
    .local v15, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    .line 87
    .local v10, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 88
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 87
    invoke-interface {v10, v3, v13, v0}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 89
    .local v11, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v0, -0x2

    if-eqz v11, :cond_1c

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 92
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 93
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 92
    const/4 v12, 0x1

    invoke-static {v11, v2, v12}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[IZ)[I

    move-result-object v2

    .line 95
    .local v2, "installedUserIds":[I
    array-length v4, v2

    if-lez v4, :cond_1b

    .line 96
    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v16

    .line 101
    .local v16, "userForMove":Landroid/os/UserHandle;
    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v2, v6

    .line 102
    .local v7, "userId":I
    invoke-interface {v10, v11, v13, v7}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v17

    if-nez v17, :cond_0

    .line 101
    .end local v7    # "userId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .restart local v7    # "userId":I
    :cond_0
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Missing package"

    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 107
    .end local v7    # "userId":I
    :cond_1
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    .line 108
    .local v17, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 113
    const-string/jumbo v0, "private"

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 114
    .local v18, "isInternalStorage":Z
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110016

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 116
    .local v19, "allow3rdPartyOnInternal":Z
    if-eqz v18, :cond_2

    if-eqz v19, :cond_3

    :cond_2
    goto :goto_1

    .line 117
    :cond_3
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v4, -0x9

    const-string v5, "3rd party apps are not allowed on internal storage"

    invoke-direct {v0, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 121
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v0

    .line 122
    .local v20, "probe":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v5, -0x6

    if-eqz v0, :cond_19

    .line 127
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "currentVolumeUuid":Ljava/lang/String;
    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 132
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v0

    nop

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 133
    invoke-virtual {v0, v10, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 134
    :cond_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v4, -0x8

    const-string v5, "Device admin cannot be moved"

    invoke-direct {v0, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 138
    :cond_5
    :goto_2
    invoke-interface {v10}, Lcom/android/server/pm/Computer;->getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 143
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v21

    .line 144
    .local v21, "isCurrentLocationExternal":Z
    new-instance v0, Ljava/io/File;

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v0

    .line 145
    .local v22, "codeFile":Ljava/io/File;
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v23

    .line 146
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v24

    .line 147
    .local v24, "packageAbiOverride":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    .line 148
    .local v25, "appId":I
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getSeInfo()Ljava/lang/String;

    move-result-object v26

    .line 149
    .local v26, "seinfo":Ljava/lang/String;
    nop

    .line 150
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 149
    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "label":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v27

    .line 153
    .local v27, "targetSdkVersion":I
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "~~"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .local v0, "fromCodePath":Ljava/lang/String;
    goto :goto_3

    .line 157
    .end local v0    # "fromCodePath":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v0

    .line 161
    .local v29, "fromCodePath":Ljava/lang/String;
    :goto_3
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4

    .line 162
    move-object/from16 v30, v2

    .end local v2    # "installedUserIds":[I
    .local v30, "installedUserIds":[I
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move/from16 v31, v5

    const-string/jumbo v5, "movePackageInternal"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v32, v6

    .end local v6    # "currentVolumeUuid":Ljava/lang/String;
    .local v32, "currentVolumeUuid":Ljava/lang/String;
    const/16 v6, 0xa

    move-object/from16 v33, v7

    .end local v7    # "label":Ljava/lang/String;
    .local v33, "label":Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v34, v4

    const/4 v4, -0x1

    move-object/from16 v12, v30

    move-object/from16 v30, v10

    move-object v10, v12

    move-object/from16 v36, v32

    move-object/from16 v12, v33

    const/16 v28, 0x0

    .end local v32    # "currentVolumeUuid":Ljava/lang/String;
    .end local v33    # "label":Ljava/lang/String;
    .local v10, "installedUserIds":[I
    .local v12, "label":Ljava/lang/String;
    .local v30, "snapshot":Lcom/android/server/pm/Computer;
    .local v36, "currentVolumeUuid":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    move-result-object v2

    .line 165
    .local v2, "freezer":Lcom/android/server/pm/PackageFreezer;
    monitor-exit v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 168
    .local v7, "extras":Landroid/os/Bundle;
    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v7, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    invoke-virtual {v0, v8, v7}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 176
    const/16 v32, 0x10

    .line 177
    .local v32, "installFlags":I
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "moveCompleteApp":Z
    invoke-static {v9}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    move/from16 v33, v0

    .local v4, "measurePath":Ljava/io/File;
    goto :goto_4

    .line 180
    .end local v0    # "moveCompleteApp":Z
    .end local v4    # "measurePath":Ljava/io/File;
    :cond_7
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    const/4 v0, 0x0

    .line 182
    .restart local v0    # "moveCompleteApp":Z
    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    move/from16 v33, v0

    .restart local v4    # "measurePath":Ljava/io/File;
    goto :goto_4

    .line 184
    .end local v0    # "moveCompleteApp":Z
    .end local v4    # "measurePath":Ljava/io/File;
    :cond_8
    invoke-virtual {v14, v9}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 185
    .local v0, "volume":Landroid/os/storage/VolumeInfo;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16

    .line 186
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 192
    const/4 v4, 0x1

    .line 193
    .local v4, "moveCompleteApp":Z
    invoke-static {v9}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move/from16 v33, v4

    move-object v4, v5

    .line 197
    .end local v0    # "volume":Landroid/os/storage/VolumeInfo;
    .local v4, "measurePath":Ljava/io/File;
    .local v33, "moveCompleteApp":Z
    :goto_4
    if-eqz v33, :cond_c

    .line 198
    array-length v0, v10

    move/from16 v5, v28

    :goto_5
    if-ge v5, v0, :cond_b

    aget v6, v10, v5

    .line 199
    .local v6, "userId":I
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v34

    if-eqz v34, :cond_a

    .line 200
    invoke-static {v6}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v34

    if-eqz v34, :cond_9

    move-object/from16 v37, v2

    goto :goto_6

    .line 201
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 202
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v2

    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .local v37, "freezer":Lcom/android/server/pm/PackageFreezer;
    const-string v2, "User "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be unlocked"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, -0xa

    invoke-direct {v0, v5, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 199
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :cond_a
    move-object/from16 v37, v2

    .line 198
    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v6    # "userId":I
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v37

    goto :goto_5

    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :cond_b
    move-object/from16 v37, v2

    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    goto :goto_7

    .line 197
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :cond_c
    move-object/from16 v37, v2

    .line 208
    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :goto_7
    new-instance v0, Landroid/content/pm/PackageStats;

    const/4 v2, -0x1

    const/4 v5, 0x0

    invoke-direct {v0, v5, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    move-object v2, v0

    .line 209
    .local v2, "stats":Landroid/content/pm/PackageStats;
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v6

    .line 210
    .local v6, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :try_start_2
    array-length v0, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v5, v28

    :goto_8
    if-ge v5, v0, :cond_e

    :try_start_3
    aget v38, v10, v5

    move/from16 v39, v38

    .line 211
    .local v39, "userId":I
    move/from16 v38, v0

    move/from16 v0, v39

    .end local v39    # "userId":I
    .local v0, "userId":I
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/pm/MovePackageHelper;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    move-result v39

    if-eqz v39, :cond_d

    .line 210
    .end local v0    # "userId":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v38

    goto :goto_8

    .line 212
    .restart local v0    # "userId":I
    :cond_d
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 213
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    move/from16 v38, v0

    .end local v0    # "userId":I
    .local v38, "userId":I
    const-string v0, "Failed to measure package size"

    const/4 v3, -0x6

    invoke-direct {v5, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .end local v4    # "measurePath":Ljava/io/File;
    .end local v6    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "installedUserIds":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "label":Ljava/lang/String;
    .end local v14    # "storage":Landroid/os/storage/StorageManager;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v16    # "userForMove":Landroid/os/UserHandle;
    .end local v17    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v18    # "isInternalStorage":Z
    .end local v19    # "allow3rdPartyOnInternal":Z
    .end local v20    # "probe":Ljava/io/File;
    .end local v21    # "isCurrentLocationExternal":Z
    .end local v22    # "codeFile":Ljava/io/File;
    .end local v23    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v24    # "packageAbiOverride":Ljava/lang/String;
    .end local v25    # "appId":I
    .end local v26    # "seinfo":Ljava/lang/String;
    .end local v27    # "targetSdkVersion":I
    .end local v29    # "fromCodePath":Ljava/lang/String;
    .end local v30    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v32    # "installFlags":I
    .end local v33    # "moveCompleteApp":Z
    .end local v36    # "currentVolumeUuid":Ljava/lang/String;
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/MovePackageHelper;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "volumeUuid":Ljava/lang/String;
    .end local p3    # "moveId":I
    .end local p4    # "callingUid":I
    .end local p5    # "user":Landroid/os/UserHandle;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    .end local v38    # "userId":I
    .restart local v2    # "stats":Landroid/content/pm/PackageStats;
    .restart local v4    # "measurePath":Ljava/io/File;
    .restart local v6    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v10    # "installedUserIds":[I
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "label":Ljava/lang/String;
    .restart local v14    # "storage":Landroid/os/storage/StorageManager;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "userForMove":Landroid/os/UserHandle;
    .restart local v17    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v18    # "isInternalStorage":Z
    .restart local v19    # "allow3rdPartyOnInternal":Z
    .restart local v20    # "probe":Ljava/io/File;
    .restart local v21    # "isCurrentLocationExternal":Z
    .restart local v22    # "codeFile":Ljava/io/File;
    .restart local v23    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v24    # "packageAbiOverride":Ljava/lang/String;
    .restart local v25    # "appId":I
    .restart local v26    # "seinfo":Ljava/lang/String;
    .restart local v27    # "targetSdkVersion":I
    .restart local v29    # "fromCodePath":Ljava/lang/String;
    .restart local v30    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v32    # "installFlags":I
    .restart local v33    # "moveCompleteApp":Z
    .restart local v36    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/MovePackageHelper;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "volumeUuid":Ljava/lang/String;
    .restart local p3    # "moveId":I
    .restart local p4    # "callingUid":I
    .restart local p5    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v28, v7

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-object/from16 v21, v2

    move-object/from16 v23, v10

    move-object/from16 v16, v11

    move-object/from16 v24, v12

    move-object v2, v0

    goto/16 :goto_c

    .line 217
    :cond_e
    const/4 v3, -0x6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 224
    .end local v6    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    :cond_f
    invoke-virtual {v4}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v38

    .line 226
    .local v38, "startFreeBytes":J
    if-eqz v33, :cond_10

    .line 227
    iget-wide v5, v2, Landroid/content/pm/PackageStats;->codeSize:J

    move-object/from16 v35, v4

    .end local v4    # "measurePath":Ljava/io/File;
    .local v35, "measurePath":Ljava/io/File;
    iget-wide v3, v2, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v5, v3

    move-wide/from16 v41, v5

    .local v5, "sizeBytes":J
    goto :goto_9

    .line 229
    .end local v5    # "sizeBytes":J
    .end local v35    # "measurePath":Ljava/io/File;
    .restart local v4    # "measurePath":Ljava/io/File;
    :cond_10
    move-object/from16 v35, v4

    .end local v4    # "measurePath":Ljava/io/File;
    .restart local v35    # "measurePath":Ljava/io/File;
    iget-wide v5, v2, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v41, v5

    .line 232
    .local v41, "sizeBytes":J
    :goto_9
    move-object/from16 v5, v35

    .end local v35    # "measurePath":Ljava/io/File;
    .local v5, "measurePath":Ljava/io/File;
    invoke-virtual {v14, v5}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v3

    cmp-long v0, v41, v3

    if-gtz v0, :cond_13

    .line 239
    move-object/from16 v3, v36

    .end local v36    # "currentVolumeUuid":Ljava/lang/String;
    .local v3, "currentVolumeUuid":Ljava/lang/String;
    :try_start_4
    invoke-direct {v1, v3, v9, v10}, Lcom/android/server/pm/MovePackageHelper;->prepareUserStorageForMove(Ljava/lang/String;Ljava/lang/String;[I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 244
    nop

    .line 246
    iget-object v0, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    const/16 v4, 0xa

    invoke-virtual {v0, v8, v4}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 248
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 249
    .local v0, "installedLatch":Ljava/util/concurrent/CountDownLatch;
    move-object/from16 v36, v3

    move-object v3, v0

    .end local v0    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .local v3, "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v36    # "currentVolumeUuid":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/MovePackageHelper$1;

    move-object/from16 v35, v5

    move v4, v8

    move/from16 v6, v21

    const/16 v34, 0x0

    move-object/from16 v5, p1

    move-object/from16 v21, v2

    move-object/from16 v2, v37

    .end local v5    # "measurePath":Ljava/io/File;
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .local v2, "freezer":Lcom/android/server/pm/PackageFreezer;
    .local v6, "isCurrentLocationExternal":Z
    .local v21, "stats":Landroid/content/pm/PackageStats;
    .restart local v35    # "measurePath":Ljava/io/File;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/MovePackageHelper$1;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V

    move/from16 v31, v6

    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v6    # "isCurrentLocationExternal":Z
    .local v31, "isCurrentLocationExternal":Z
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    move-object/from16 v40, v0

    .line 287
    .local v40, "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    if-eqz v33, :cond_11

    .line 289
    new-instance v0, Ljava/lang/Thread;

    move-object v1, v0

    new-instance v0, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    move/from16 v8, p3

    move-object v9, v1

    move-object v2, v3

    move-object/from16 v28, v7

    move-object/from16 v5, v35

    move-wide/from16 v3, v38

    move-wide/from16 v6, v41

    move-object/from16 v1, p0

    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v35    # "measurePath":Ljava/io/File;
    .end local v38    # "startFreeBytes":J
    .end local v41    # "sizeBytes":J
    .local v2, "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .local v3, "startFreeBytes":J
    .restart local v5    # "measurePath":Ljava/io/File;
    .local v6, "sizeBytes":J
    .local v28, "extras":Landroid/os/Bundle;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JI)V

    move-object/from16 v39, v2

    move-wide/from16 v41, v3

    move-object/from16 v38, v5

    move-wide/from16 v43, v6

    .end local v2    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "startFreeBytes":J
    .end local v5    # "measurePath":Ljava/io/File;
    .end local v6    # "sizeBytes":J
    .local v38, "measurePath":Ljava/io/File;
    .local v39, "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .local v41, "startFreeBytes":J
    .local v43, "sizeBytes":J
    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 303
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 305
    new-instance v0, Lcom/android/server/pm/MoveInfo;

    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    move/from16 v1, p3

    move/from16 v5, v25

    move-object/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v8, v29

    move-object/from16 v2, v36

    .end local v25    # "appId":I
    .end local v26    # "seinfo":Ljava/lang/String;
    .end local v27    # "targetSdkVersion":I
    .end local v29    # "fromCodePath":Ljava/lang/String;
    .end local v36    # "currentVolumeUuid":Ljava/lang/String;
    .local v2, "currentVolumeUuid":Ljava/lang/String;
    .local v5, "appId":I
    .local v6, "seinfo":Ljava/lang/String;
    .local v7, "targetSdkVersion":I
    .local v8, "fromCodePath":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/MoveInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .end local v2    # "currentVolumeUuid":Ljava/lang/String;
    .end local v5    # "appId":I
    .end local v6    # "seinfo":Ljava/lang/String;
    .end local v7    # "targetSdkVersion":I
    .end local v8    # "fromCodePath":Ljava/lang/String;
    .restart local v25    # "appId":I
    .restart local v26    # "seinfo":Ljava/lang/String;
    .restart local v27    # "targetSdkVersion":I
    .restart local v29    # "fromCodePath":Ljava/lang/String;
    .restart local v36    # "currentVolumeUuid":Ljava/lang/String;
    move-object v2, v0

    .local v0, "move":Lcom/android/server/pm/MoveInfo;
    goto :goto_a

    .line 308
    .end local v0    # "move":Lcom/android/server/pm/MoveInfo;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v39    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v43    # "sizeBytes":J
    .local v3, "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .local v7, "extras":Landroid/os/Bundle;
    .restart local v35    # "measurePath":Ljava/io/File;
    .local v38, "startFreeBytes":J
    .local v41, "sizeBytes":J
    :cond_11
    move-object/from16 v9, p0

    move-object/from16 v28, v7

    move-wide/from16 v43, v41

    move-wide/from16 v41, v38

    move-object/from16 v39, v3

    move-object/from16 v38, v35

    .end local v3    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v35    # "measurePath":Ljava/io/File;
    .restart local v28    # "extras":Landroid/os/Bundle;
    .local v38, "measurePath":Ljava/io/File;
    .restart local v39    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .local v41, "startFreeBytes":J
    .restart local v43    # "sizeBytes":J
    const/4 v0, 0x0

    move-object v2, v0

    .line 311
    .local v2, "move":Lcom/android/server/pm/MoveInfo;
    :goto_a
    or-int/lit8 v4, v32, 0x2

    .line 313
    .end local v32    # "installFlags":I
    .local v4, "installFlags":I
    invoke-static/range {v22 .. v22}, Lcom/android/server/pm/OriginInfo;->fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object v1

    .line 314
    .local v1, "origin":Lcom/android/server/pm/OriginInfo;
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 315
    .local v0, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    new-instance v3, Ljava/io/File;

    iget-object v5, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v32

    .line 317
    .local v32, "ret":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/PackageLite;>;"
    invoke-interface/range {v32 .. v32}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v32 .. v32}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/pm/parsing/PackageLite;

    goto :goto_b

    :cond_12
    move-object/from16 v5, v34

    .line 318
    .local v5, "lite":Landroid/content/pm/parsing/PackageLite;
    :goto_b
    move-object v3, v0

    .end local v0    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .local v3, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    new-instance v0, Lcom/android/server/pm/InstallingSession;

    move-object v6, v10

    .end local v10    # "installedUserIds":[I
    .local v6, "installedUserIds":[I
    const/4 v10, 0x0

    move-object v7, v12

    .end local v12    # "label":Ljava/lang/String;
    .local v7, "label":Ljava/lang/String;
    iget-object v12, v9, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v8, v11

    move-object v11, v5

    .end local v5    # "lite":Landroid/content/pm/parsing/PackageLite;
    .local v8, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "lite":Landroid/content/pm/parsing/PackageLite;
    const/4 v5, 0x0

    move-object/from16 v9, v23

    move-object/from16 v23, v6

    move-object v6, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v8

    move-object v8, v9

    move-object/from16 v34, v3

    move-object/from16 v9, v24

    move-object/from16 v3, v40

    move-object/from16 v24, v7

    move-object/from16 v7, p2

    .end local v7    # "label":Ljava/lang/String;
    .end local v40    # "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    .local v3, "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    .local v6, "installSource":Lcom/android/server/pm/InstallSource;
    .local v8, "userForMove":Landroid/os/UserHandle;
    .local v9, "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .local v34, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    invoke-direct/range {v0 .. v12}, Lcom/android/server/pm/InstallingSession;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    move-object v5, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v3

    move-object v3, v7

    .line 322
    .end local v3    # "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    .local v0, "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    .local v1, "installSource":Lcom/android/server/pm/InstallSource;
    .local v5, "origin":Lcom/android/server/pm/OriginInfo;
    .local v6, "installingSession":Lcom/android/server/pm/InstallingSession;
    invoke-virtual {v6}, Lcom/android/server/pm/InstallingSession;->movePackage()V

    .line 323
    return-void

    .line 240
    .end local v0    # "installObserver":Landroid/content/pm/IPackageInstallObserver2;
    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v4    # "installFlags":I
    .end local v6    # "installingSession":Lcom/android/server/pm/InstallingSession;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v34    # "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    .end local v36    # "currentVolumeUuid":Ljava/lang/String;
    .end local v39    # "installedLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v43    # "sizeBytes":J
    .local v2, "stats":Landroid/content/pm/PackageStats;
    .local v3, "currentVolumeUuid":Ljava/lang/String;
    .local v5, "measurePath":Ljava/io/File;
    .local v7, "extras":Landroid/os/Bundle;
    .restart local v10    # "installedUserIds":[I
    .local v11, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "label":Ljava/lang/String;
    .local v16, "userForMove":Landroid/os/UserHandle;
    .local v21, "isCurrentLocationExternal":Z
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    .local v24, "packageAbiOverride":Ljava/lang/String;
    .local v32, "installFlags":I
    .local v38, "startFreeBytes":J
    .local v41, "sizeBytes":J
    :catch_0
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v28, v7

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-wide/from16 v43, v41

    move-object/from16 v21, v2

    move-object/from16 v23, v10

    move-object/from16 v16, v11

    move-object/from16 v24, v12

    move-wide/from16 v41, v38

    move-object/from16 v38, v5

    .line 241
    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .end local v3    # "currentVolumeUuid":Ljava/lang/String;
    .end local v5    # "measurePath":Ljava/io/File;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "installedUserIds":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "label":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "userForMove":Landroid/os/UserHandle;
    .restart local v9    # "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v21, "stats":Landroid/content/pm/PackageStats;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .restart local v28    # "extras":Landroid/os/Bundle;
    .restart local v31    # "isCurrentLocationExternal":Z
    .restart local v36    # "currentVolumeUuid":Ljava/lang/String;
    .local v38, "measurePath":Ljava/io/File;
    .local v41, "startFreeBytes":J
    .restart local v43    # "sizeBytes":J
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 242
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Failed to prepare user storage while moving app"

    const/4 v5, -0x6

    invoke-direct {v2, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 233
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v43    # "sizeBytes":J
    .restart local v2    # "stats":Landroid/content/pm/PackageStats;
    .restart local v5    # "measurePath":Ljava/io/File;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v10    # "installedUserIds":[I
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "label":Ljava/lang/String;
    .local v16, "userForMove":Landroid/os/UserHandle;
    .local v21, "isCurrentLocationExternal":Z
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    .local v24, "packageAbiOverride":Ljava/lang/String;
    .local v38, "startFreeBytes":J
    .local v41, "sizeBytes":J
    :cond_13
    move/from16 v31, v21

    move-wide/from16 v43, v41

    move-object/from16 v21, v2

    move-wide/from16 v41, v38

    move-object/from16 v38, v5

    const/4 v5, -0x6

    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .end local v5    # "measurePath":Ljava/io/File;
    .local v21, "stats":Landroid/content/pm/PackageStats;
    .restart local v31    # "isCurrentLocationExternal":Z
    .local v38, "measurePath":Ljava/io/File;
    .local v41, "startFreeBytes":J
    .restart local v43    # "sizeBytes":J
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 234
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Not enough free space to move"

    invoke-direct {v0, v5, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 209
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v38    # "measurePath":Ljava/io/File;
    .end local v41    # "startFreeBytes":J
    .end local v43    # "sizeBytes":J
    .restart local v2    # "stats":Landroid/content/pm/PackageStats;
    .local v4, "measurePath":Ljava/io/File;
    .local v6, "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .local v21, "isCurrentLocationExternal":Z
    :catchall_1
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v28, v7

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-object/from16 v21, v2

    move-object/from16 v23, v10

    move-object/from16 v16, v11

    move-object/from16 v24, v12

    move-object v2, v0

    .end local v2    # "stats":Landroid/content/pm/PackageStats;
    .end local v4    # "measurePath":Ljava/io/File;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "installedUserIds":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "label":Ljava/lang/String;
    .restart local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "userForMove":Landroid/os/UserHandle;
    .restart local v9    # "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v21, "stats":Landroid/content/pm/PackageStats;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .restart local v28    # "extras":Landroid/os/Bundle;
    .restart local v31    # "isCurrentLocationExternal":Z
    .restart local v38    # "measurePath":Ljava/io/File;
    :goto_c
    if-eqz v6, :cond_14

    :try_start_5
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    :goto_d
    throw v2

    .line 186
    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v6    # "installLock":Lcom/android/server/pm/PackageManagerTracedLock;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v33    # "moveCompleteApp":Z
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v38    # "measurePath":Ljava/io/File;
    .local v0, "volume":Landroid/os/storage/VolumeInfo;
    .local v2, "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v10    # "installedUserIds":[I
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "label":Ljava/lang/String;
    .local v16, "userForMove":Landroid/os/UserHandle;
    .local v21, "isCurrentLocationExternal":Z
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    .local v24, "packageAbiOverride":Ljava/lang/String;
    :cond_15
    move-object/from16 v37, v2

    move-object/from16 v28, v7

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-object/from16 v23, v10

    move-object/from16 v16, v11

    move-object/from16 v24, v12

    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "installedUserIds":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "label":Ljava/lang/String;
    .end local v21    # "isCurrentLocationExternal":Z
    .restart local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "userForMove":Landroid/os/UserHandle;
    .restart local v9    # "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .restart local v28    # "extras":Landroid/os/Bundle;
    .restart local v31    # "isCurrentLocationExternal":Z
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    goto :goto_e

    .line 185
    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v7    # "extras":Landroid/os/Bundle;
    .restart local v10    # "installedUserIds":[I
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "label":Ljava/lang/String;
    .local v16, "userForMove":Landroid/os/UserHandle;
    .restart local v21    # "isCurrentLocationExternal":Z
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    .local v24, "packageAbiOverride":Ljava/lang/String;
    :cond_16
    move-object/from16 v37, v2

    move-object/from16 v28, v7

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-object/from16 v23, v10

    move-object/from16 v16, v11

    move-object/from16 v24, v12

    .line 187
    .end local v2    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .end local v7    # "extras":Landroid/os/Bundle;
    .end local v10    # "installedUserIds":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "label":Ljava/lang/String;
    .end local v21    # "isCurrentLocationExternal":Z
    .restart local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "userForMove":Landroid/os/UserHandle;
    .restart local v9    # "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .restart local v28    # "extras":Landroid/os/Bundle;
    .restart local v31    # "isCurrentLocationExternal":Z
    .restart local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    :goto_e
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 188
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Move location not mounted private volume"

    const/4 v5, -0x6

    invoke-direct {v2, v5, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 165
    .end local v0    # "volume":Landroid/os/storage/VolumeInfo;
    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v28    # "extras":Landroid/os/Bundle;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v32    # "installFlags":I
    .end local v37    # "freezer":Lcom/android/server/pm/PackageFreezer;
    .restart local v10    # "installedUserIds":[I
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "label":Ljava/lang/String;
    .local v16, "userForMove":Landroid/os/UserHandle;
    .restart local v21    # "isCurrentLocationExternal":Z
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    .local v24, "packageAbiOverride":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-object/from16 v23, v10

    move-object/from16 v16, v11

    move-object/from16 v24, v12

    .end local v10    # "installedUserIds":[I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "label":Ljava/lang/String;
    .end local v21    # "isCurrentLocationExternal":Z
    .restart local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "userForMove":Landroid/os/UserHandle;
    .restart local v9    # "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .restart local v31    # "isCurrentLocationExternal":Z
    goto :goto_f

    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v36    # "currentVolumeUuid":Ljava/lang/String;
    .local v6, "currentVolumeUuid":Ljava/lang/String;
    .local v7, "label":Ljava/lang/String;
    .local v10, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "userForMove":Landroid/os/UserHandle;
    .restart local v21    # "isCurrentLocationExternal":Z
    .local v23, "installSource":Lcom/android/server/pm/InstallSource;
    .local v24, "packageAbiOverride":Ljava/lang/String;
    .local v30, "installedUserIds":[I
    :catchall_4
    move-exception v0

    move-object/from16 v34, v4

    move-object/from16 v36, v6

    move-object v3, v9

    move-object/from16 v8, v16

    move/from16 v31, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    move-object/from16 v23, v30

    move-object/from16 v24, v7

    move-object/from16 v30, v10

    move-object/from16 v16, v11

    .end local v6    # "currentVolumeUuid":Ljava/lang/String;
    .end local v7    # "label":Ljava/lang/String;
    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v21    # "isCurrentLocationExternal":Z
    .restart local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .restart local v8    # "userForMove":Landroid/os/UserHandle;
    .restart local v9    # "packageAbiOverride":Ljava/lang/String;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v23, "installedUserIds":[I
    .local v24, "label":Ljava/lang/String;
    .local v30, "snapshot":Lcom/android/server/pm/Computer;
    .restart local v31    # "isCurrentLocationExternal":Z
    .restart local v36    # "currentVolumeUuid":Ljava/lang/String;
    :goto_f
    :try_start_6
    monitor-exit v34
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_f

    .line 139
    .end local v1    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v8    # "userForMove":Landroid/os/UserHandle;
    .end local v9    # "packageAbiOverride":Ljava/lang/String;
    .end local v22    # "codeFile":Ljava/io/File;
    .end local v23    # "installedUserIds":[I
    .end local v24    # "label":Ljava/lang/String;
    .end local v25    # "appId":I
    .end local v26    # "seinfo":Ljava/lang/String;
    .end local v27    # "targetSdkVersion":I
    .end local v29    # "fromCodePath":Ljava/lang/String;
    .end local v30    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v31    # "isCurrentLocationExternal":Z
    .end local v36    # "currentVolumeUuid":Ljava/lang/String;
    .local v2, "installedUserIds":[I
    .restart local v6    # "currentVolumeUuid":Ljava/lang/String;
    .restart local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "userForMove":Landroid/os/UserHandle;
    :cond_17
    move-object/from16 v23, v2

    .end local v2    # "installedUserIds":[I
    .restart local v23    # "installedUserIds":[I
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x7

    const-string v2, "Failed to move already frozen package"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 129
    .end local v23    # "installedUserIds":[I
    .restart local v2    # "installedUserIds":[I
    :cond_18
    move-object/from16 v23, v2

    move-object v3, v9

    .end local v2    # "installedUserIds":[I
    .restart local v23    # "installedUserIds":[I
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package already moved to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x6

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 123
    .end local v6    # "currentVolumeUuid":Ljava/lang/String;
    .end local v23    # "installedUserIds":[I
    .restart local v2    # "installedUserIds":[I
    :cond_19
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Move only supported for modern cluster style installs"

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 109
    .end local v18    # "isInternalStorage":Z
    .end local v19    # "allow3rdPartyOnInternal":Z
    .end local v20    # "probe":Ljava/io/File;
    :cond_1a
    move-object/from16 v23, v2

    .end local v2    # "installedUserIds":[I
    .restart local v23    # "installedUserIds":[I
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x3

    const-string v2, "Cannot move system application"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 98
    .end local v16    # "userForMove":Landroid/os/UserHandle;
    .end local v17    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v23    # "installedUserIds":[I
    .restart local v2    # "installedUserIds":[I
    :cond_1b
    move-object/from16 v23, v2

    .end local v2    # "installedUserIds":[I
    .restart local v23    # "installedUserIds":[I
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Package is not installed for any user"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 89
    .end local v23    # "installedUserIds":[I
    :cond_1c
    move-object v3, v9

    move-object/from16 v30, v10

    move-object/from16 v16, v11

    .line 90
    .end local v10    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v30    # "snapshot":Lcom/android/server/pm/Computer;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Missing package"

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
