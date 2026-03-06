.class Lcom/android/server/rollback/Rollback;
.super Ljava/lang/Object;
.source "Rollback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/Rollback$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_DELETED:I = 0x4

.field static final ROLLBACK_STATE_ENABLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field public final info:Landroid/content/rollback/RollbackInfo;

.field private final mBackupDir:Ljava/io/File;

.field private final mExtensionVersions:Landroid/util/SparseIntArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallerPackageName:Ljava/lang/String;

.field private final mOriginalSessionId:I

.field private final mPackageSessionIds:[I

.field private mRestoreUserDataInProgress:Z

.field private mRollbackLifetimeMillis:J

.field private mState:I

.field private mStateDescription:Ljava/lang/String;

.field private mTimestamp:Ljava/time/Instant;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$EV_4fww3LkkzUz86CfOhisXHCM0(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->lambda$commit$0(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4pSxIl5T0I_NQwl-0NMTqjomsM(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->lambda$commit$1(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(ILjava/io/File;IZILjava/lang/String;[ILandroid/util/SparseIntArray;)V
    .locals 10
    .param p1, "rollbackId"    # I
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "originalSessionId"    # I
    .param p4, "isStaged"    # Z
    .param p5, "userId"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "packageSessionIds"    # [I
    .param p8, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 216
    new-instance v3, Landroid/content/rollback/RollbackInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, -0x1

    const/4 v9, 0x0

    move v4, p1

    move v6, p4

    invoke-direct/range {v3 .. v9}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;II)V

    iput-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 222
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 223
    move-object/from16 v1, p6

    iput-object v1, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 225
    iput p3, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 226
    iput v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 227
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 228
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    :goto_0
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 229
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 230
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 231
    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IILjava/lang/String;ZILjava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "info"    # Landroid/content/rollback/RollbackInfo;
    .param p2, "backupDir"    # Ljava/io/File;
    .param p3, "timestamp"    # Ljava/time/Instant;
    .param p4, "originalSessionId"    # I
    .param p5, "state"    # I
    .param p6, "stateDescription"    # Ljava/lang/String;
    .param p7, "restoreUserDataInProgress"    # Z
    .param p8, "userId"    # I
    .param p9, "installerPackageName"    # Ljava/lang/String;
    .param p10, "extensionVersions"    # Landroid/util/SparseIntArray;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 181
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 239
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 240
    iput p8, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 241
    iput-object p9, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 243
    iput-object p3, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 244
    iput p4, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    .line 245
    iput p5, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 246
    iput-object p6, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 247
    iput-boolean p7, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 248
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p10, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 253
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    .line 254
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    .line 255
    return-void
.end method

.method private static addAll(Ljava/util/List;[I)V
    .locals 2
    .param p1, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 453
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 454
    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 456
    .end local v0    # "i":I
    return-void
.end method

.method private assertInWorkerThread()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 259
    return-void
.end method

.method private containsApex()Z
    .locals 3

    .line 950
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 951
    .local v1, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    const/4 v0, 0x1

    return v0

    .line 951
    :cond_0
    nop

    .line 954
    .end local v1    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 955
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z
    .locals 8
    .param p0, "rollbackExtVers"    # Landroid/util/SparseIntArray;
    .param p1, "pmi"    # Landroid/content/pm/PackageManagerInternal;

    .line 913
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 914
    return v1

    .line 916
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList()Lcom/android/server/pm/PackageList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 917
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 918
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    .line 919
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v4

    .line 920
    .local v4, "minExtVers":Landroid/util/SparseIntArray;
    if-nez v4, :cond_1

    .line 921
    goto :goto_2

    .line 923
    :cond_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 924
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 925
    .local v6, "minExt":I
    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ge v7, v6, :cond_2

    .line 926
    const/4 v1, 0x1

    return v1

    .line 925
    :cond_2
    nop

    .line 923
    .end local v6    # "minExt":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 917
    .end local v3    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v4    # "minExtVers":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 930
    .end local v2    # "i":I
    return v1
.end method

.method private synthetic lambda$commit$0(Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V
    .locals 10
    .param p1, "result"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "causePackages"    # Ljava/util/List;

    .line 634
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 635
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 637
    .local v2, "status":I
    const/4 v0, 0x0

    if-eqz v2, :cond_0

    .line 645
    const-string v3, "Commit failed"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 646
    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 647
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rollback downgrade install failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    const/4 v1, 0x3

    invoke-static {p2, p3, v1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 653
    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v3

    if-nez v3, :cond_1

    .line 659
    iput-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 662
    :cond_1
    iget-object v3, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 663
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/Rollback;)V

    .line 664
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 668
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v7, v3

    .line 669
    .local v7, "fillIn":Landroid/content/Intent;
    const-string v3, "android.content.rollback.extra.STATUS"

    invoke-virtual {v7, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 672
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    move-object v4, p3

    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .local v4, "statusReceiver":Landroid/content/IntentSender;
    .local v5, "context":Landroid/content/Context;
    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    .end local v7    # "fillIn":Landroid/content/Intent;
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v4    # "statusReceiver":Landroid/content/IntentSender;
    .end local v5    # "context":Landroid/content/Context;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "statusReceiver":Landroid/content/IntentSender;
    :catch_1
    move-exception v0

    move-object v5, p2

    move-object v4, p3

    .line 677
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v4    # "statusReceiver":Landroid/content/IntentSender;
    .restart local v5    # "context":Landroid/content/Context;
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local p2, "broadcast":Landroid/content/Intent;
    const-class p3, Landroid/os/UserManager;

    invoke-virtual {v5, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    .line 680
    .local p3, "userManager":Landroid/os/UserManager;
    invoke-virtual {p3, v1}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 681
    .local v1, "user":Landroid/os/UserHandle;
    const-string v3, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v5, p2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 684
    .end local v1    # "user":Landroid/os/UserHandle;
    goto :goto_1

    .line 685
    :cond_2
    return-void
.end method

.method private synthetic lambda$commit$1(Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusReceiver"    # Landroid/content/IntentSender;
    .param p3, "causePackages"    # Ljava/util/List;
    .param p4, "result"    # Landroid/content/Intent;

    .line 633
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "statusReceiver":Landroid/content/IntentSender;
    .end local p3    # "causePackages":Ljava/util/List;
    .end local p4    # "result":Landroid/content/Intent;
    .local v3, "result":Landroid/content/Intent;
    .local v4, "context":Landroid/content/Context;
    .local v5, "statusReceiver":Landroid/content/IntentSender;
    .local v6, "causePackages":Ljava/util/List;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Intent;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 686
    return-void
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .locals 4
    .param p0, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 897
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 895
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 894
    :pswitch_1
    return v2

    .line 893
    :pswitch_2
    return v1

    .line 892
    :pswitch_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58e10884 -> :sswitch_3
        -0x2bbe7537 -> :sswitch_2
        0x5c6a3019 -> :sswitch_1
        0x61e1ed80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .line 879
    packed-switch p0, :pswitch_data_0

    .line 885
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 883
    :pswitch_1
    const-string v0, "deleted"

    return-object v0

    .line 882
    :pswitch_2
    const-string v0, "committed"

    return-object v0

    .line 881
    :pswitch_3
    const-string v0, "available"

    return-object v0

    .line 880
    :pswitch_4
    const-string v0, "enabling"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private wasCreatedAtLowerExtensionVersion()Z
    .locals 3

    .line 939
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 940
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    .line 941
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 942
    const/4 v1, 0x1

    return v1

    .line 939
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 945
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method allPackagesEnabled()Z
    .locals 4

    .line 867
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "packagesWithoutApkInApex":I
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 870
    .local v2, "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v3

    if-nez v3, :cond_0

    .line 871
    add-int/lit8 v0, v0, 0x1

    .line 873
    .end local v2    # "rollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 518
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 519
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x2

    const-string v4, "Rollback unavailable"

    invoke-static {v2, v3, v0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 523
    return-void

    .line 526
    :cond_0
    invoke-direct {v1}, Lcom/android/server/rollback/Rollback;->containsApex()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-direct {v1}, Lcom/android/server/rollback/Rollback;->wasCreatedAtLowerExtensionVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 528
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-static {v5, v0}, Lcom/android/server/rollback/Rollback;->extensionVersionReductionWouldViolateConstraint(Landroid/util/SparseIntArray;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    const-string v5, "Rollback may violate a minExtensionVersion constraint"

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 531
    return-void

    .line 538
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_1
    :try_start_0
    iget v0, v1, Lcom/android/server/rollback/Rollback;->mUserId:I

    .line 539
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 538
    const/4 v5, 0x0

    move-object/from16 v6, p3

    invoke-virtual {v2, v6, v5, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v7, v0

    .line 544
    .local v7, "pkgContext":Landroid/content/Context;
    nop

    .line 546
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 548
    .local v8, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v9, v0

    .line 549
    .local v9, "packageInstaller":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v10, v0

    .line 551
    .local v10, "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v10, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 552
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 553
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    goto :goto_0

    .line 693
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_0
    move-exception v0

    move-object/from16 v4, p2

    goto/16 :goto_b

    .line 556
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_2
    :goto_0
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 558
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v12, v0

    .line 559
    .local v12, "parentSessionId":I
    invoke-virtual {v9, v12}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object v13, v0

    .line 562
    .local v13, "parentSession":Landroid/content/pm/PackageInstaller$Session;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 563
    .local v14, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    move-object/from16 v16, v0

    .line 564
    .local v16, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    goto :goto_1

    .line 571
    :cond_3
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v4}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object/from16 v17, v0

    .line 573
    .local v17, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    .line 574
    .local v0, "installerPackageName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 575
    nop

    .line 576
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-virtual {v8, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_2

    .line 574
    :cond_4
    move-object v5, v0

    .line 578
    .end local v0    # "installerPackageName":Ljava/lang/String;
    .local v5, "installerPackageName":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_5

    .line 579
    move-object/from16 v11, v17

    .end local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v11, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v11, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    goto :goto_3

    .line 578
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_5
    move-object/from16 v11, v17

    .line 581
    .end local v17    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_3
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 582
    nop

    .line 583
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    move-object/from16 v19, v5

    .end local v5    # "installerPackageName":Ljava/lang/String;
    .local v19, "installerPackageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    .line 582
    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 584
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 585
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 588
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 589
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 591
    :cond_7
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    move v5, v0

    .line 592
    .local v5, "sessionId":I
    invoke-virtual {v9, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    move-object/from16 v20, v0

    .line 593
    .local v20, "session":Landroid/content/pm/PackageInstaller$Session;
    nop

    .line 594
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v1, v0}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    move-object/from16 v18, v0

    .line 595
    .local v18, "packageCodePaths":[Ljava/io/File;
    if-nez v18, :cond_8

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup copy of package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual/range {v16 .. v16}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is inaccessible"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 599
    return-void

    .line 602
    :cond_8
    move-object/from16 v4, v18

    .end local v18    # "packageCodePaths":[Ljava/io/File;
    .local v4, "packageCodePaths":[Ljava/io/File;
    array-length v6, v4

    move-object/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "packageCodePaths":[Ljava/io/File;
    .restart local v18    # "packageCodePaths":[Ljava/io/File;
    :goto_4
    if-ge v4, v6, :cond_c

    aget-object v0, v18, v4

    move-object/from16 v27, v0

    .line 603
    .local v27, "packageCodePath":Ljava/io/File;
    const/high16 v0, 0x10000000

    move/from16 v28, v4

    move-object/from16 v4, v27

    .end local v27    # "packageCodePath":Ljava/io/File;
    .local v4, "packageCodePath":Ljava/io/File;
    invoke-static {v4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v26
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 605
    .local v26, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-wide/from16 v29, v21

    .line 607
    .local v29, "token":J
    const/16 v21, 0x0

    .line 610
    .local v21, "fallbackToCopy":Z
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v27, v4

    move-object/from16 v4, v20

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v27    # "packageCodePath":Ljava/io/File;
    :try_start_4
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageInstaller$Session;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 613
    move/from16 v0, v21

    goto :goto_6

    .line 620
    .end local v21    # "fallbackToCopy":Z
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 611
    .restart local v21    # "fallbackToCopy":Z
    :catch_1
    move-exception v0

    goto :goto_5

    .line 620
    .end local v21    # "fallbackToCopy":Z
    .end local v27    # "packageCodePath":Ljava/io/File;
    .local v4, "packageCodePath":Ljava/io/File;
    .restart local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_1
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v4, v20

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v27    # "packageCodePath":Ljava/io/File;
    goto :goto_7

    .line 611
    .end local v27    # "packageCodePath":Ljava/io/File;
    .local v4, "packageCodePath":Ljava/io/File;
    .restart local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "fallbackToCopy":Z
    :catch_2
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v4, v20

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v27    # "packageCodePath":Ljava/io/File;
    :goto_5
    nop

    .line 612
    .local v0, "ignore":Ljava/lang/Exception;
    const/16 v21, 0x1

    move/from16 v0, v21

    .line 614
    .end local v21    # "fallbackToCopy":Z
    .local v0, "fallbackToCopy":Z
    :goto_6
    if-eqz v0, :cond_9

    .line 615
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 616
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v24
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 615
    const-wide/16 v22, 0x0

    move-object/from16 v20, v4

    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_6
    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    goto :goto_8

    .line 620
    .end local v0    # "fallbackToCopy":Z
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2
    move-exception v0

    move-object/from16 v4, v20

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    :goto_7
    :try_start_7
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    nop

    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "sessionId":I
    .end local v7    # "pkgContext":Landroid/content/Context;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v18    # "packageCodePaths":[Ljava/io/File;
    .end local v19    # "installerPackageName":Ljava/lang/String;
    .end local v26    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "packageCodePath":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    throw v0

    .line 603
    .end local v29    # "token":J
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "sessionId":I
    .restart local v7    # "pkgContext":Landroid/content/Context;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .restart local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v12    # "parentSessionId":I
    .restart local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .restart local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .restart local v18    # "packageCodePaths":[Ljava/io/File;
    .restart local v19    # "installerPackageName":Ljava/lang/String;
    .restart local v26    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v27    # "packageCodePath":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :catchall_3
    move-exception v0

    move-object v6, v0

    goto :goto_9

    .line 620
    .restart local v29    # "token":J
    :cond_9
    :goto_8
    invoke-static/range {v29 .. v30}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 621
    nop

    .line 622
    .end local v29    # "token":J
    if-eqz v26, :cond_a

    :try_start_8
    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 602
    .end local v26    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "packageCodePath":Ljava/io/File;
    :cond_a
    add-int/lit8 v0, v28, 0x1

    move-object/from16 v20, v4

    move v4, v0

    goto :goto_4

    .line 603
    .local v4, "packageCodePath":Ljava/io/File;
    .restart local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v26    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_4
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v4, v20

    move-object v6, v0

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v27    # "packageCodePath":Ljava/io/File;
    :goto_9
    if-eqz v26, :cond_b

    :try_start_9
    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    nop

    .end local v7    # "pkgContext":Landroid/content/Context;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/rollback/Rollback;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .end local p3    # "callerPackageName":Ljava/lang/String;
    .end local p4    # "statusReceiver":Landroid/content/IntentSender;
    throw v6

    .line 624
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v26    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "packageCodePath":Ljava/io/File;
    .restart local v7    # "pkgContext":Landroid/content/Context;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local p0    # "this":Lcom/android/server/rollback/Rollback;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    .restart local p3    # "callerPackageName":Ljava/lang/String;
    .restart local p4    # "statusReceiver":Landroid/content/IntentSender;
    :cond_c
    move-object/from16 v4, v20

    .end local v20    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    invoke-virtual {v13, v5}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 625
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "sessionId":I
    .end local v11    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v16    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v18    # "packageCodePaths":[Ljava/io/File;
    .end local v19    # "installerPackageName":Ljava/lang/String;
    move-object/from16 v6, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x5

    goto/16 :goto_1

    .line 627
    :cond_d
    nop

    .line 632
    new-instance v0, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v4, p2

    :try_start_b
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/rollback/Rollback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/Rollback;Landroid/content/Context;Landroid/content/IntentSender;Ljava/util/List;)V

    .line 688
    .local v0, "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    new-instance v5, Lcom/android/server/rollback/LocalIntentReceiver;

    invoke-direct {v5, v0}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 689
    .local v5, "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    const-string v6, ""

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v6}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 690
    iget-object v6, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6, v12}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 691
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 692
    invoke-virtual {v5}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 697
    .end local v0    # "onResult":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    .end local v5    # "receiver":Lcom/android/server/rollback/LocalIntentReceiver;
    .end local v9    # "packageInstaller":Landroid/content/pm/PackageInstaller;
    .end local v10    # "parentParams":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v12    # "parentSessionId":I
    .end local v13    # "parentSession":Landroid/content/pm/PackageInstaller$Session;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_c

    .line 693
    :catch_3
    move-exception v0

    :goto_b
    nop

    .line 694
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RollbackManager"

    const-string v6, "Rollback failed"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 695
    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 698
    .end local v0    # "e":Ljava/io/IOException;
    :goto_c
    return-void

    .line 540
    .end local v7    # "pkgContext":Landroid/content/Context;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v0

    move-object/from16 v4, p2

    .line 541
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Invalid callerPackageName"

    const/4 v6, 0x1

    invoke-static {v2, v3, v6, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 543
    return-void
.end method

.method commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 489
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 490
    invoke-virtual {p2, p1, p0}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/Rollback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 493
    :cond_0
    return-void
.end method

.method containsSessionId(I)Z
    .locals 5
    .param p1, "packageSessionId"    # I

    .line 852
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mPackageSessionIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 853
    .local v4, "id":I
    if-ne v4, p1, :cond_0

    .line 854
    const/4 v0, 0x1

    return v0

    .line 853
    :cond_0
    nop

    .line 852
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 857
    :cond_1
    return v2
.end method

.method delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V
    .locals 8
    .param p1, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;
    .param p2, "reason"    # Ljava/lang/String;

    .line 739
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "containsApex":Z
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 742
    .local v1, "apexUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 743
    .local v3, "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v4

    .line 744
    .local v4, "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 745
    const/4 v0, 0x1

    .line 746
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 748
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 750
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 752
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v7}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7

    invoke-virtual {p1, v7, v3, v6}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    .line 748
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 755
    .end local v3    # "pkgInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local v4    # "snapshottedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    :cond_1
    :goto_2
    goto :goto_0

    .line 756
    :cond_2
    if-eqz v0, :cond_3

    .line 757
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexDeSnapshots(I)V

    .line 758
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 759
    .local v3, "user":I
    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyApexCeSnapshots(II)V

    .line 760
    .end local v3    # "user":I
    goto :goto_3

    .line 763
    :cond_3
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->deleteRollback(Lcom/android/server/rollback/Rollback;)V

    .line 764
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p2}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 765
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 960
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-stateDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-rollbackLifetimeMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getRollbackLifetimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-rollbackImpactLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-isStaged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-originalSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 970
    const-string v0, "-packages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 972
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 973
    .local v1, "pkg":Landroid/content/rollback/PackageRollbackInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 977
    .end local v1    # "pkg":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 979
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    const-string v0, "-causePackages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 982
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 983
    .local v1, "cPkg":Landroid/content/pm/VersionedPackage;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 984
    .end local v1    # "cPkg":Landroid/content/pm/VersionedPackage;
    goto :goto_1

    .line 985
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-committedSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 989
    const-string v0, "-extensionVersions:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 991
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 994
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 995
    return-void
.end method

.method enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;II)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newVersion"    # J
    .param p4, "installedVersion"    # J
    .param p6, "isApex"    # Z
    .param p7, "sourceDir"    # Ljava/lang/String;
    .param p8, "splitSourceDirs"    # [Ljava/lang/String;
    .param p9, "rollbackDataPolicy"    # I
    .param p10, "rollbackImpactLevel"    # I

    .line 402
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    move/from16 v4, p10

    invoke-direct {v1}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 404
    const/4 v5, 0x0

    move-object/from16 v6, p7

    :try_start_0
    invoke-static {v1, v2, v6}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    array-length v0, v3

    move v7, v5

    :goto_0
    if-ge v7, v0, :cond_0

    aget-object v8, v3, v7

    .line 407
    .local v8, "dir":Ljava/lang/String;
    invoke-static {v1, v2, v8}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/Rollback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v8    # "dir":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    goto :goto_1

    .line 413
    :cond_0
    nop

    .line 415
    new-instance v7, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v8, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v9, p2

    invoke-direct {v8, v2, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v9, Landroid/content/pm/VersionedPackage;

    move-wide/from16 v10, p4

    invoke-direct {v9, v2, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move/from16 v12, p6

    move/from16 v15, p9

    invoke-direct/range {v7 .. v15}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 421
    .local v7, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 424
    iget-object v0, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0, v4}, Landroid/content/rollback/RollbackInfo;->setRollbackImpactLevel(I)V

    .line 426
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 410
    .end local v7    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :goto_1
    nop

    .line 411
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to copy package for rollback for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RollbackManager"

    invoke-static {v8, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    return v5
.end method

.method enableForPackageInApex(Ljava/lang/String;JI)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installedVersion"    # J
    .param p4, "rollbackDataPolicy"    # I

    .line 437
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 443
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v1, Landroid/content/pm/VersionedPackage;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/content/pm/VersionedPackage;

    invoke-direct {v2, p1, p2, p3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v8, p4

    .end local p4    # "rollbackDataPolicy":I
    .local v8, "rollbackDataPolicy":I
    invoke-direct/range {v0 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/ArrayList;ZZLjava/util/List;I)V

    .line 448
    .local v0, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    iget-object p4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    const/4 p4, 0x1

    return p4
.end method

.method getApexPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 837
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 839
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 840
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 841
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 844
    :cond_1
    return-object v0
.end method

.method getBackupDir()Ljava/io/File;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    return-object v0
.end method

.method getExtensionVersions()Landroid/util/SparseIntArray;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getOriginalSessionId()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mOriginalSessionId:I

    return v0
.end method

.method getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 824
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 827
    .local v2, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v2    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 829
    :cond_0
    return-object v0
.end method

.method getRollbackLifetimeMillis()J
    .locals 2

    .line 310
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 311
    iget-wide v0, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    return-wide v0
.end method

.method getStateAsString()Ljava/lang/String;
    .locals 1

    .line 902
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 903
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    invoke-static {v0}, Lcom/android/server/rollback/Rollback;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStateDescription()Ljava/lang/String;
    .locals 1

    .line 999
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 1000
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    return-object v0
.end method

.method getTimestamp()Ljava/time/Instant;
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 283
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method getUserId()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mUserId:I

    return v0
.end method

.method includesPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 793
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 794
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 795
    .local v1, "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 796
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_0
    nop

    .line 798
    .end local v1    # "packageRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 799
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method includesPackageWithDifferentVersion(Ljava/lang/String;J)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 808
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 809
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 810
    .local v1, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 813
    const/4 v0, 0x1

    return v0

    .line 815
    .end local v1    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    :cond_0
    goto :goto_0

    .line 816
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isAvailable()Z
    .locals 2

    .line 362
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 363
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isCommitted()Z
    .locals 2

    .line 371
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 372
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDeleted()Z
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 381
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEnabling()Z
    .locals 1

    .line 353
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 354
    iget v0, p0, Lcom/android/server/rollback/Rollback;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRestoreUserDataInProgress()Z
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 774
    iget-boolean v0, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    return v0
.end method

.method isStaged()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method

.method makeAvailable()V
    .locals 2

    .line 502
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 503
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "RollbackManager"

    const-string v1, "Cannot make deleted rollback available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x1

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/Rollback;->setState(ILjava/lang/String;)V

    .line 508
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 509
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 510
    return-void
.end method

.method restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 710
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 711
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 712
    return v1

    .line 715
    :cond_0
    const/4 v0, 0x0

    .line 716
    .local v0, "foundPackage":Z
    iget-object v2, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 717
    .local v6, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 718
    const/4 v0, 0x1

    .line 719
    const/4 v2, 0x0

    .line 720
    .local v2, "changedRollback":Z
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_1

    aget v7, p2, v1

    .line 721
    .local v7, "userId":I
    iget-object v4, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 722
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    .line 721
    move v8, p3

    move-object v9, p4

    move-object v4, p5

    .end local p3    # "appId":I
    .end local p4    # "seInfo":Ljava/lang/String;
    .end local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .local v4, "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .local v8, "appId":I
    .local v9, "seInfo":Ljava/lang/String;
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result p3

    or-int/2addr v2, p3

    .line 720
    .end local v7    # "userId":I
    add-int/lit8 v1, v1, 0x1

    move p3, v8

    goto :goto_1

    .line 725
    .end local v4    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .end local v8    # "appId":I
    .end local v9    # "seInfo":Ljava/lang/String;
    .restart local p3    # "appId":I
    .restart local p4    # "seInfo":Ljava/lang/String;
    .restart local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    :cond_1
    move v8, p3

    move-object v9, p4

    move-object v4, p5

    .end local p3    # "appId":I
    .end local p4    # "seInfo":Ljava/lang/String;
    .end local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .restart local v4    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .restart local v8    # "appId":I
    .restart local v9    # "seInfo":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 726
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_2

    .line 717
    .end local v2    # "changedRollback":Z
    .end local v4    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .end local v8    # "appId":I
    .end local v9    # "seInfo":Ljava/lang/String;
    .restart local p3    # "appId":I
    .restart local p4    # "seInfo":Ljava/lang/String;
    .restart local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    :cond_2
    move v8, p3

    move-object v9, p4

    move-object v4, p5

    .line 730
    .end local v6    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    .end local p3    # "appId":I
    .end local p4    # "seInfo":Ljava/lang/String;
    .end local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .restart local v4    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .restart local v8    # "appId":I
    .restart local v9    # "seInfo":Ljava/lang/String;
    goto :goto_0

    .line 716
    .end local v4    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .end local v8    # "appId":I
    .end local v9    # "seInfo":Ljava/lang/String;
    .restart local p3    # "appId":I
    .restart local p4    # "seInfo":Ljava/lang/String;
    .restart local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    :cond_3
    move v8, p3

    move-object v9, p4

    move-object v4, p5

    .line 731
    .end local p3    # "appId":I
    .end local p4    # "seInfo":Ljava/lang/String;
    .end local p5    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .restart local v4    # "dataHelper":Lcom/android/server/rollback/AppDataRollbackHelper;
    .restart local v8    # "appId":I
    .restart local v9    # "seInfo":Ljava/lang/String;
    :cond_4
    :goto_2
    return v0
.end method

.method saveRollback()V
    .locals 0

    .line 389
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 390
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 391
    return-void
.end method

.method setRestoreUserDataInProgress(Z)V
    .locals 0
    .param p1, "restoreUserDataInProgress"    # Z

    .line 783
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 784
    iput-boolean p1, p0, Lcom/android/server/rollback/Rollback;->mRestoreUserDataInProgress:Z

    .line 785
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 786
    return-void
.end method

.method setRollbackLifetimeMillis(J)V
    .locals 0
    .param p1, "lifetimeMillis"    # J

    .line 301
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 302
    iput-wide p1, p0, Lcom/android/server/rollback/Rollback;->mRollbackLifetimeMillis:J

    .line 303
    return-void
.end method

.method setState(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 1005
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 1006
    iput p1, p0, Lcom/android/server/rollback/Rollback;->mState:I

    .line 1007
    iput-object p2, p0, Lcom/android/server/rollback/Rollback;->mStateDescription:Ljava/lang/String;

    .line 1008
    return-void
.end method

.method setTimestamp(Ljava/time/Instant;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/time/Instant;

    .line 291
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 292
    iput-object p1, p0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 293
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    .line 294
    return-void
.end method

.method snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "dataHelper"    # Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 464
    invoke-direct {p0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 465
    invoke-virtual {p0}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 470
    .local v1, "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getRollbackDataPolicy()I

    move-result v0

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;[I)V

    .line 474
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getSnapshottedUsers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/rollback/Rollback;->addAll(Ljava/util/List;[I)V

    .line 475
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;)V

    goto :goto_1

    .line 470
    :cond_1
    nop

    .line 479
    .end local v1    # "pkgRollbackInfo":Landroid/content/rollback/PackageRollbackInfo;
    goto :goto_0

    .line 480
    :cond_2
    :goto_1
    return-void
.end method
