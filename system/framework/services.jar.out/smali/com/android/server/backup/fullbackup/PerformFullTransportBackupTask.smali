.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private final mCancelLock:Ljava/lang/Object;

.field private volatile mCancelled:Z

.field private final mCurrentOpToken:I

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field mUpdateSchedule:Z

.field private mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mUserId:I

.field mUserInitiated:Z


# direct methods
.method public static synthetic $r8$lambda$LHAoxPfqTRXwU2t3rQ_gq5cVgNw(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAgentTimeoutParameters(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/BackupAgentTimeoutParameters;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackupEligibilityRules(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackupManagerMonitorEventSender(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserBackupManagerService(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 19
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p5, "whichPackages"    # [Ljava/lang/String;
    .param p6, "updateSchedule"    # Z
    .param p7, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p8, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p9, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p10, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p11, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p12, "userInitiated"    # Z
    .param p13, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 179
    move-object/from16 v4, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct {v4, v7}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 180
    move-object/from16 v8, p1

    iput-object v8, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 181
    move-object/from16 v9, p2

    iput-object v9, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 182
    move-object/from16 v10, p3

    iput-object v10, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 183
    move/from16 v11, p6

    iput-boolean v11, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 184
    move-object/from16 v12, p8

    iput-object v12, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 185
    move-object/from16 v13, p7

    iput-object v13, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 187
    move-object/from16 v14, p9

    iput-object v14, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 188
    if-eqz p11, :cond_0

    move-object/from16 v0, p11

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_0
    iput-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 189
    move/from16 v15, p12

    iput-boolean v15, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 190
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 191
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 192
    new-instance v0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 194
    nop

    .line 195
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 197
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 198
    move-object/from16 v2, p13

    iput-object v2, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 200
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const-string v3, "PFTBT"

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "Skipping full backup. A backup is already in progress."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    .line 203
    return-void

    .line 206
    :cond_1
    array-length v5, v6

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_5

    move/from16 v16, v1

    aget-object v1, v6, v16

    .line 208
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 209
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v2, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v5

    const/high16 v5, 0x8000000

    :try_start_1
    invoke-virtual {v0, v1, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 211
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v18, v0

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x9

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 224
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d1

    invoke-static {v0, v1, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 226
    goto :goto_3

    .line 259
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 227
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0xa

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 239
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d1

    invoke-static {v0, v1, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 241
    goto :goto_3

    .line 242
    :cond_3
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0xb

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 254
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v5, -0x7d1

    invoke-static {v0, v1, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 256
    goto :goto_3

    .line 258
    :cond_4
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    nop

    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_3

    .line 259
    :catch_1
    move-exception v0

    move/from16 v17, v5

    :goto_2
    nop

    .line 260
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found; ignoring"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0xc

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 206
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "pkg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object/from16 v2, p13

    move/from16 v5, v17

    goto/16 :goto_1

    .line 269
    :cond_5
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 270
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 271
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    goto :goto_4

    .line 274
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupmanager pftbt token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object v3, v0

    .end local v0    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/android/server/backup/OperationStorage;->registerOperationForPackages(IILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 277
    return-void
.end method

.method private static synthetic lambda$newWithCurrentTransport$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "listenerCaller"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    return-void
.end method

.method public static newWithCurrentTransport(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZLjava/lang/String;Lcom/android/server/backup/utils/BackupEligibilityRules;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .locals 16
    .param p0, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p1, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p3, "whichPackages"    # [Ljava/lang/String;
    .param p4, "updateSchedule"    # Z
    .param p5, "runningJob"    # Lcom/android/server/backup/FullBackupJob;
    .param p6, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "backupObserver"    # Landroid/app/backup/IBackupObserver;
    .param p8, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p9, "userInitiated"    # Z
    .param p10, "caller"    # Ljava/lang/String;
    .param p11, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    .line 121
    .local v0, "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v5

    .line 123
    .local v5, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    if-eqz v5, :cond_0

    .line 126
    new-instance v13, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 130
    .local v13, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v2 .. v15}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    return-object v2

    .line 124
    .end local v13    # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No TransportConnection available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;Ljava/util/List;)V
    .locals 3
    .param p1, "transport"    # Lcom/android/server/backup/transport/BackupTransportClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/transport/BackupTransportClient;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 728
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 729
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 730
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    .end local v0    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 729
    .restart local v0    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 732
    .end local v1    # "i":I
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getPackagesThatShouldNotUseRestrictedMode(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    .line 734
    .end local v0    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->setNoRestrictedModePackages(Ljava/util/Set;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v2    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_2

    .line 736
    :goto_1
    nop

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PFTBT"

    const-string v2, "Failed to retrieve no restricted mode packages from transport"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "pipes"    # [Landroid/os/ParcelFileDescriptor;

    .line 703
    if-eqz p1, :cond_1

    .line 704
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "Unable to close pipe!"

    const-string v3, "PFTBT"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 705
    aget-object v1, p1, v0

    .line 706
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 708
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 714
    aget-object v1, p1, v0

    .line 715
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    aput-object v4, p1, v0

    .line 717
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 720
    goto :goto_1

    .line 718
    :catch_1
    move-exception v0

    .line 719
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    return-void
.end method

.method public execute()V
    .locals 0

    .line 287
    return-void
.end method

.method public handleCancel(I)V
    .locals 5
    .param p1, "cancellationReason"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    if-nez p1, :cond_0

    .line 296
    :try_start_0
    const-string v1, "PFTBT"

    const-string v2, "This task cannot time out"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v0

    return-void

    .line 325
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 303
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 304
    monitor-exit v0

    return-void

    .line 307
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v2, :cond_2

    .line 308
    const-string v1, "PFTBT"

    const-string v2, "Ignoring duplicate cancel call."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v0

    return-void

    .line 312
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    .line 313
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "PFTBT.handleCancel()"

    .line 318
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 319
    .local v1, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .end local v1    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    nop

    .line 321
    .local v1, "e":Landroid/util/AndroidException;
    :try_start_2
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v1    # "e":Landroid/util/AndroidException;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 326
    return-void

    .line 325
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public operationComplete(J)V
    .locals 0
    .param p1, "result"    # J

    .line 331
    return-void
.end method

.method public run()V
    .locals 36

    .line 337
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 340
    .local v2, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 342
    .local v3, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    const-wide/16 v4, 0x0

    .line 343
    .local v4, "backoff":J
    const/4 v9, 0x0

    .line 346
    .local v9, "backupRunStatus":I
    const/4 v11, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 347
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v22, v9

    goto/16 :goto_1b

    .line 369
    :cond_0
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v6, "PFTBT.run()"

    invoke-virtual {v0, v6}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    move-object v13, v0

    .line 370
    .local v13, "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    const/4 v14, 0x1

    if-nez v13, :cond_4

    .line 371
    :try_start_1
    const-string v0, "PFTBT"

    const-string v6, "Transport not present; full data backup not performed"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v9, -0x3e8

    .line 373
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v11, v14, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 663
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 664
    const/16 v9, -0x7d3

    move v6, v9

    goto :goto_0

    .line 663
    :cond_1
    move v6, v9

    .line 667
    .end local v9    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    :goto_0
    const-string v0, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    iget v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 680
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_3
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 378
    return-void

    .line 681
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 663
    .end local v6    # "backupRunStatus":I
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v9    # "backupRunStatus":I
    :catchall_1
    move-exception v0

    goto/16 :goto_21

    .line 650
    :catch_0
    move-exception v0

    goto/16 :goto_1e

    .line 383
    .restart local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    :cond_4
    :try_start_4
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1e

    if-nez v0, :cond_5

    .line 385
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 386
    invoke-virtual {v13}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->setMonitor(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 389
    goto :goto_1

    .line 387
    :catch_1
    move-exception v0

    nop

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "PFTBT"

    const-string v7, "Failed to retrieve monitor from transport"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 394
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_1
    :try_start_7
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-direct {v1, v13, v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->setNoRestrictedModePackages(Lcom/android/server/backup/transport/BackupTransportClient;Ljava/util/List;)V

    .line 397
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v15, v0

    .line 398
    .local v15, "N":I
    const/16 v0, 0x2000

    .line 399
    .local v0, "chunkSizeInBytes":I
    nop

    .line 401
    const/high16 v6, 0x10000

    .line 403
    .end local v0    # "chunkSizeInBytes":I
    .local v6, "chunkSizeInBytes":I
    new-array v0, v6, [B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1e

    move-object v7, v0

    .line 404
    .local v7, "buffer":[B
    const/4 v0, 0x0

    move-object v8, v2

    move v2, v0

    .local v2, "i":I
    .local v8, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :goto_2
    if-ge v2, v15, :cond_21

    .line 405
    :try_start_8
    iput-object v11, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 406
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    .line 407
    .local v16, "currentPackage":Landroid/content/pm/PackageInfo;
    move-object/from16 v12, v16

    const/16 v17, 0x0

    .end local v16    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 408
    .local v16, "packageName":Ljava/lang/String;
    const-string v0, "PFTBT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    const-string v11, "Initiating full-data transport backup of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " token: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v0, 0xb18

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 412
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_1b

    move-object v10, v0

    .line 415
    .end local v3    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .local v10, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_9
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move/from16 v0, v17

    :goto_3
    move v14, v0

    .line 417
    .local v14, "flags":I
    const-wide v19, 0x7fffffffffffffffL

    .line 418
    .local v19, "quota":J
    iget-object v3, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1a

    .line 419
    :try_start_a
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_17

    if-eqz v0, :cond_7

    .line 420
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-wide/from16 v31, v4

    move/from16 v22, v9

    goto/16 :goto_17

    .line 440
    :catchall_2
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    move-wide/from16 v31, v4

    move/from16 v26, v6

    move-object v2, v8

    move/from16 v22, v9

    move-object v3, v12

    move/from16 v28, v14

    move/from16 v27, v15

    move-object v9, v7

    goto/16 :goto_16

    .line 422
    :cond_7
    :try_start_c
    aget-object v0, v10, v17

    invoke-virtual {v13, v12, v0, v14}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_17

    move/from16 v21, v0

    .line 425
    .local v21, "backupPackageStatus":I
    if-nez v21, :cond_8

    .line 426
    :try_start_d
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "i":I
    .local v22, "i":I
    :try_start_e
    invoke-virtual {v13, v0, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v23
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 429
    .end local v19    # "quota":J
    .local v23, "quota":J
    :try_start_f
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v19, v0

    .line 430
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v19, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_10
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/16 v16, 0x1

    aget-object v2, v19, v16
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-wide/from16 v25, v4

    .end local v4    # "backoff":J
    .local v25, "backoff":J
    :try_start_11
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object v5, v7

    .end local v7    # "buffer":[B
    .local v5, "buffer":[B
    :try_start_12
    iget v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 433
    invoke-virtual {v13}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v28, v14

    move/from16 v27, v15

    move-wide/from16 v14, v25

    move-wide/from16 v34, v23

    move-object/from16 v24, v3

    move-object v3, v12

    move/from16 v23, v22

    move v12, v6

    move/from16 v22, v9

    move-object v9, v5

    move-wide/from16 v5, v34

    .end local v6    # "chunkSizeInBytes":I
    .end local v15    # "N":I
    .end local v25    # "backoff":J
    .local v3, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "quota":J
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v22, "backupRunStatus":I
    .local v23, "i":I
    .local v27, "N":I
    .local v28, "flags":I
    :try_start_13
    invoke-direct/range {v0 .. v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 435
    const/4 v2, 0x1

    aget-object v0, v19, v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 436
    aput-object v18, v19, v2

    .line 438
    iput-boolean v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move-object/from16 v8, v19

    goto/16 :goto_4

    .line 440
    .end local v21    # "backupPackageStatus":I
    :catchall_3
    move-exception v0

    move/from16 v26, v12

    move-wide/from16 v31, v14

    move-object/from16 v2, v19

    move-wide/from16 v19, v5

    goto/16 :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .local v5, "buffer":[B
    .restart local v6    # "chunkSizeInBytes":I
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .local v22, "i":I
    .local v23, "quota":J
    .restart local v25    # "backoff":J
    :catchall_4
    move-exception v0

    move/from16 v28, v14

    move/from16 v27, v15

    move-wide/from16 v14, v25

    move-wide/from16 v34, v23

    move-object/from16 v24, v3

    move-object v3, v12

    move/from16 v23, v22

    move v12, v6

    move/from16 v22, v9

    move-object v9, v5

    move-wide/from16 v5, v34

    move/from16 v26, v12

    move-wide/from16 v31, v14

    move-object/from16 v2, v19

    move-wide/from16 v19, v5

    .end local v6    # "chunkSizeInBytes":I
    .end local v15    # "N":I
    .end local v25    # "backoff":J
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v5, "quota":J
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v22, "backupRunStatus":I
    .local v23, "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    goto/16 :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "quota":J
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .local v22, "i":I
    .local v23, "quota":J
    .restart local v25    # "backoff":J
    :catchall_5
    move-exception v0

    move-wide/from16 v27, v23

    move-object/from16 v24, v3

    move-object v3, v12

    move v12, v6

    move-wide/from16 v5, v27

    move/from16 v28, v14

    move/from16 v27, v15

    move/from16 v23, v22

    move-wide/from16 v14, v25

    move/from16 v22, v9

    move-object v9, v7

    move/from16 v26, v12

    move-wide/from16 v31, v14

    move-object/from16 v2, v19

    move-wide/from16 v19, v5

    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .end local v25    # "backoff":J
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "quota":J
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v22, "backupRunStatus":I
    .local v23, "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    goto/16 :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "quota":J
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v4    # "backoff":J
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .local v22, "i":I
    .local v23, "quota":J
    :catchall_6
    move-exception v0

    move/from16 v28, v14

    move/from16 v27, v15

    move-wide v14, v4

    move-wide/from16 v34, v23

    move-object/from16 v24, v3

    move-object v3, v12

    move/from16 v23, v22

    move v12, v6

    move/from16 v22, v9

    move-wide/from16 v5, v34

    move-object v9, v7

    move/from16 v26, v12

    move-wide/from16 v31, v14

    move-object/from16 v2, v19

    move-wide/from16 v19, v5

    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "quota":J
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v22, "backupRunStatus":I
    .local v23, "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    goto/16 :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "quota":J
    .end local v19    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v4    # "backoff":J
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .local v22, "i":I
    .local v23, "quota":J
    :catchall_7
    move-exception v0

    move/from16 v28, v14

    move/from16 v27, v15

    move-wide v14, v4

    move-wide/from16 v34, v23

    move-object/from16 v24, v3

    move-object v3, v12

    move/from16 v23, v22

    move v12, v6

    move/from16 v22, v9

    move-wide/from16 v5, v34

    move-object v9, v7

    move-wide/from16 v19, v5

    move-object v2, v8

    move/from16 v26, v12

    move-wide/from16 v31, v14

    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "quota":J
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v22, "backupRunStatus":I
    .local v23, "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    goto/16 :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "quota":J
    .end local v23    # "i":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v4    # "backoff":J
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .local v19, "quota":J
    .local v22, "i":I
    :catchall_8
    move-exception v0

    move-object/from16 v24, v3

    move-object v3, v12

    move/from16 v28, v14

    move/from16 v27, v15

    move/from16 v23, v22

    move-wide v14, v4

    move v12, v6

    move/from16 v22, v9

    move-object v9, v7

    move-object v2, v8

    move/from16 v26, v12

    move-wide/from16 v31, v14

    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v22, "backupRunStatus":I
    .restart local v23    # "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    goto/16 :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v22    # "backupRunStatus":I
    .end local v23    # "i":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v2    # "i":I
    .restart local v4    # "backoff":J
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    :catchall_9
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v9

    move-object v3, v12

    move/from16 v28, v14

    move/from16 v27, v15

    move-wide v14, v4

    move v12, v6

    move-object v9, v7

    move-object v2, v8

    move/from16 v26, v12

    move-wide/from16 v31, v14

    .end local v2    # "i":I
    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .restart local v22    # "backupRunStatus":I
    .restart local v23    # "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    goto/16 :goto_16

    .line 425
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v22    # "backupRunStatus":I
    .end local v23    # "i":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v2    # "i":I
    .restart local v4    # "backoff":J
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .restart local v21    # "backupPackageStatus":I
    :cond_8
    move/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v22, v9

    move-object v3, v12

    move/from16 v28, v14

    move/from16 v27, v15

    move-wide v14, v4

    move v12, v6

    move-object v9, v7

    .end local v2    # "i":I
    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v9, "buffer":[B
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .restart local v22    # "backupRunStatus":I
    .restart local v23    # "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    move-wide/from16 v5, v19

    .line 440
    .end local v19    # "quota":J
    .restart local v5    # "quota":J
    :goto_4
    :try_start_14
    monitor-exit v24
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_16

    .line 441
    const/16 v0, -0x3ed

    if-nez v21, :cond_15

    .line 445
    :try_start_15
    aget-object v2, v10, v17

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 446
    aput-object v18, v10, v17

    .line 450
    new-instance v2, Ljava/lang/Thread;

    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v7, "package-backup-bridge"

    invoke-direct {v2, v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 455
    new-instance v2, Ljava/io/FileInputStream;

    aget-object v4, v8, v17

    .line 456
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 457
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    const/16 v16, 0x1

    aget-object v7, v10, v16

    .line 458
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 459
    .local v4, "out":Ljava/io/FileOutputStream;
    const-wide/16 v19, 0x0

    .line 460
    .local v19, "totalRead":J
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v24

    move-wide/from16 v29, v24

    .line 462
    .local v29, "preflightResult":J
    const-wide/16 v24, 0x0

    cmp-long v7, v29, v24

    if-gez v7, :cond_9

    .line 468
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    move/from16 v26, v12

    .end local v12    # "chunkSizeInBytes":I
    .local v26, "chunkSizeInBytes":I
    const-string v12, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 472
    move-wide/from16 v31, v29

    move-wide/from16 v29, v5

    move-wide/from16 v5, v31

    move-wide/from16 v31, v14

    move-object/from16 v14, v18

    .end local v14    # "backoff":J
    .local v5, "preflightResult":J
    .local v29, "quota":J
    .local v31, "backoff":J
    :try_start_16
    invoke-static {v14, v12, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v12

    .line 468
    const/16 v14, 0x10

    const/4 v15, 0x3

    invoke-virtual {v7, v14, v3, v15, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 476
    long-to-int v7, v5

    move-object/from16 v33, v2

    move-wide/from16 v24, v5

    move-wide/from16 v14, v19

    move-object/from16 v20, v4

    move-wide/from16 v4, v29

    .end local v21    # "backupPackageStatus":I
    .local v7, "backupPackageStatus":I
    goto/16 :goto_c

    .line 663
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "preflightResult":J
    .end local v7    # "backupPackageStatus":I
    .end local v9    # "buffer":[B
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v19    # "totalRead":J
    .end local v23    # "i":I
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .end local v29    # "quota":J
    :catchall_a
    move-exception v0

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    move-wide/from16 v4, v31

    goto/16 :goto_21

    .line 650
    :catch_2
    move-exception v0

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    move-wide/from16 v4, v31

    goto/16 :goto_1e

    .line 663
    .end local v31    # "backoff":J
    .restart local v14    # "backoff":J
    :catchall_b
    move-exception v0

    move-wide/from16 v31, v14

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    move-wide/from16 v4, v31

    .end local v14    # "backoff":J
    .restart local v31    # "backoff":J
    goto/16 :goto_21

    .line 650
    .end local v31    # "backoff":J
    .restart local v14    # "backoff":J
    :catch_3
    move-exception v0

    move-wide/from16 v31, v14

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    move-wide/from16 v4, v31

    .end local v14    # "backoff":J
    .restart local v31    # "backoff":J
    goto/16 :goto_1e

    .line 478
    .end local v31    # "backoff":J
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "quota":J
    .restart local v9    # "buffer":[B
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "chunkSizeInBytes":I
    .restart local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v14    # "backoff":J
    .restart local v19    # "totalRead":J
    .restart local v21    # "backupPackageStatus":I
    .restart local v23    # "i":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    .local v29, "preflightResult":J
    :cond_9
    move-wide/from16 v31, v29

    move-wide/from16 v29, v5

    move-wide/from16 v5, v31

    move/from16 v26, v12

    move-wide/from16 v31, v14

    .end local v12    # "chunkSizeInBytes":I
    .end local v14    # "backoff":J
    .local v5, "preflightResult":J
    .restart local v26    # "chunkSizeInBytes":I
    .local v29, "quota":J
    .restart local v31    # "backoff":J
    const/4 v7, 0x0

    .line 480
    .local v7, "nRead":I
    :goto_5
    invoke-virtual {v2, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    move v7, v12

    .line 484
    if-lez v7, :cond_c

    .line 485
    move/from16 v12, v17

    invoke-virtual {v4, v9, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 486
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 487
    :try_start_17
    iget-boolean v14, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    if-nez v14, :cond_a

    .line 488
    :try_start_18
    invoke-virtual {v13, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    move-result v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    move/from16 v21, v14

    goto :goto_6

    .line 490
    :catchall_c
    move-exception v0

    move-object/from16 v33, v2

    goto :goto_8

    :cond_a
    :goto_6
    :try_start_19
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    .line 491
    int-to-long v14, v7

    add-long v14, v19, v14

    .line 492
    .end local v19    # "totalRead":J
    .local v14, "totalRead":J
    :try_start_1a
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v12, :cond_b

    cmp-long v12, v5, v24

    if-lez v12, :cond_b

    .line 493
    iget-object v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v33, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .local v33, "in":Ljava/io/FileInputStream;
    new-instance v2, Landroid/app/backup/BackupProgress;

    invoke-direct {v2, v5, v6, v14, v15}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    .line 494
    invoke-static {v12, v11, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    goto :goto_7

    .line 492
    .end local v33    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :cond_b
    move-object/from16 v33, v2

    .line 498
    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v33    # "in":Ljava/io/FileInputStream;
    :goto_7
    move/from16 v2, v21

    goto :goto_9

    .line 490
    .end local v14    # "totalRead":J
    .end local v33    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v19    # "totalRead":J
    :catchall_d
    move-exception v0

    move-object/from16 v33, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v33    # "in":Ljava/io/FileInputStream;
    :goto_8
    :try_start_1b
    monitor-exit v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_1c
    throw v0

    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_e
    move-exception v0

    goto :goto_8

    .line 484
    .end local v33    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :cond_c
    move-object/from16 v33, v2

    .end local v2    # "in":Ljava/io/FileInputStream;
    .restart local v33    # "in":Ljava/io/FileInputStream;
    move-wide/from16 v14, v19

    move/from16 v2, v21

    .line 498
    .end local v19    # "totalRead":J
    .end local v21    # "backupPackageStatus":I
    .local v2, "backupPackageStatus":I
    .restart local v14    # "totalRead":J
    :goto_9
    if-lez v7, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    goto :goto_a

    :cond_e
    move/from16 v21, v2

    move-wide/from16 v19, v14

    move-object/from16 v2, v33

    const/16 v17, 0x0

    goto :goto_5

    .line 501
    :goto_a
    if-ne v2, v0, :cond_f

    .line 502
    const-string v12, "PFTBT"

    move/from16 v19, v2

    .end local v2    # "backupPackageStatus":I
    .local v19, "backupPackageStatus":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v20, "out":Ljava/io/FileOutputStream;
    const-string v4, "Package hit quota limit in-flight "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v24, v5

    move-wide/from16 v4, v29

    .end local v5    # "preflightResult":J
    .end local v29    # "quota":J
    .local v4, "quota":J
    .local v24, "preflightResult":J
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v6, 0x12

    move/from16 v21, v7

    const/4 v7, 0x1

    const/4 v12, 0x0

    .end local v7    # "nRead":I
    .local v21, "nRead":I
    invoke-virtual {v2, v6, v3, v7, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 509
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2, v14, v15, v4, v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    goto :goto_b

    .line 501
    .end local v19    # "backupPackageStatus":I
    .end local v20    # "out":Ljava/io/FileOutputStream;
    .end local v21    # "nRead":I
    .end local v24    # "preflightResult":J
    .restart local v2    # "backupPackageStatus":I
    .local v4, "out":Ljava/io/FileOutputStream;
    .restart local v5    # "preflightResult":J
    .restart local v7    # "nRead":I
    .restart local v29    # "quota":J
    :cond_f
    move/from16 v19, v2

    move-object/from16 v20, v4

    move-wide/from16 v24, v5

    move/from16 v21, v7

    move-wide/from16 v4, v29

    .line 513
    .end local v2    # "backupPackageStatus":I
    .end local v5    # "preflightResult":J
    .end local v7    # "nRead":I
    .end local v29    # "quota":J
    .local v4, "quota":J
    .restart local v19    # "backupPackageStatus":I
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v24    # "preflightResult":J
    :goto_b
    move/from16 v7, v19

    .end local v19    # "backupPackageStatus":I
    .local v7, "backupPackageStatus":I
    :goto_c
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v2

    .line 515
    .local v2, "backupRunnerResult":I
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 516
    const/4 v12, 0x0

    :try_start_1d
    iput-boolean v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 518
    iget-boolean v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    if-nez v12, :cond_12

    .line 519
    if-nez v2, :cond_11

    .line 524
    :try_start_1e
    invoke-virtual {v13}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v12

    .line 525
    .local v12, "finishResult":I
    if-nez v7, :cond_10

    .line 526
    move v7, v12

    .line 528
    .end local v12    # "finishResult":I
    :cond_10
    goto :goto_d

    .line 532
    :catchall_f
    move-exception v0

    move/from16 v19, v2

    move-wide/from16 v29, v4

    goto/16 :goto_10

    .line 529
    :cond_11
    invoke-virtual {v13}, Lcom/android/server/backup/transport/BackupTransportClient;->cancelFullBackup()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    .line 532
    :cond_12
    :goto_d
    :try_start_1f
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    .line 543
    if-nez v7, :cond_13

    .line 545
    if-eqz v2, :cond_13

    .line 548
    move v6, v2

    .end local v7    # "backupPackageStatus":I
    .local v6, "backupPackageStatus":I
    goto :goto_e

    .line 561
    .end local v6    # "backupPackageStatus":I
    .restart local v7    # "backupPackageStatus":I
    :cond_13
    move v6, v7

    .end local v7    # "backupPackageStatus":I
    .restart local v6    # "backupPackageStatus":I
    :goto_e
    if-eqz v6, :cond_14

    .line 562
    :try_start_20
    const-string v7, "PFTBT"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "backupRunnerResult":I
    .local v19, "backupRunnerResult":I
    const-string v2, "Error "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " backing up "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 561
    .end local v19    # "backupRunnerResult":I
    .restart local v2    # "backupRunnerResult":I
    :cond_14
    move/from16 v19, v2

    .line 568
    .end local v2    # "backupRunnerResult":I
    .restart local v19    # "backupRunnerResult":I
    :goto_f
    invoke-virtual {v13}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    move-result-wide v29
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    move-wide/from16 v31, v29

    .line 569
    :try_start_21
    const-string v2, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transport suggested backoff="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    move-wide/from16 v29, v4

    move-wide/from16 v4, v31

    .end local v31    # "backoff":J
    .local v4, "backoff":J
    .restart local v29    # "quota":J
    :try_start_22
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    goto :goto_11

    .line 663
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "backupPackageStatus":I
    .end local v9    # "buffer":[B
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v14    # "totalRead":J
    .end local v19    # "backupRunnerResult":I
    .end local v20    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "i":I
    .end local v24    # "preflightResult":J
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .end local v29    # "quota":J
    .end local v33    # "in":Ljava/io/FileInputStream;
    :catchall_10
    move-exception v0

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    goto/16 :goto_21

    .line 650
    :catch_4
    move-exception v0

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    goto/16 :goto_1e

    .line 663
    .end local v4    # "backoff":J
    .restart local v31    # "backoff":J
    :catchall_11
    move-exception v0

    move-wide/from16 v4, v31

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    .end local v31    # "backoff":J
    .restart local v4    # "backoff":J
    goto/16 :goto_21

    .line 650
    .end local v4    # "backoff":J
    .restart local v31    # "backoff":J
    :catch_5
    move-exception v0

    move-wide/from16 v4, v31

    move-object v2, v8

    move-object v3, v10

    move/from16 v9, v22

    .end local v31    # "backoff":J
    .restart local v4    # "backoff":J
    goto/16 :goto_1e

    .line 532
    .restart local v2    # "backupRunnerResult":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v4, "quota":J
    .restart local v7    # "backupPackageStatus":I
    .restart local v9    # "buffer":[B
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v14    # "totalRead":J
    .restart local v20    # "out":Ljava/io/FileOutputStream;
    .restart local v23    # "i":I
    .restart local v24    # "preflightResult":J
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    .restart local v31    # "backoff":J
    .restart local v33    # "in":Ljava/io/FileInputStream;
    :catchall_12
    move-exception v0

    move/from16 v19, v2

    move-wide/from16 v29, v4

    .end local v2    # "backupRunnerResult":I
    .end local v4    # "quota":J
    .restart local v19    # "backupRunnerResult":I
    .restart local v29    # "quota":J
    :goto_10
    :try_start_23
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_24
    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_13
    move-exception v0

    goto :goto_10

    .line 441
    .end local v7    # "backupPackageStatus":I
    .end local v19    # "backupRunnerResult":I
    .end local v20    # "out":Ljava/io/FileOutputStream;
    .end local v24    # "preflightResult":J
    .end local v26    # "chunkSizeInBytes":I
    .end local v29    # "quota":J
    .end local v31    # "backoff":J
    .end local v33    # "in":Ljava/io/FileInputStream;
    .local v5, "quota":J
    .local v12, "chunkSizeInBytes":I
    .local v14, "backoff":J
    .local v21, "backupPackageStatus":I
    :cond_15
    move-wide/from16 v29, v5

    move/from16 v26, v12

    move-wide/from16 v31, v14

    .end local v5    # "quota":J
    .end local v12    # "chunkSizeInBytes":I
    .end local v14    # "backoff":J
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v29    # "quota":J
    .restart local v31    # "backoff":J
    move/from16 v6, v21

    move-wide/from16 v4, v31

    .line 574
    .end local v21    # "backupPackageStatus":I
    .end local v31    # "backoff":J
    .local v4, "backoff":J
    .restart local v6    # "backupPackageStatus":I
    :goto_11
    :try_start_25
    iget-boolean v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v2, :cond_16

    .line 575
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 575
    invoke-virtual {v2, v11, v14, v15}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 579
    :cond_16
    const/16 v2, -0x3ea

    if-ne v6, v2, :cond_18

    .line 580
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v11, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 582
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport rejected backup of "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", skipping"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string/jumbo v0, "transport rejected"

    filled-new-array {v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xb19

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 588
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v0, :cond_17

    .line 589
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v12, 0x1

    goto/16 :goto_13

    .line 588
    :cond_17
    const/4 v12, 0x1

    goto/16 :goto_13

    .line 593
    :cond_18
    if-ne v6, v0, :cond_19

    .line 594
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 595
    invoke-static {v2, v11, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 597
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport quota exceeded for package: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 v0, 0xb1d

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 599
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v12, 0x1

    goto/16 :goto_13

    .line 602
    :cond_19
    const/16 v0, -0x3eb

    if-ne v6, v0, :cond_1a

    .line 603
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 604
    invoke-static {v2, v11, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 606
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application failure for package: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v0, 0xb07

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 608
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v12, 0x1

    goto/16 :goto_13

    .line 611
    :cond_1a
    const/16 v0, -0x7d3

    if-ne v6, v0, :cond_1b

    .line 612
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 613
    invoke-static {v2, v11, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 615
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backup cancelled. package="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", entire session cancelled="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v0, 0xb1e

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 618
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    const/4 v12, 0x1

    goto/16 :goto_13

    .line 621
    :cond_1b
    if-eqz v6, :cond_1f

    .line 622
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 623
    const/16 v2, -0x3e8

    invoke-static {v0, v11, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 625
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport failed; aborting backup: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v12, 0x0

    new-array v0, v12, [Ljava/lang/Object;

    const/16 v2, 0xb1a

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    .line 628
    const/16 v2, -0x3e8

    .line 629
    .end local v22    # "backupRunStatus":I
    .local v2, "backupRunStatus":I
    :try_start_26
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v12, 0x1

    invoke-virtual {v0, v7, v12}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_15

    .line 663
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_1c

    .line 664
    const/16 v2, -0x7d3

    move v7, v2

    goto :goto_12

    .line 663
    :cond_1c
    move v7, v2

    .line 667
    .end local v2    # "backupRunStatus":I
    .local v7, "backupRunStatus":I
    :goto_12
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Full backup completed with status: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_1d

    .line 676
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_1d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 680
    :try_start_27
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v12
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_1e

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_1e
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 631
    return-void

    .line 681
    :catchall_14
    move-exception v0

    :try_start_28
    monitor-exit v12
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    throw v0

    .line 663
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "backupPackageStatus":I
    .end local v7    # "backupRunStatus":I
    .end local v9    # "buffer":[B
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v23    # "i":I
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .end local v29    # "quota":J
    .restart local v2    # "backupRunStatus":I
    :catchall_15
    move-exception v0

    move v9, v2

    move-object v2, v8

    move-object v3, v10

    goto/16 :goto_21

    .line 650
    :catch_6
    move-exception v0

    move v9, v2

    move-object v2, v8

    move-object v3, v10

    goto/16 :goto_1e

    .line 634
    .end local v2    # "backupRunStatus":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v6    # "backupPackageStatus":I
    .restart local v9    # "buffer":[B
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v22    # "backupRunStatus":I
    .restart local v23    # "i":I
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    .restart local v29    # "quota":J
    :cond_1f
    const/4 v12, 0x1

    :try_start_29
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 635
    const/4 v2, 0x0

    invoke-static {v0, v11, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 637
    const/16 v0, 0xb1b

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 638
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 640
    :goto_13
    invoke-virtual {v1, v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 641
    invoke-virtual {v1, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 642
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_20

    .line 643
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unbinding agent in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_4
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    .line 645
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_4
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 647
    :goto_14
    goto :goto_15

    :catch_7
    move-exception v0

    goto :goto_14

    .line 404
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "backupPackageStatus":I
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v28    # "flags":I
    .end local v29    # "quota":J
    :cond_20
    :goto_15
    add-int/lit8 v2, v23, 0x1

    move-object v7, v9

    move-object v3, v10

    move v14, v12

    move/from16 v9, v22

    move/from16 v6, v26

    move/from16 v15, v27

    const/4 v11, 0x0

    .end local v23    # "i":I
    .local v2, "i":I
    goto/16 :goto_2

    .line 440
    .end local v2    # "i":I
    .end local v4    # "backoff":J
    .end local v26    # "chunkSizeInBytes":I
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v5    # "quota":J
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v12    # "chunkSizeInBytes":I
    .restart local v14    # "backoff":J
    .restart local v23    # "i":I
    .restart local v28    # "flags":I
    :catchall_16
    move-exception v0

    move-wide/from16 v29, v5

    move/from16 v26, v12

    move-wide/from16 v31, v14

    move-object v2, v8

    move-wide/from16 v19, v29

    .end local v5    # "quota":J
    .end local v12    # "chunkSizeInBytes":I
    .end local v14    # "backoff":J
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v29    # "quota":J
    .restart local v31    # "backoff":J
    goto :goto_16

    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v22    # "backupRunStatus":I
    .end local v23    # "i":I
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .end local v29    # "quota":J
    .end local v31    # "backoff":J
    .restart local v2    # "i":I
    .restart local v4    # "backoff":J
    .local v6, "chunkSizeInBytes":I
    .local v7, "buffer":[B
    .local v9, "backupRunStatus":I
    .local v12, "currentPackage":Landroid/content/pm/PackageInfo;
    .local v14, "flags":I
    .restart local v15    # "N":I
    .local v19, "quota":J
    :catchall_17
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v24, v3

    move-wide/from16 v31, v4

    move/from16 v26, v6

    move/from16 v22, v9

    move-object v3, v12

    move/from16 v28, v14

    move/from16 v27, v15

    move-object v9, v7

    move-object v2, v8

    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v12    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v14    # "flags":I
    .end local v15    # "N":I
    .local v2, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .local v9, "buffer":[B
    .restart local v22    # "backupRunStatus":I
    .restart local v23    # "i":I
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    .restart local v31    # "backoff":J
    :goto_16
    :try_start_2b
    monitor-exit v24
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_19

    .end local v2    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .end local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_start_2c
    throw v0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_8
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    .line 663
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v9    # "buffer":[B
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v19    # "quota":J
    .end local v23    # "i":I
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .restart local v2    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    .restart local p0    # "this":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :catchall_18
    move-exception v0

    move-object v3, v10

    move/from16 v9, v22

    move-wide/from16 v4, v31

    goto/16 :goto_21

    .line 650
    :catch_8
    move-exception v0

    move-object v3, v10

    move/from16 v9, v22

    move-wide/from16 v4, v31

    goto/16 :goto_1e

    .line 440
    .restart local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .restart local v9    # "buffer":[B
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v19    # "quota":J
    .restart local v23    # "i":I
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v27    # "N":I
    .restart local v28    # "flags":I
    :catchall_19
    move-exception v0

    goto :goto_16

    .line 663
    .end local v2    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "currentPackage":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v19    # "quota":J
    .end local v22    # "backupRunStatus":I
    .end local v23    # "i":I
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .end local v28    # "flags":I
    .end local v31    # "backoff":J
    .restart local v4    # "backoff":J
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .local v9, "backupRunStatus":I
    :catchall_1a
    move-exception v0

    move-wide/from16 v31, v4

    move/from16 v22, v9

    move-object v2, v8

    move-object v3, v10

    .end local v4    # "backoff":J
    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    goto/16 :goto_21

    .line 650
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .restart local v4    # "backoff":J
    .restart local v9    # "backupRunStatus":I
    :catch_9
    move-exception v0

    move-wide/from16 v31, v4

    move/from16 v22, v9

    move-object v2, v8

    move-object v3, v10

    .end local v4    # "backoff":J
    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    goto/16 :goto_1e

    .line 663
    .end local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .local v3, "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "backoff":J
    .restart local v9    # "backupRunStatus":I
    :catchall_1b
    move-exception v0

    move-wide/from16 v31, v4

    move/from16 v22, v9

    move-object v2, v8

    .end local v4    # "backoff":J
    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    goto/16 :goto_21

    .line 650
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .restart local v4    # "backoff":J
    .restart local v9    # "backupRunStatus":I
    :catch_a
    move-exception v0

    move-wide/from16 v31, v4

    move/from16 v22, v9

    move-object v2, v8

    .end local v4    # "backoff":J
    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    .restart local v31    # "backoff":J
    goto/16 :goto_1e

    .line 404
    .end local v22    # "backupRunStatus":I
    .end local v31    # "backoff":J
    .local v2, "i":I
    .restart local v4    # "backoff":J
    .restart local v6    # "chunkSizeInBytes":I
    .restart local v7    # "buffer":[B
    .restart local v9    # "backupRunStatus":I
    .restart local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .restart local v15    # "N":I
    :cond_21
    move/from16 v23, v2

    move-wide/from16 v31, v4

    move/from16 v26, v6

    move/from16 v22, v9

    move/from16 v27, v15

    move-object v9, v7

    .end local v2    # "i":I
    .end local v4    # "backoff":J
    .end local v6    # "chunkSizeInBytes":I
    .end local v7    # "buffer":[B
    .end local v15    # "N":I
    .local v9, "buffer":[B
    .restart local v22    # "backupRunStatus":I
    .restart local v23    # "i":I
    .restart local v26    # "chunkSizeInBytes":I
    .restart local v27    # "N":I
    .restart local v31    # "backoff":J
    move-object v10, v3

    .line 663
    .end local v3    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v9    # "buffer":[B
    .end local v13    # "transport":Lcom/android/server/backup/transport/BackupTransportClient;
    .end local v23    # "i":I
    .end local v26    # "chunkSizeInBytes":I
    .end local v27    # "N":I
    .restart local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_17
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_22

    .line 664
    const/16 v9, -0x7d3

    .end local v22    # "backupRunStatus":I
    .local v9, "backupRunStatus":I
    goto :goto_18

    .line 663
    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    :cond_22
    move/from16 v9, v22

    .line 667
    .end local v22    # "backupRunStatus":I
    .restart local v9    # "backupRunStatus":I
    :goto_18
    const-string v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full backup completed with status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v10}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v8}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_23

    .line 676
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_23
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 680
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1c

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_24

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v14, v31

    .end local v31    # "backoff":J
    .local v14, "backoff":J
    invoke-virtual {v0, v14, v15}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_19

    .line 689
    .end local v14    # "backoff":J
    .restart local v31    # "backoff":J
    :cond_24
    move-wide/from16 v14, v31

    .line 694
    .end local v31    # "backoff":J
    .restart local v14    # "backoff":J
    :goto_19
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 699
    move-wide v4, v14

    goto/16 :goto_20

    .line 681
    .end local v14    # "backoff":J
    .restart local v31    # "backoff":J
    :catchall_1c
    move-exception v0

    move-wide/from16 v14, v31

    .end local v31    # "backoff":J
    .restart local v14    # "backoff":J
    :goto_1a
    :try_start_2e
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1d

    throw v0

    :catchall_1d
    move-exception v0

    goto :goto_1a

    .line 663
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v14    # "backoff":J
    .local v2, "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "backoff":J
    :catchall_1e
    move-exception v0

    move/from16 v22, v9

    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    goto/16 :goto_21

    .line 650
    .end local v22    # "backupRunStatus":I
    .restart local v9    # "backupRunStatus":I
    :catch_b
    move-exception v0

    move/from16 v22, v9

    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    goto/16 :goto_1e

    .line 346
    .end local v22    # "backupRunStatus":I
    .restart local v9    # "backupRunStatus":I
    :cond_25
    move/from16 v22, v9

    .line 349
    .end local v9    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    :goto_1b
    :try_start_2f
    const-string v0, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "full backup requested but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 350
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " setupComplete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 351
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 355
    const/16 v0, 0xd

    move v6, v0

    .local v0, "monitoringEvent":I
    goto :goto_1c

    .line 357
    .end local v0    # "monitoringEvent":I
    :cond_26
    const/16 v0, 0xe

    move v6, v0

    .line 359
    .local v6, "monitoringEvent":I
    :goto_1c
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v0, v6, v14, v15, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 364
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_c
    .catchall {:try_start_2f .. :try_end_2f} :catchall_20

    .line 365
    const/16 v0, -0x7d1

    .line 663
    .end local v22    # "backupRunStatus":I
    .local v0, "backupRunStatus":I
    iget-boolean v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v7, :cond_27

    .line 664
    const/16 v0, -0x7d3

    move v7, v0

    goto :goto_1d

    .line 663
    :cond_27
    move v7, v0

    .line 667
    .end local v0    # "backupRunStatus":I
    .local v7, "backupRunStatus":I
    :goto_1d
    const-string v0, "PFTBT"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full backup completed with status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_28

    .line 676
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    iget v8, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v8}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_28
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 680
    :try_start_30
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1f

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v8, "PFTBT.run()"

    invoke-interface {v0, v8}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_29

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_29
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v8, "Full data backup pass finished."

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 366
    return-void

    .line 681
    :catchall_1f
    move-exception v0

    :try_start_31
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1f

    throw v0

    .line 663
    .end local v6    # "monitoringEvent":I
    .end local v7    # "backupRunStatus":I
    .restart local v22    # "backupRunStatus":I
    :catchall_20
    move-exception v0

    move/from16 v9, v22

    goto/16 :goto_21

    .line 650
    :catch_c
    move-exception v0

    move/from16 v9, v22

    .end local v22    # "backupRunStatus":I
    .restart local v9    # "backupRunStatus":I
    :goto_1e
    nop

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    const/16 v9, -0x3e8

    .line 652
    :try_start_32
    const-string v6, "PFTBT"

    const-string v7, "Exception trying full transport backup"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const-string v7, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 659
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    .line 657
    const/4 v14, 0x0

    invoke-static {v14, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 653
    const/16 v8, 0x13

    const/4 v15, 0x3

    invoke-virtual {v6, v8, v14, v15, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    .line 663
    .end local v0    # "e":Ljava/lang/Exception;
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v0, :cond_2a

    .line 664
    const/16 v0, -0x7d3

    move v6, v0

    .end local v9    # "backupRunStatus":I
    .local v0, "backupRunStatus":I
    goto :goto_1f

    .line 663
    .end local v0    # "backupRunStatus":I
    .restart local v9    # "backupRunStatus":I
    :cond_2a
    move v6, v9

    .line 667
    .end local v9    # "backupRunStatus":I
    .local v6, "backupRunStatus":I
    :goto_1f
    const-string v0, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v0, :cond_2b

    .line 676
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    iget v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v0, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_2b
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 680
    :try_start_33
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v7
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    .line 683
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v0, :cond_2c

    .line 690
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_2c
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v0, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 699
    move-object v8, v2

    move-object v10, v3

    move v9, v6

    .line 700
    .end local v2    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .end local v6    # "backupRunStatus":I
    .restart local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "backupRunStatus":I
    .restart local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    :goto_20
    return-void

    .line 681
    .end local v8    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .end local v9    # "backupRunStatus":I
    .end local v10    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "enginePipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "transportPipes":[Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "backupRunStatus":I
    :catchall_21
    move-exception v0

    :try_start_34
    monitor-exit v7
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_21

    throw v0

    .line 663
    .end local v6    # "backupRunStatus":I
    .restart local v9    # "backupRunStatus":I
    :goto_21
    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelled:Z

    if-eqz v6, :cond_2d

    .line 664
    const/16 v9, -0x7d3

    .line 667
    :cond_2d
    const-string v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Full backup completed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v6, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 670
    invoke-virtual {v1, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 671
    invoke-virtual {v1, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 673
    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 675
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_2e

    .line 676
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    iget v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 679
    :cond_2e
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 680
    :try_start_35
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V

    .line 681
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_22

    .line 683
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v7, "PFTBT.run()"

    invoke-interface {v6, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 685
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 689
    iget-boolean v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_2f

    .line 690
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 694
    :cond_2f
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 695
    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/BackupAgentConnectionManager;->clearNoRestrictedModePackages()V

    .line 697
    const-string v6, "PFTBT"

    const-string v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/backup/BackupWakeLock;->release()V

    .line 699
    throw v0

    .line 681
    :catchall_22
    move-exception v0

    :try_start_36
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_22

    throw v0
.end method

.method public unregisterTask()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-interface {v0, v1}, Lcom/android/server/backup/OperationStorage;->removeOperation(I)V

    .line 282
    return-void
.end method
