.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "SuspendPackageHelper.java"


# static fields
.field private static final SYSTEM_EXEMPT_FROM_SUSPENSION:Ljava/lang/String; = "system_exempt_from_suspension"


# instance fields
.field private final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;


# direct methods
.method public static synthetic $r8$lambda$5Ax2v5UvhsR67N-0JmdztLNWe2U(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$setPackagesSuspended$0(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dguAfIKYkbFhj4CajhMWmJ4hzqs(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .locals 0
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p3, "broadcastHelper"    # Lcom/android/server/pm/BroadcastHelper;
    .param p4, "protectedPackages"    # Lcom/android/server/pm/ProtectedPackages;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 73
    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 74
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 75
    return-void
.end method

.method private exemptFromSuspensionByAppOp(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 617
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "knownPackage"    # I
    .param p3, "userId"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 625
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "knownPackages":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 7
    .param p0, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 263
    invoke-interface {p0, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 264
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 265
    return-object v1

    .line 267
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 268
    .local v2, "pus":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v3, "allExtras":Landroid/os/Bundle;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 271
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    .line 272
    .local v5, "params":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 273
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 270
    .end local v5    # "params":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_3

    move-object v1, v3

    :cond_3
    return-object v1
.end method

.method private isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z
    .locals 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "targetUserId"    # I
    .param p3, "callingUid"    # I

    .line 631
    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    .line 632
    return v1

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 635
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, "ownerPackage":Ljava/lang/String;
    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 637
    const-wide/16 v4, 0x0

    move-object v2, p1

    move v6, p2

    move v7, p3

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "targetUserId":I
    .end local p3    # "callingUid":I
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    .local v6, "targetUserId":I
    .local v7, "callingUid":I
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p1

    if-ne v7, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    .line 640
    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v6    # "targetUserId":I
    .end local v7    # "callingUid":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "targetUserId":I
    .restart local p3    # "callingUid":I
    :cond_2
    return v0
.end method

.method private static synthetic lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 6
    .param p0, "pkgToSuspendingPkgsToCommit"    # Landroid/util/ArrayMap;
    .param p1, "targetUserId"    # I
    .param p2, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 332
    const/4 v0, 0x0

    .local v0, "mapIndex":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 333
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, "packageName":Ljava/lang/String;
    nop

    .line 335
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 336
    .local v2, "packagesToRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    nop

    .line 337
    invoke-virtual {p2, v1}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 338
    .local v3, "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    const/4 v4, 0x0

    .local v4, "setIndex":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 339
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserPackage;

    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 338
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 332
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packagesToRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    .end local v3    # "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    .end local v4    # "setIndex":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 342
    .end local v0    # "mapIndex":I
    return-void
.end method

.method private static synthetic lambda$setPackagesSuspended$0(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .locals 4
    .param p0, "changedPackagesList"    # Landroid/util/ArraySet;
    .param p1, "targetUserId"    # I
    .param p2, "suspended"    # Z
    .param p3, "suspendingPackage"    # Landroid/content/pm/UserPackage;
    .param p4, "newSuspendParams"    # Lcom/android/server/pm/pkg/SuspendParams;
    .param p5, "mutator"    # Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    .line 182
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 183
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 184
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p5, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v3

    .line 186
    invoke-interface {v3, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v3

    .line 187
    .local v3, "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    if-eqz p2, :cond_0

    .line 188
    invoke-interface {v3, p3, p4}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->putSuspendParams(Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    goto :goto_1

    .line 190
    :cond_0
    invoke-interface {v3, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Landroid/content/pm/UserPackage;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    .line 183
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "userState":Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 193
    .end local v1    # "index":I
    return-void
.end method


# virtual methods
.method canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .locals 21
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "callingUid"    # I

    .line 506
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    array-length v0, v3

    new-array v5, v0, [Z

    .line 507
    .local v5, "canSuspend":[Z
    nop

    .line 508
    move/from16 v6, p4

    invoke-direct {v1, v2, v4, v6}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v7

    .line 509
    .local v7, "isCallerOwner":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 511
    .local v8, "token":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    .line 512
    .local v0, "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    nop

    .line 513
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v10

    .line 514
    .local v10, "activeLauncherPackageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultDialer(I)Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "dialerPackageName":Ljava/lang/String;
    nop

    .line 516
    const/4 v12, 0x2

    invoke-direct {v1, v2, v12, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v12

    .line 517
    .local v12, "requiredInstallerPackage":Ljava/lang/String;
    nop

    .line 518
    const/4 v13, 0x3

    invoke-direct {v1, v2, v13, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v13

    .line 519
    .local v13, "requiredUninstallerPackage":Ljava/lang/String;
    nop

    .line 520
    const/4 v14, 0x4

    invoke-direct {v1, v2, v14, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v14

    .line 521
    .local v14, "requiredVerifierPackage":Ljava/lang/String;
    nop

    .line 522
    const/4 v15, 0x7

    invoke-direct {v1, v2, v15, v4}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 524
    .local v15, "requiredPermissionControllerPackage":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v17, "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    :goto_0
    move-object/from16 v16, v5

    .end local v5    # "canSuspend":[Z
    .local v16, "canSuspend":[Z
    :try_start_1
    array-length v5, v3

    if-ge v0, v5, :cond_e

    .line 525
    const/4 v5, 0x0

    aput-boolean v5, v16, v0

    .line 526
    aget-object v5, v3, v0

    .line 528
    .local v5, "packageName":Ljava/lang/String;
    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    iget-object v0, v1, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v19, v0

    const-string v0, "Cannot suspend package \""

    const-string v3, "PackageManager"

    if-eqz v19, :cond_0

    .line 529
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": has an active device admin"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    goto/16 :goto_2

    .line 610
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v10    # "activeLauncherPackageName":Ljava/lang/String;
    .end local v11    # "dialerPackageName":Ljava/lang/String;
    .end local v12    # "requiredInstallerPackage":Ljava/lang/String;
    .end local v13    # "requiredUninstallerPackage":Ljava/lang/String;
    .end local v14    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v15    # "requiredPermissionControllerPackage":Ljava/lang/String;
    .end local v17    # "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    .end local v18    # "i":I
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 533
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v10    # "activeLauncherPackageName":Ljava/lang/String;
    .restart local v11    # "dialerPackageName":Ljava/lang/String;
    .restart local v12    # "requiredInstallerPackage":Ljava/lang/String;
    .restart local v13    # "requiredUninstallerPackage":Ljava/lang/String;
    .restart local v14    # "requiredVerifierPackage":Ljava/lang/String;
    .restart local v15    # "requiredPermissionControllerPackage":Ljava/lang/String;
    .restart local v17    # "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    .restart local v18    # "i":I
    :cond_0
    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": contains the active launcher"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    goto/16 :goto_2

    .line 538
    :cond_1
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": required for package installation"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    goto/16 :goto_2

    .line 543
    :cond_2
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 544
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": required for package uninstallation"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    goto/16 :goto_2

    .line 548
    :cond_3
    invoke-virtual {v5, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": required for package verification"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    goto/16 :goto_2

    .line 553
    :cond_4
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 554
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": is the default dialer"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    goto/16 :goto_2

    .line 558
    :cond_5
    invoke-virtual {v5, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": required for permissions management"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    goto/16 :goto_2

    .line 563
    :cond_6
    iget-object v6, v1, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": protected package"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    goto/16 :goto_2

    .line 568
    :cond_7
    if-nez v7, :cond_8

    invoke-interface {v2, v4, v5}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 569
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": blocked by admin"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    goto/16 :goto_2

    .line 577
    :cond_8
    invoke-interface {v2, v5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 578
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v6, :cond_9

    const/16 v19, 0x0

    goto :goto_1

    :cond_9
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v19

    .line 579
    .local v19, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_1
    if-eqz v19, :cond_c

    .line 580
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v4, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 582
    .local v2, "uid":I
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "Cannot suspend package: "

    if-eqz v20, :cond_a

    .line 583
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " providing SDK library: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    goto :goto_2

    .line 591
    :cond_a
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " providing static shared library: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    goto :goto_2

    .line 597
    :cond_b
    invoke-direct {v1, v2, v5}, Lcom/android/server/pm/SuspendPackageHelper;->exemptFromSuspensionByAppOp(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": has OP_SYSTEM_EXEMPT_FROM_SUSPENSION set"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    goto :goto_2

    .line 603
    .end local v2    # "uid":I
    :cond_c
    const-string v0, "android"

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend the platform package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    goto :goto_2

    .line 607
    :cond_d
    const/4 v0, 0x1

    aput-boolean v0, v16, v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v19    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_2
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v5, v16

    .end local v18    # "i":I
    .restart local v0    # "i":I
    goto/16 :goto_0

    :cond_e
    move/from16 v18, v0

    .line 610
    .end local v0    # "i":I
    .end local v10    # "activeLauncherPackageName":Ljava/lang/String;
    .end local v11    # "dialerPackageName":Ljava/lang/String;
    .end local v12    # "requiredInstallerPackage":Ljava/lang/String;
    .end local v13    # "requiredUninstallerPackage":Ljava/lang/String;
    .end local v14    # "requiredVerifierPackage":Ljava/lang/String;
    .end local v15    # "requiredPermissionControllerPackage":Ljava/lang/String;
    .end local v17    # "defaultAppProvider":Lcom/android/server/pm/DefaultAppProvider;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    nop

    .line 612
    return-object v16

    .line 610
    .end local v16    # "canSuspend":[Z
    .local v5, "canSuspend":[Z
    :catchall_1
    move-exception v0

    move-object/from16 v16, v5

    .end local v5    # "canSuspend":[Z
    .restart local v16    # "canSuspend":[Z
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    throw v0
.end method

.method getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Landroid/content/pm/UserPackage;II)Landroid/content/pm/SuspendDialogInfo;
    .locals 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "suspendedPackage"    # Ljava/lang/String;
    .param p3, "suspendingPackage"    # Landroid/content/pm/UserPackage;
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 459
    invoke-interface {p1, p2, p5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 461
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 462
    return-object v1

    .line 465
    :cond_0
    invoke-interface {v0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 466
    .local v2, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_1

    .line 467
    return-object v1

    .line 470
    :cond_1
    nop

    .line 471
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    .line 472
    .local v3, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    if-nez v3, :cond_2

    .line 473
    return-object v1

    .line 476
    :cond_2
    invoke-virtual {v3, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/SuspendParams;

    .line 477
    .local v4, "suspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 367
    nop

    .line 368
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 369
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 370
    return-object v1

    .line 372
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v2, "allExtras":Landroid/os/Bundle;
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 374
    .local v3, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 376
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    .line 377
    .local v5, "params":Lcom/android/server/pm/pkg/SuspendParams;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 378
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 375
    .end local v5    # "params":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    if-lez v4, :cond_3

    move-object v1, v2

    :cond_3
    return-object v1
.end method

.method getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/content/pm/UserPackage;
    .locals 9
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "suspendedPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 412
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 414
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 415
    return-object v1

    .line 418
    :cond_0
    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 419
    .local v2, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v3

    if-nez v3, :cond_1

    .line 420
    return-object v1

    .line 423
    :cond_1
    const/4 v1, 0x0

    .line 424
    .local v1, "suspendingPackage":Landroid/content/pm/UserPackage;
    const/4 v3, 0x0

    .line 425
    .local v3, "suspendedBySystem":Landroid/content/pm/UserPackage;
    const/4 v4, 0x0

    .line 426
    .local v4, "qasPackage":Landroid/content/pm/UserPackage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 427
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Landroid/content/pm/UserPackage;

    .line 428
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/SuspendParams;

    .line 429
    .local v6, "suspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    iget-object v7, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    const-string v8, "android"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 430
    move-object v3, v1

    .line 432
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/pm/pkg/SuspendParams;->isQuarantined()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v4, :cond_3

    .line 433
    move-object v4, v1

    .line 426
    .end local v6    # "suspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 437
    .end local v5    # "i":I
    if-eqz v4, :cond_5

    .line 438
    return-object v4

    .line 440
    :cond_5
    if-eqz v3, :cond_6

    .line 441
    return-object v3

    .line 443
    :cond_6
    return-object v1
.end method

.method getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;
    .locals 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "callingUid"    # I

    .line 227
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend due to restrictions on user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object p2

    .line 231
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 232
    .local v0, "unactionablePackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v2

    .line 234
    .local v2, "canSuspend":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 235
    aget-boolean v4, v2, v3

    if-nez v4, :cond_1

    .line 236
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 237
    goto :goto_1

    .line 239
    :cond_1
    aget-object v4, p2, v3

    .line 240
    invoke-interface {p1, v4, p4, p3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 242
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_2

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find package setting for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    aget-object v5, p2, v3

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v4    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 247
    .end local v3    # "i":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 395
    nop

    .line 396
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 397
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    nop

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 397
    :goto_0
    return v1
.end method

.method isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 489
    .local v0, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    .line 490
    const-string/jumbo v1, "no_control_apps"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    nop

    if-nez v1, :cond_0

    .line 491
    const-string/jumbo v1, "no_uninstall_apps"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 489
    :goto_1
    return v1
.end method

.method removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .locals 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packagesToChange"    # [Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/UserPackage;",
            ">;I)V"
        }
    .end annotation

    .line 294
    .local p3, "suspendingPackagePredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/UserPackage;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v8, p4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 295
    .local v9, "unsuspendedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    move-object v10, v2

    .line 296
    .local v10, "unsuspendedUids":Landroid/util/IntArray;
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v2

    .line 298
    .local v11, "pkgToSuspendingPkgsToCommit":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;>;"
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_7

    aget-object v6, v1, v4

    .line 299
    .local v6, "packageName":Ljava/lang/String;
    nop

    .line 300
    move-object/from16 v12, p1

    invoke-interface {v12, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 301
    .local v7, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v7, :cond_0

    .line 302
    goto :goto_1

    :cond_0
    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 303
    .local v5, "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :goto_1
    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v13

    if-nez v13, :cond_1

    .line 304
    move-object/from16 v7, p3

    goto :goto_4

    .line 307
    :cond_1
    nop

    .line 308
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v13

    .line 309
    .local v13, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    const/4 v14, 0x0

    .line 310
    .local v14, "countRemoved":I
    const/4 v15, 0x0

    .local v15, "index":I
    :goto_2
    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    if-ge v15, v3, :cond_4

    .line 311
    invoke-virtual {v13, v15}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserPackage;

    .line 312
    .local v3, "suspendingPackage":Landroid/content/pm/UserPackage;
    move-object/from16 v16, v7

    move-object/from16 v7, p3

    .end local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 313
    nop

    .line 314
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArraySet;

    .line 315
    .local v17, "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    if-nez v17, :cond_2

    .line 316
    new-instance v18, Landroid/util/ArraySet;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v17, v18

    .line 317
    move-object/from16 v1, v17

    .end local v17    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    .local v1, "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    invoke-virtual {v11, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 315
    .end local v1    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    .restart local v17    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    :cond_2
    move-object/from16 v1, v17

    .line 319
    .end local v17    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    .restart local v1    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    :goto_3
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v14, v14, 0x1

    .line 310
    .end local v1    # "suspendingPkgsToCommit":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/UserPackage;>;"
    .end local v3    # "suspendingPackage":Landroid/content/pm/UserPackage;
    :cond_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    move-object/from16 v7, v16

    goto :goto_2

    .end local v16    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_4
    move-object/from16 v16, v7

    move-object/from16 v7, p3

    .line 325
    .end local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "index":I
    .restart local v16    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {v13}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ne v14, v1, :cond_6

    .line 326
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v8, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    .line 303
    .end local v13    # "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .end local v14    # "countRemoved":I
    .end local v16    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_5
    move-object/from16 v16, v7

    move-object/from16 v7, p3

    .line 298
    .end local v5    # "packageUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 331
    :cond_7
    move-object/from16 v12, p1

    move-object/from16 v7, p3

    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v11, v8}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;I)V

    invoke-virtual {v1, v5, v2}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 344
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 345
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 346
    nop

    .line 347
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 346
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    .line 348
    .local v5, "packageArray":[Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v5, v2, v8}, Lcom/android/server/pm/BroadcastHelper;->sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V

    .line 350
    iget-object v2, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 352
    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    .line 350
    const-string v4, "android.intent.action.PACKAGES_UNSUSPENDED"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 354
    .end local v5    # "packageArray":[Ljava/lang/String;
    :cond_8
    return-void
.end method

.method setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;IIZ)[Ljava/lang/String;
    .locals 24
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z
    .param p4, "appExtras"    # Landroid/os/PersistableBundle;
    .param p5, "launcherExtras"    # Landroid/os/PersistableBundle;
    .param p6, "dialogInfo"    # Landroid/content/pm/SuspendDialogInfo;
    .param p7, "suspendingPackage"    # Landroid/content/pm/UserPackage;
    .param p8, "targetUserId"    # I
    .param p9, "callingUid"    # I
    .param p10, "quarantined"    # Z

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    return-object v2

    .line 105
    :cond_0
    const-string v3, "PackageManager"

    if-eqz p3, :cond_1

    if-nez v11, :cond_1

    .line 106
    invoke-virtual {v0, v1, v9, v10}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot suspend due to restrictions on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v2

    .line 111
    :cond_1
    if-eqz p3, :cond_2

    .line 112
    new-instance v4, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct {v4, v15, v13, v14, v11}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    move-object v8, v4

    goto :goto_0

    :cond_2
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const/4 v8, 0x0

    .line 114
    .local v8, "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v4, "unmodifiablePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v5, "notifyPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/IntArray;

    array-length v12, v2

    invoke-direct {v6, v12}, Landroid/util/IntArray;-><init>(I)V

    move-object v12, v6

    .line 118
    .local v12, "notifyUids":Landroid/util/IntArray;
    new-instance v6, Landroid/util/ArraySet;

    array-length v11, v2

    invoke-direct {v6, v11}, Landroid/util/ArraySet;-><init>(I)V

    .line 119
    .local v6, "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v11, Landroid/util/IntArray;

    array-length v13, v2

    invoke-direct {v11, v13}, Landroid/util/IntArray;-><init>(I)V

    .line 121
    .local v11, "changedUids":Landroid/util/IntArray;
    if-eqz p3, :cond_3

    .line 122
    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v13

    goto :goto_1

    .line 123
    :cond_3
    const/4 v13, 0x0

    :goto_1
    nop

    .line 124
    .local v13, "canSuspend":[Z
    const/16 v16, 0x0

    move-object/from16 v17, v13

    move/from16 v13, v16

    .local v13, "i":I
    .local v17, "canSuspend":[Z
    :goto_2
    array-length v14, v2

    if-ge v13, v14, :cond_11

    .line 125
    aget-object v14, p2, v13

    .line 126
    .local v14, "packageName":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v7, Landroid/content/pm/UserPackage;->userId:I

    if-ne v2, v9, :cond_5

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v13

    .end local v13    # "i":I
    .local v18, "i":I
    const-string v13, "Suspending package: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " trying to "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    if-eqz p3, :cond_4

    const-string v13, ""

    goto :goto_3

    :cond_4
    const-string/jumbo v13, "un"

    :goto_3
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "suspend itself. Ignoring"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v22, v8

    goto/16 :goto_7

    .line 126
    .end local v18    # "i":I
    .restart local v13    # "i":I
    :cond_5
    move/from16 v18, v13

    .line 133
    .end local v13    # "i":I
    .restart local v18    # "i":I
    invoke-interface {v1, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 134
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v13, ". Skipping suspending/un-suspending."

    if-eqz v2, :cond_10

    .line 135
    invoke-interface {v2, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 136
    invoke-interface {v1, v2, v10, v9}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v22, v8

    goto/16 :goto_6

    .line 142
    :cond_6
    if-eqz v17, :cond_7

    aget-boolean v19, v17, v18

    if-nez v19, :cond_7

    .line 143
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    move-object/from16 v22, v8

    goto/16 :goto_7

    .line 147
    :cond_7
    nop

    .line 148
    invoke-interface {v2, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v1

    .line 149
    .local v1, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    if-nez v1, :cond_8

    .line 150
    const/16 v19, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v7}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/pkg/SuspendParams;

    :goto_4
    move-object/from16 v20, v19

    .line 151
    .local v20, "oldSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    move-object/from16 v19, v2

    move-object/from16 v2, v20

    .end local v20    # "oldSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v2, "oldSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v19, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {v2, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    move-object/from16 v21, v2

    .end local v2    # "oldSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v21, "oldSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    const/4 v2, 0x1

    xor-int/lit8 v20, v20, 0x1

    .line 153
    .local v20, "changed":Z
    if-eqz p3, :cond_9

    if-nez v20, :cond_9

    .line 155
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    nop

    .line 157
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 156
    invoke-virtual {v12, v2}, Landroid/util/IntArray;->add(I)V

    .line 158
    move-object/from16 v22, v8

    goto/16 :goto_7

    .line 163
    :cond_9
    if-nez p3, :cond_a

    .line 164
    move-object/from16 v22, v8

    .end local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v22, "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v8

    if-ne v8, v2, :cond_b

    .line 165
    invoke-virtual {v1, v7}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    .line 163
    .end local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_a
    move-object/from16 v22, v8

    .line 165
    .end local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_b
    const/4 v2, 0x0

    :goto_5
    nop

    .line 166
    .local v2, "packageUnsuspended":Z
    if-nez p3, :cond_c

    if-eqz v2, :cond_d

    .line 168
    :cond_c
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v9, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/util/IntArray;->add(I)V

    .line 172
    :cond_d
    if-eqz v20, :cond_e

    .line 173
    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v9, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/util/IntArray;->add(I)V

    goto :goto_7

    .line 176
    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v1

    .end local v1    # "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .local v23, "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    const-string v1, "No change is needed for package: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 135
    .end local v19    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v20    # "changed":Z
    .end local v21    # "oldSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .end local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .end local v23    # "suspendParamsMap":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Landroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;>;"
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v22, v8

    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v19    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    goto :goto_6

    .line 134
    .end local v19    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_10
    move-object/from16 v19, v2

    move-object/from16 v22, v8

    .line 137
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v19    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package setting for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    nop

    .line 124
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v19    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_7
    add-int/lit8 v13, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p5

    move-object/from16 v8, v22

    .end local v18    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_2

    .end local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    :cond_11
    move-object/from16 v22, v8

    move/from16 v18, v13

    .line 181
    .end local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .end local v13    # "i":I
    .restart local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v3, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    move-object v2, v4

    move-object v13, v5

    move-object v4, v6

    move v5, v9

    move/from16 v6, p3

    .end local v5    # "notifyPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v2, "unmodifiablePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .local v13, "notifyPackagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)V

    move-object v5, v3

    move v14, v6

    const/4 v3, 0x0

    .end local v8    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    .restart local v22    # "newSuspendParams":Lcom/android/server/pm/pkg/SuspendParams;
    invoke-virtual {v1, v3, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 195
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 196
    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    .line 197
    invoke-interface {v13, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/String;

    .line 198
    .local v6, "changedPackages":[Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v4

    .end local v4    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v5, "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v4, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 199
    if-eqz v14, :cond_12

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_8

    .line 200
    :cond_12
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 201
    :goto_8
    invoke-virtual {v12}, Landroid/util/IntArray;->toArray()[I

    move-result-object v7

    .line 198
    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    move/from16 v9, p8

    move/from16 v8, p10

    .end local v5    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 202
    iget-object v3, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v4, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    invoke-virtual {v3, v5, v6, v14, v9}, Lcom/android/server/pm/BroadcastHelper;->sendMyPackageSuspendedOrUnsuspended(Ljava/util/function/Supplier;[Ljava/lang/String;ZI)V

    .line 204
    iget-object v3, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v9}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    goto :goto_9

    .line 195
    .end local v1    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "changedPackages":[Ljava/lang/String;
    .restart local v4    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_13
    move/from16 v9, p8

    move-object v1, v4

    .line 207
    .end local v4    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1    # "changedPackagesList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_9
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 208
    iget-object v3, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    iget-object v4, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v11}, Landroid/util/IntArray;->toArray()[I

    move-result-object v7

    .line 208
    move-object v4, v5

    const-string v5, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    move/from16 v8, p10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 213
    :cond_14
    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method
