.class final Lcom/android/server/pm/PackageMetrics;
.super Ljava/lang/Object;
.source "PackageMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageMetrics$InstallStep;,
        Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;,
        Lcom/android/server/pm/PackageMetrics$StepInt;
    }
.end annotation


# static fields
.field public static final STEP_COMMIT:I = 0x4

.field public static final STEP_DEXOPT:I = 0x5

.field public static final STEP_FREEZE_INSTALL:I = 0x6

.field public static final STEP_PREPARE:I = 0x1

.field public static final STEP_RECONCILE:I = 0x3

.field public static final STEP_RESTORE:I = 0x7

.field public static final STEP_SCAN:I = 0x2

.field public static final STEP_WAIT_DEXOPT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PackageMetrics"


# instance fields
.field private final mInstallRequest:Lcom/android/server/pm/InstallRequest;

.field private final mInstallStartTimestampMillis:J

.field private final mInstallSteps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageMetrics$InstallStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallRequest;)V
    .locals 2
    .param p1, "installRequest"    # Lcom/android/server/pm/InstallRequest;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    .line 100
    iput-object p1, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 101
    return-void
.end method

.method private getApksSize(Ljava/io/File;)J
    .locals 3
    .param p1, "apkDir"    # Ljava/io/File;

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 200
    .local v0, "apksSize":Ljava/util/concurrent/atomic/AtomicLong;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageMetrics$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/PackageMetrics$1;-><init>(Lcom/android/server/pm/PackageMetrics;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 223
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    return-wide v1
.end method

.method private getInstallStepDurations()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[I[J>;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "steps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "durations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageMetrics$InstallStep;->getDurationMillis()J

    move-result-wide v3

    .line 248
    .local v3, "duration":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    .line 249
    iget-object v5, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v5, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageMetrics$InstallStep;->getDurationMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v3    # "duration":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 253
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 254
    .local v2, "stepsArray":[I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [J

    .line 255
    .local v3, "durationsArray":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 256
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    .line 257
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 255
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 259
    .end local v4    # "i":I
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static getUid(II)I
    .locals 1
    .param p0, "appId"    # I
    .param p1, "userId"    # I

    .line 190
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 191
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 193
    :cond_0
    invoke-static {p1, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method static onDependencyInstallationFailure(ILjava/lang/String;IILandroid/content/pm/PackageInstaller$SessionParams;I)V
    .locals 34
    .param p0, "sessionId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "installerPackageUid"    # I
    .param p4, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p5, "missingDependenciesCount"    # I

    .line 344
    move-object/from16 v0, p4

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    const/4 v1, 0x0

    .line 348
    .local v1, "dataLoaderType":I
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v1

    move/from16 v23, v1

    goto :goto_0

    .line 348
    :cond_1
    move/from16 v23, v1

    .line 352
    .end local v1    # "dataLoaderType":I
    .local v23, "dataLoaderType":I
    :goto_0
    iget v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v2, v2, 0x800

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    move/from16 v25, v4

    goto :goto_1

    :cond_2
    move/from16 v25, v3

    :goto_1
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move/from16 v28, v4

    goto :goto_2

    :cond_3
    move/from16 v28, v3

    :goto_2
    iget-boolean v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const/16 v32, 0x1

    move/from16 v31, v2

    const/16 v2, 0x20c

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v10, p2

    move/from16 v21, p3

    move/from16 v33, p5

    move/from16 v24, v1

    invoke-static/range {v2 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    .line 383
    return-void
.end method

.method public static onUninstallSucceeded(Lcom/android/server/pm/PackageRemovedInfo;II)V
    .locals 11
    .param p0, "info"    # Lcom/android/server/pm/PackageRemovedInfo;
    .param p1, "deleteFlags"    # I
    .param p2, "userId"    # I

    .line 285
    iget-boolean v0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    if-eqz v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    nop

    .line 290
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 291
    .local v0, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    if-nez v0, :cond_1

    .line 293
    return-void

    .line 295
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 296
    .local v3, "removedUsers":[I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v4

    .line 297
    .local v4, "removedUserTypes":[I
    iget-object v5, p0, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 298
    .local v5, "originalUsers":[I
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v6

    .line 299
    .local v6, "originalUserTypes":[I
    iget v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 300
    invoke-static {v1, p2}, Lcom/android/server/pm/PackageMetrics;->getUid(II)I

    move-result v2

    iget-boolean v9, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iget-boolean v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 299
    xor-int/lit8 v10, v1, 0x1

    const/16 v1, 0x22a

    const/4 v8, 0x1

    move v7, p1

    .end local p1    # "deleteFlags":I
    .local v7, "deleteFlags":I
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(II[I[I[I[IIIZZ)V

    .line 303
    iget-object p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 304
    .local p1, "packageName":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 305
    .local v1, "versionCode":J
    invoke-static {p1, v1, v2, p2}, Lcom/android/server/pm/PackageMetrics;->reportUninstallationToSecurityLog(Ljava/lang/String;JI)V

    .line 306
    return-void
.end method

.method public static onVerificationFailed(Lcom/android/server/pm/VerifyingSession;)V
    .locals 32
    .param p0, "verifyingSession"    # Lcom/android/server/pm/VerifyingSession;

    .line 309
    nop

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getSessionId()I

    move-result v1

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getRet()I

    move-result v8

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getInstallerPackageUid()I

    move-result v19

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getDataLoaderType()I

    move-result v21

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->getUserActionRequiredType()I

    move-result v22

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isInstant()Z

    move-result v23

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isInherit()Z

    move-result v26

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/VerifyingSession;->isStaged()Z

    move-result v29

    .line 309
    const/16 v0, 0x20c

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-static/range {v0 .. v31}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    .line 339
    return-void
.end method

.method private static reportComponentStateChanged(IIIZZI)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "componentOldState"    # I
    .param p2, "componentNewState"    # I
    .param p3, "isLauncher"    # Z
    .param p4, "isForWholeApp"    # Z
    .param p5, "callingUid"    # I

    .line 496
    const/16 v0, 0x35f

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p0    # "uid":I
    .end local p1    # "componentOldState":I
    .end local p2    # "componentNewState":I
    .end local p3    # "isLauncher":Z
    .end local p4    # "isForWholeApp":Z
    .end local p5    # "callingUid":I
    .local v1, "uid":I
    .local v2, "componentOldState":I
    .local v3, "componentNewState":I
    .local v4, "isLauncher":Z
    .local v5, "isForWholeApp":Z
    .local v6, "callingUid":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZI)V

    .line 498
    return-void
.end method

.method public static reportComponentStateChanged(Lcom/android/server/pm/Computer;Ljava/util/List;I)V
    .locals 9
    .param p0, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;",
            ">;I)V"
        }
    .end annotation

    .line 475
    .local p1, "componentStateMetricsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;>;"
    nop

    .line 478
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 482
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 483
    .local v0, "metricsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 484
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;

    .line 485
    .local v2, "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    iget v3, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mUid:I

    iget v4, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentOldState:I

    iget v5, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mComponentNewState:I

    .line 488
    invoke-virtual {v2, p0, p2}, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->isLauncherActivity(Lcom/android/server/pm/Computer;I)Z

    move-result v6

    iget-boolean v7, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mIsForWholeApp:Z

    iget v8, v2, Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;->mCallingUid:I

    .line 485
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/PackageMetrics;->reportComponentStateChanged(IIIZZI)V

    .line 483
    .end local v2    # "componentStateMetrics":Lcom/android/server/pm/PackageMetrics$ComponentStateMetrics;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 492
    .end local v1    # "i":I
    return-void

    .line 479
    .end local v0    # "metricsSize":I
    :goto_1
    const-string v0, "PackageMetrics"

    const-string v1, "Fail to report component state due to metrics is empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method private reportInstallationStats(Z)V
    .locals 38
    .param p1, "success"    # Z

    .line 113
    move-object/from16 v0, p0

    .line 114
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 115
    .local v1, "userManagerInternal":Lcom/android/server/pm/UserManagerInternal;
    if-nez v1, :cond_0

    .line 117
    return-void

    .line 121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallStartTimestampMillis:J

    sub-long v22, v2, v4

    .line 123
    .local v22, "installDurationMillis":J
    invoke-direct {v0}, Lcom/android/server/pm/PackageMetrics;->getInstallStepDurations()Landroid/util/Pair;

    move-result-object v2

    .line 124
    .local v2, "stepDurations":Landroid/util/Pair;, "Landroid/util/Pair<[I[J>;"
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getNewUsers()[I

    move-result-object v10

    .line 125
    .local v10, "newUsers":[I
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginUsers()[I

    move-result-object v12

    .line 128
    .local v12, "originalUsers":[I
    if-nez p1, :cond_1

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallFromAdb()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_0

    .line 131
    :cond_2
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    .local v3, "packageName":Ljava/lang/String;
    goto :goto_1

    .line 129
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    move-object v8, v3

    .line 134
    .local v8, "packageName":Ljava/lang/String;
    :goto_1
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallerPackageUid()I

    move-result v25

    .line 136
    .local v25, "installerPackageUid":I
    const-wide/16 v3, 0x0

    .local v3, "versionCode":J
    const-wide/16 v5, 0x0

    .line 137
    .local v5, "apksSize":J
    if-eqz p1, :cond_5

    .line 138
    iget-object v7, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->isInstallForUsers()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 141
    iget-object v7, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getPkg()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    .line 142
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v7, :cond_3

    .line 143
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v3

    .line 144
    new-instance v9, Ljava/io/File;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v9}, Lcom/android/server/pm/PackageMetrics;->getApksSize(Ljava/io/File;)J

    move-result-wide v5

    .line 146
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    goto :goto_2

    .line 147
    :cond_4
    iget-object v7, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 148
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_5

    .line 149
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    .line 150
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/server/pm/PackageMetrics;->getApksSize(Ljava/io/File;)J

    move-result-wide v5

    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    goto :goto_2

    .line 156
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5
    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    .end local v3    # "versionCode":J
    .end local v5    # "apksSize":J
    .local v16, "apksSize":J
    .local v18, "versionCode":J
    :goto_2
    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 157
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getSessionId()I

    move-result v7

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 159
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getAppId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageMetrics;->getUid(II)I

    move-result v9

    .line 161
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v11

    .line 163
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    move-result-object v13

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 164
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v14

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 165
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInternalErrorCode()I

    move-result v15

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v3

    check-cast v20, [I

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v3

    check-cast v21, [J

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 171
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v24

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 174
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDataLoaderType()I

    move-result v27

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 175
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRequireUserAction()I

    move-result v28

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 176
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstantInstall()Z

    move-result v29

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 177
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v30

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 178
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v31

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 179
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallInherit()Z

    move-result v32

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 180
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallForUsers()Z

    move-result v33

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 181
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v34

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 184
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isDependencyInstallerEnabled()Z

    move-result v36

    iget-object v3, v0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    .line 185
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getMissingSharedLibraryCount()I

    move-result v37

    .line 156
    const/16 v6, 0x20c

    const/16 v26, -0x1

    const/16 v35, 0x0

    invoke-static/range {v6 .. v37}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I[I[I[I[IIIJJ[I[JJIIIIIZZZZZZZZI)V

    .line 187
    return-void
.end method

.method private reportInstallationToSecurityLog(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 386
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 393
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 394
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_1

    .line 395
    return-void

    .line 397
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v2

    .line 399
    .local v2, "versionCode":J
    iget-object v4, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v4}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v4

    if-nez v4, :cond_2

    .line 400
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 400
    const v5, 0x33479

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 406
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "versionCode":J
    :catch_0
    move-exception v0

    goto :goto_1

    .line 403
    .restart local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "versionCode":J
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 403
    const v5, 0x3347a

    invoke-static {v5, v4}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "versionCode":J
    :goto_0
    nop

    .line 409
    :goto_1
    return-void
.end method

.method private static reportUninstallationToSecurityLog(Ljava/lang/String;JI)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionCode"    # J
    .param p3, "userId"    # I

    .line 413
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 417
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 416
    const v1, 0x3347b

    invoke-static {v1, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 418
    return-void
.end method


# virtual methods
.method public onInstallFailed()V
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    .line 110
    return-void
.end method

.method public onInstallSucceed()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallRequest:Lcom/android/server/pm/InstallRequest;

    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationToSecurityLog(I)V

    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageMetrics;->reportInstallationStats(Z)V

    .line 106
    return-void
.end method

.method public onStepFinished(I)V
    .locals 1
    .param p1, "step"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageMetrics$InstallStep;

    .line 232
    .local v0, "installStep":Lcom/android/server/pm/PackageMetrics$InstallStep;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/android/server/pm/PackageMetrics$InstallStep;->finish()V

    .line 236
    :cond_0
    return-void
.end method

.method public onStepFinished(IJ)V
    .locals 2
    .param p1, "step"    # I
    .param p2, "durationMillis"    # J

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    return-void
.end method

.method public onStepStarted(I)V
    .locals 2
    .param p1, "step"    # I

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/PackageMetrics;->mInstallSteps:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/pm/PackageMetrics$InstallStep;

    invoke-direct {v1}, Lcom/android/server/pm/PackageMetrics$InstallStep;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    return-void
.end method
