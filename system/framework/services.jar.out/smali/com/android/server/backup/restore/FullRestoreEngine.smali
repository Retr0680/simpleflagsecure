.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private mAppVersion:J

.field private final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field private mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field final mBuffer:[B

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mIsAdbRestore:Z

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mPipesClosed:Z

.field private final mPipesLock:Ljava/lang/Object;

.field private mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private final mUserId:I

.field private mWidgetData:[B


# direct methods
.method public static synthetic $r8$lambda$mvOpQ8iGB4ZvFtqRrTmz7hGfVD8(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->lambda$restoreOneFile$0(J)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 130
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 131
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 145
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 183
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 184
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 185
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 186
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 187
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 188
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 189
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 190
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 191
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 192
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "operationStorage"    # Lcom/android/server/backup/OperationStorage;
    .param p3, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p4, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p5, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p6, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "allowApks"    # Z
    .param p8, "ephemeralOpToken"    # I
    .param p9, "isAdbRestore"    # Z
    .param p10, "backupEligibilityRules"    # Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 154
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 88
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 130
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 131
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 145
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 155
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 156
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 157
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 158
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 159
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 160
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 161
    new-instance v0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {v0, p5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 162
    iput-object p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 163
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 164
    nop

    .line 165
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 167
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 168
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 169
    iput-object p10, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 171
    nop

    .line 173
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 177
    return-void
.end method

.method private bindToAgent(Lcom/android/server/backup/FileMetadata;)Landroid/app/IBackupAgent;
    .locals 4
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 791
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 793
    const-string/jumbo v2, "k"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    const/4 v2, 0x2

    goto :goto_0

    .line 795
    :cond_0
    const/4 v2, 0x3

    :goto_0
    iget-object v3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 796
    invoke-virtual {v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v3

    .line 791
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupAgentConnectionManager;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v0

    return-object v0
.end method

.method private static getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 655
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 761
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 768
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 765
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .locals 4
    .param p0, "file"    # Lcom/android/server/backup/FileMetadata;

    .line 660
    iget v0, p0, Lcom/android/server/backup/FileMetadata;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/backup/FileMetadata;->mode:J

    sget v2, Landroid/system/OsConstants;->S_IWUSR:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 731
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->getBackupDestination()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 734
    return v1

    .line 736
    :cond_0
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 740
    return v2

    .line 743
    :cond_1
    const-string/jumbo v0, "r"

    iget-object v3, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v3, "no_backup/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    return v2

    .line 757
    :cond_2
    return v1
.end method

.method private static isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z
    .locals 2
    .param p0, "parentDir"    # Lcom/android/server/backup/FileMetadata;
    .param p1, "childDir"    # Lcom/android/server/backup/FileMetadata;

    .line 648
    nop

    nop

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 650
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 651
    invoke-static {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getPathWithTrailingSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0
.end method

.method private static synthetic lambda$restoreOneFile$0(J)V
    .locals 0
    .param p0, "bytesRead"    # J

    .line 210
    return-void
.end method

.method private logBMMEvent(ILandroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "eventId"    # I
    .param p2, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .line 638
    nop

    .line 645
    return-void
.end method

.method private setUpPipes()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 666
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 667
    monitor-exit v0

    .line 668
    return-void

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 779
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 778
    const-string/jumbo v2, "packages_to_clear_data_before_full_restore"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    const/4 v1, 0x0

    return v1

    .line 786
    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 787
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 689
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_2

    .line 692
    if-eqz p2, :cond_1

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v2, v0

    .line 694
    .local v2, "token":I
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 696
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v5, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V

    .line 698
    .local v5, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 700
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    new-instance v0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 706
    .local v0, "runner":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-finished-runner"

    invoke-direct {v1, v0, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 707
    .end local v0    # "runner":Ljava/lang/Runnable;
    goto :goto_0

    .line 717
    .end local v2    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v5    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 708
    .restart local v2    # "token":I
    .restart local v3    # "fullBackupAgentTimeoutMillis":J
    .restart local v5    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 709
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 708
    invoke-interface {v0, v2, v1}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 712
    :goto_0
    invoke-virtual {v5}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 715
    .end local v2    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v5    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupAgentConnectionManager()Lcom/android/server/backup/BackupAgentConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    goto :goto_2

    .line 717
    :goto_1
    nop

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 722
    :cond_2
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 675
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 677
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 678
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 680
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    goto :goto_0

    .line 685
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 681
    :catch_0
    move-exception v1

    nop

    .line 682
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 686
    return-void

    .line 685
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    .line 725
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 726
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 728
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 55
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .line 205
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v0

    const/4 v13, 0x0

    const-string v14, "BackupManagerService"

    if-nez v0, :cond_0

    .line 206
    const-string v0, "Restore engine used after halting"

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v13

    .line 210
    :cond_0
    new-instance v9, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    .line 212
    .local v9, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v15, p7

    invoke-direct {v0, v2, v9, v15}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v3, v0

    .line 220
    .local v3, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v4, -0x3

    const/16 v25, 0x1

    :try_start_0
    invoke-virtual {v3}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v19

    move-object/from16 v7, v19

    .line 221
    .local v7, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v7, :cond_1e

    .line 226
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v5, v0

    .line 227
    .local v5, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1e

    const/4 v6, 0x0

    if-nez v0, :cond_3

    .line 230
    if-eqz v12, :cond_1

    .line 231
    :try_start_1
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const/16 v0, 0x4c

    invoke-direct {v1, v0, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected data for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but saw "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1, v4}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    .line 237
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 238
    return v13

    .line 592
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_0
    move-exception v0

    move-object v13, v3

    move-object/from16 v24, v9

    move/from16 v3, p6

    goto/16 :goto_19

    .line 244
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v8, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_3

    .line 251
    const-string v0, "Saw new package; finalizing old one"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 254
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v0, v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 255
    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 256
    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :cond_3
    :try_start_2
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v8, "_manifest"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1e

    if-eqz v0, :cond_4

    .line 261
    :try_start_3
    invoke-virtual {v3, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v20
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 265
    .local v20, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v40, v14

    :try_start_4
    iget-wide v13, v7, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 266
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/content/pm/PackageManagerInternal;

    .line 268
    .local v21, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 269
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 271
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v24
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 268
    move/from16 v18, p5

    move/from16 v22, v0

    move-object/from16 v16, v3

    move-object/from16 v23, v6

    move-object/from16 v19, v7

    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .local v16, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v19, "info":Lcom/android/server/backup/FileMetadata;
    :try_start_5
    invoke-virtual/range {v16 .. v24}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v13, v16

    move-object/from16 v3, v20

    .line 272
    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v19    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    .local v0, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v3, "signatures":[Landroid/content/pm/Signature;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_6
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v8, v7, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v8, v7, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v27, v5

    .end local v5    # "pkg":Ljava/lang/String;
    .local v27, "pkg":Ljava/lang/String;
    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 279
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v5, v27

    .end local v27    # "pkg":Ljava/lang/String;
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 280
    .end local v0    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    .end local v21    # "pmi":Landroid/content/pm/PackageManagerInternal;
    move/from16 v3, p6

    move-object/from16 v24, v9

    goto/16 :goto_17

    .line 592
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_1
    move-exception v0

    move/from16 v3, p6

    move-object/from16 v24, v9

    move-object/from16 v14, v40

    goto/16 :goto_19

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_2
    move-exception v0

    move-object/from16 v13, v16

    move/from16 v3, p6

    move-object/from16 v24, v9

    move-object/from16 v14, v40

    .end local v16    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_19

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_3
    move-exception v0

    move-object v13, v3

    move/from16 v3, p6

    move-object/from16 v24, v9

    move-object/from16 v14, v40

    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_0
    goto/16 :goto_19

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_4
    move-exception v0

    move-object v13, v3

    move-object/from16 v40, v14

    move/from16 v3, p6

    move-object/from16 v24, v9

    goto :goto_0

    .line 280
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_4
    move-object v13, v3

    move-object/from16 v40, v14

    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_7
    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v3, "_meta"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1d

    if-eqz v0, :cond_5

    .line 282
    :try_start_8
    invoke-virtual {v13, v7}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 288
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 290
    invoke-virtual {v13}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-object v3, v0

    .line 292
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v3, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_9
    iget-wide v14, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    move-object v0, v3

    move-object/from16 v24, v9

    move/from16 v3, p6

    goto/16 :goto_18

    .line 592
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_5
    move-exception v0

    move-object v15, v3

    move-object/from16 v24, v9

    move-object/from16 v14, v40

    move/from16 v3, p6

    goto/16 :goto_19

    .line 296
    .end local v3    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_5
    const/4 v0, 0x1

    .line 297
    .local v0, "okay":Z
    :try_start_a
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v14, v3

    .line 298
    .local v14, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v3, Lcom/android/server/backup/restore/FullRestoreEngine$1;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1d

    const-string v4, "a"

    packed-switch v3, :pswitch_data_0

    .line 347
    :try_start_b
    const-string v3, "Invalid policy from manifest"
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    move-object/from16 v10, v40

    :try_start_c
    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    .line 349
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v5

    move-object/from16 v17, v14

    move-object v14, v10

    goto/16 :goto_4

    .line 592
    .end local v0    # "okay":Z
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_6
    move-exception v0

    :goto_1
    move/from16 v3, p6

    move-object/from16 v24, v9

    move-object v14, v10

    goto/16 :goto_19

    :catch_7
    move-exception v0

    move-object/from16 v10, v40

    goto :goto_1

    .line 333
    .restart local v0    # "okay":Z
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_0
    move-object/from16 v10, v40

    iget-object v3, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 334
    const-string v3, "apk present but ACCEPT"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 339
    const/4 v0, 0x0

    move-object v15, v5

    move-object/from16 v17, v14

    move-object v14, v10

    goto/16 :goto_4

    .line 333
    :cond_6
    move-object v15, v5

    move-object/from16 v17, v14

    move-object v14, v10

    goto/16 :goto_4

    .line 306
    :pswitch_1
    move-object/from16 v10, v40

    :try_start_d
    iget-object v3, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 307
    const-string v3, "APK file; installing"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    .local v3, "installerPackageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 311
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v8, v3

    move-object v3, v4

    const/4 v6, -0x3

    .end local v3    # "installerPackageName":Ljava/lang/String;
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    move-object/from16 v27, v5

    .end local v5    # "pkg":Ljava/lang/String;
    .restart local v27    # "pkg":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move/from16 v16, v6

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    move-object/from16 v40, v10

    :try_start_e
    iget v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 310
    move-object/from16 v17, v14

    move-object/from16 v15, v27

    move-object/from16 v14, v40

    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v27    # "pkg":Ljava/lang/String;
    .local v15, "pkg":Ljava/lang/String;
    .local v17, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_f
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z

    move-result v3

    .line 316
    .local v3, "isSuccessfullyInstalled":Z
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v3, :cond_7

    .line 317
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_3

    .line 592
    .end local v0    # "okay":Z
    .end local v3    # "isSuccessfullyInstalled":Z
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_8
    move-exception v0

    :goto_2
    move/from16 v3, p6

    move-object/from16 v15, p7

    move-object/from16 v24, v9

    goto/16 :goto_19

    .line 318
    .restart local v0    # "okay":Z
    .restart local v3    # "isSuccessfullyInstalled":Z
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v8    # "installerPackageName":Ljava/lang/String;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_7
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 316
    :goto_3
    invoke-virtual {v4, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 323
    return v25

    .line 592
    .end local v0    # "okay":Z
    .end local v3    # "isSuccessfullyInstalled":Z
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_9
    move-exception v0

    move-object/from16 v14, v40

    goto :goto_2

    :catch_a
    move-exception v0

    move-object v14, v10

    goto :goto_2

    .line 327
    .restart local v0    # "okay":Z
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_8
    move-object v15, v5

    move-object/from16 v17, v14

    move-object v14, v10

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 328
    const/4 v0, 0x0

    .line 330
    goto :goto_4

    .line 300
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_2
    move-object v15, v5

    move-object/from16 v17, v14

    move-object/from16 v14, v40

    .end local v5    # "pkg":Ljava/lang/String;
    .end local v14    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v0, 0x0

    .line 301
    nop

    .line 354
    :goto_4
    :try_start_10
    invoke-direct {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1c

    if-eqz v3, :cond_9

    :try_start_11
    iget-object v3, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    goto :goto_5

    :cond_a
    move v3, v0

    goto :goto_6

    .line 355
    :goto_5
    const/4 v0, 0x0

    move v3, v0

    .line 363
    .end local v0    # "okay":Z
    .local v3, "okay":Z
    :goto_6
    if-eqz v3, :cond_e

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    if-nez v0, :cond_e

    .line 369
    :try_start_12
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 370
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 371
    const/4 v5, 0x0

    invoke-virtual {v0, v15, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 375
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 382
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 384
    .local v0, "forceClear":Z
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v4, :cond_b

    if-eqz v0, :cond_c

    .line 385
    :cond_b
    const-string v4, "Clearing app data preparatory to full restore"

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v15}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 394
    :cond_c
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 406
    .end local v0    # "forceClear":Z
    :catch_b
    move-exception v0

    goto :goto_8

    .line 403
    :cond_d
    :goto_7
    invoke-direct {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 404
    invoke-direct {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->bindToAgent(Lcom/android/server/backup/FileMetadata;)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 405
    iput-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_b

    .line 408
    nop

    .line 410
    :goto_8
    :try_start_13
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_e

    .line 411
    const/16 v0, 0x4d

    invoke-direct {v1, v0, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v3, 0x0

    .line 416
    invoke-direct {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 417
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_e
    if-eqz v3, :cond_f

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 426
    const/4 v3, 0x0

    .line 429
    :cond_f
    :try_start_14
    invoke-virtual {v1, v7}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 431
    const/4 v3, 0x0

    .line 438
    :cond_10
    if-eqz v3, :cond_1a

    .line 439
    const/4 v8, 0x1

    .line 440
    .local v8, "agentSuccess":Z
    const-wide/16 v18, 0x0

    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->size:J

    .line 441
    .local v4, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1c

    move v10, v0

    .line 442
    .local v10, "isSharedStorage":Z
    if-eqz v10, :cond_11

    .line 443
    :try_start_15
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v20
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    move-wide/from16 v21, v20

    goto :goto_9

    .line 444
    :cond_11
    :try_start_16
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v21
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1c

    :goto_9
    move-wide/from16 v28, v21

    .line 447
    .local v28, "timeout":J
    :try_start_17
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v31, 0x1

    move/from16 v27, p6

    move-object/from16 v26, v0

    move-object/from16 v30, v6

    invoke-virtual/range {v26 .. v31}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_16

    move-wide/from16 v21, v28

    .line 452
    .end local v28    # "timeout":J
    .local v21, "timeout":J
    :try_start_18
    const-string/jumbo v0, "obb"

    iget-object v6, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_12

    const-string v6, " : "

    if-eqz v0, :cond_12

    .line 453
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_12

    move/from16 v23, v3

    .end local v3    # "okay":Z
    .local v23, "okay":Z
    :try_start_1a
    const-string v3, "Restoring OBB file for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v39, 0x0

    aget-object v28, v3, v39
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_10

    move-wide/from16 v53, v4

    .end local v4    # "toCopy":J
    .local v53, "toCopy":J
    :try_start_1b
    iget-wide v3, v7, Lcom/android/server/backup/FileMetadata;->size:J

    iget v5, v7, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-wide/from16 v29, v3

    iget-wide v3, v7, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v33, v3

    iget-wide v3, v7, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 458
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v38
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_e

    .line 455
    move/from16 v37, p6

    move-wide/from16 v35, v3

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v27, v15

    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v27    # "pkg":Ljava/lang/String;
    :try_start_1c
    invoke-virtual/range {v26 .. v38}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_c

    .end local v27    # "pkg":Ljava/lang/String;
    .restart local v15    # "pkg":Ljava/lang/String;
    goto/16 :goto_a

    .line 496
    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v27    # "pkg":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v15, v27

    .end local v27    # "pkg":Ljava/lang/String;
    .restart local v15    # "pkg":Ljava/lang/String;
    goto/16 :goto_b

    .line 491
    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v27    # "pkg":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v15, v27

    .end local v27    # "pkg":Ljava/lang/String;
    .restart local v15    # "pkg":Ljava/lang/String;
    goto/16 :goto_c

    .line 496
    :catch_e
    move-exception v0

    goto/16 :goto_b

    .line 491
    :catch_f
    move-exception v0

    goto/16 :goto_c

    .line 496
    .end local v53    # "toCopy":J
    .restart local v4    # "toCopy":J
    :catch_10
    move-exception v0

    move-wide/from16 v53, v4

    .end local v4    # "toCopy":J
    .restart local v53    # "toCopy":J
    goto/16 :goto_b

    .line 491
    .end local v53    # "toCopy":J
    .restart local v4    # "toCopy":J
    :catch_11
    move-exception v0

    move-wide/from16 v53, v4

    .end local v4    # "toCopy":J
    .restart local v53    # "toCopy":J
    goto/16 :goto_c

    .line 496
    .end local v23    # "okay":Z
    .end local v53    # "toCopy":J
    .restart local v3    # "okay":Z
    .restart local v4    # "toCopy":J
    :catch_12
    move-exception v0

    move/from16 v23, v3

    move-wide/from16 v53, v4

    .end local v3    # "okay":Z
    .end local v4    # "toCopy":J
    .restart local v23    # "okay":Z
    .restart local v53    # "toCopy":J
    goto/16 :goto_b

    .line 491
    .end local v23    # "okay":Z
    .end local v53    # "toCopy":J
    .restart local v3    # "okay":Z
    .restart local v4    # "toCopy":J
    :catch_13
    move-exception v0

    move/from16 v23, v3

    move-wide/from16 v53, v4

    .end local v3    # "okay":Z
    .end local v4    # "toCopy":J
    .restart local v23    # "okay":Z
    .restart local v53    # "toCopy":J
    goto/16 :goto_c

    .line 459
    .end local v23    # "okay":Z
    .end local v53    # "toCopy":J
    .restart local v3    # "okay":Z
    .restart local v4    # "toCopy":J
    :cond_12
    move/from16 v23, v3

    move-wide/from16 v53, v4

    .end local v3    # "okay":Z
    .end local v4    # "toCopy":J
    .restart local v23    # "okay":Z
    .restart local v53    # "toCopy":J
    :try_start_1d
    const-string/jumbo v0, "k"

    iget-object v3, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring key-value file for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-wide v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v3, v7, Lcom/android/server/backup/FileMetadata;->version:J

    .line 466
    new-instance v26, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 469
    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v28

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v39, 0x0

    aget-object v30, v3, v39

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e

    move/from16 v32, p6

    move-object/from16 v27, v0

    move-object/from16 v31, v3

    move-object/from16 v29, v7

    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    :try_start_1e
    invoke-direct/range {v26 .. v32}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_14

    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    move-object/from16 v0, v26

    .line 471
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    :try_start_1f
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 472
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    goto/16 :goto_a

    .line 496
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v29    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_14
    move-exception v0

    move-object/from16 v7, v29

    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    goto/16 :goto_b

    .line 491
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v29    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_15
    move-exception v0

    move-object/from16 v7, v29

    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    goto/16 :goto_c

    .line 480
    :cond_13
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, "system"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 481
    const-string/jumbo v0, "system process agent - spinning a thread"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v26, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v39, 0x0

    aget-object v30, v4, v39
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_e

    move/from16 v31, p6

    move-object/from16 v27, v0

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v29    # "info":Lcom/android/server/backup/FileMetadata;
    :try_start_20
    invoke-direct/range {v26 .. v31}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_14

    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    move-object/from16 v0, v26

    .line 484
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    :try_start_21
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 485
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    goto :goto_a

    .line 486
    :cond_14
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/16 v39, 0x0

    aget-object v41, v3, v39

    iget-wide v3, v7, Lcom/android/server/backup/FileMetadata;->size:J

    iget v5, v7, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v6, v7, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v40, v0

    iget-object v0, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-wide/from16 v42, v3

    iget-wide v3, v7, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v47, v3

    iget-wide v3, v7, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object/from16 v46, v0

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 488
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v52

    .line 486
    move/from16 v51, p6

    move-wide/from16 v49, v3

    move/from16 v44, v5

    move-object/from16 v45, v6

    invoke-interface/range {v40 .. v52}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_e

    .line 505
    :goto_a
    move/from16 v3, v23

    goto :goto_d

    .line 496
    .end local v21    # "timeout":J
    .end local v23    # "okay":Z
    .end local v53    # "toCopy":J
    .restart local v3    # "okay":Z
    .restart local v4    # "toCopy":J
    .restart local v28    # "timeout":J
    :catch_16
    move-exception v0

    move/from16 v23, v3

    move-wide/from16 v53, v4

    move-wide/from16 v21, v28

    .end local v3    # "okay":Z
    .end local v4    # "toCopy":J
    .end local v28    # "timeout":J
    .restart local v21    # "timeout":J
    .restart local v23    # "okay":Z
    .restart local v53    # "toCopy":J
    goto :goto_b

    .line 491
    .end local v21    # "timeout":J
    .end local v23    # "okay":Z
    .end local v53    # "toCopy":J
    .restart local v3    # "okay":Z
    .restart local v4    # "toCopy":J
    .restart local v28    # "timeout":J
    :catch_17
    move-exception v0

    move/from16 v23, v3

    move-wide/from16 v53, v4

    move-wide/from16 v21, v28

    .end local v3    # "okay":Z
    .end local v4    # "toCopy":J
    .end local v28    # "timeout":J
    .restart local v21    # "timeout":J
    .restart local v23    # "okay":Z
    .restart local v53    # "toCopy":J
    goto :goto_c

    .line 496
    :goto_b
    nop

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v3, 0x4e

    :try_start_22
    invoke-direct {v1, v3, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 502
    const-string v3, "Agent crashed during full restore"

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_8

    .line 503
    const/4 v8, 0x0

    .line 504
    const/4 v3, 0x0

    .end local v23    # "okay":Z
    .restart local v3    # "okay":Z
    goto :goto_d

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "okay":Z
    .restart local v23    # "okay":Z
    :goto_c
    nop

    .line 493
    .local v0, "e":Ljava/io/IOException;
    :try_start_23
    const-string v3, "Couldn\'t establish restore"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v8, 0x0

    .line 495
    const/4 v3, 0x0

    .line 505
    .end local v0    # "e":Ljava/io/IOException;
    .end local v23    # "okay":Z
    .restart local v3    # "okay":Z
    nop

    .line 508
    :goto_d
    if-eqz v3, :cond_19

    .line 512
    const/4 v0, 0x1

    .line 513
    .local v0, "pipeOkay":Z
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v5, v25

    .line 514
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1c

    move/from16 v23, v0

    move-wide/from16 v5, v53

    .line 515
    .end local v0    # "pipeOkay":Z
    .end local v53    # "toCopy":J
    .local v4, "pipe":Ljava/io/FileOutputStream;
    .local v5, "toCopy":J
    .local v23, "pipeOkay":Z
    :goto_e
    cmp-long v0, v5, v18

    if-lez v0, :cond_18

    .line 516
    :try_start_24
    array-length v0, v11
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1a

    move/from16 v26, v8

    move-object/from16 v24, v9

    .end local v8    # "agentSuccess":Z
    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v24, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v26, "agentSuccess":Z
    int-to-long v8, v0

    cmp-long v0, v5, v8

    if-lez v0, :cond_15

    .line 517
    :try_start_25
    array-length v0, v11

    goto :goto_10

    .line 592
    .end local v3    # "okay":Z
    .end local v4    # "pipe":Ljava/io/FileOutputStream;
    .end local v5    # "toCopy":J
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "isSharedStorage":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v21    # "timeout":J
    .end local v23    # "pipeOkay":Z
    .end local v26    # "agentSuccess":Z
    :catch_18
    move-exception v0

    move/from16 v3, p6

    :goto_f
    move-object/from16 v15, p7

    goto/16 :goto_19

    .line 517
    .restart local v3    # "okay":Z
    .restart local v4    # "pipe":Ljava/io/FileOutputStream;
    .restart local v5    # "toCopy":J
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v10    # "isSharedStorage":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v21    # "timeout":J
    .restart local v23    # "pipeOkay":Z
    .restart local v26    # "agentSuccess":Z
    :cond_15
    long-to-int v0, v5

    :goto_10
    move v8, v0

    .line 518
    .local v8, "toRead":I
    const/4 v9, 0x0

    invoke-virtual {v2, v11, v9, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_18

    move v9, v0

    .line 519
    .local v9, "nRead":I
    if-gtz v9, :cond_16

    .line 520
    move/from16 v29, v3

    move-wide/from16 v27, v5

    goto :goto_13

    .line 522
    :cond_16
    move-wide/from16 v27, v5

    .end local v5    # "toCopy":J
    .local v27, "toCopy":J
    int-to-long v5, v9

    sub-long v5, v27, v5

    .line 526
    .end local v27    # "toCopy":J
    .restart local v5    # "toCopy":J
    if-eqz v23, :cond_17

    .line 528
    move/from16 v29, v3

    const/4 v3, 0x0

    .end local v3    # "okay":Z
    .local v29, "okay":Z
    :try_start_26
    invoke-virtual {v4, v11, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_19

    .line 536
    goto :goto_11

    .line 529
    :catch_19
    move-exception v0

    .line 530
    .local v0, "e":Ljava/io/IOException;
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v0

    .end local v0    # "e":Ljava/io/IOException;
    .local v27, "e":Ljava/io/IOException;
    const-string v0, "Failed to write to restore pipe: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/16 v0, 0x4f

    invoke-direct {v1, v0, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 535
    const/4 v0, 0x0

    move/from16 v23, v0

    .end local v23    # "pipeOkay":Z
    .local v0, "pipeOkay":Z
    goto :goto_11

    .line 526
    .end local v0    # "pipeOkay":Z
    .end local v27    # "e":Ljava/io/IOException;
    .end local v29    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v23    # "pipeOkay":Z
    :cond_17
    move/from16 v29, v3

    .line 538
    .end local v3    # "okay":Z
    .end local v8    # "toRead":I
    .end local v9    # "nRead":I
    .restart local v29    # "okay":Z
    :goto_11
    move-object/from16 v9, v24

    move/from16 v8, v26

    move/from16 v3, v29

    goto :goto_e

    .line 592
    .end local v4    # "pipe":Ljava/io/FileOutputStream;
    .end local v5    # "toCopy":J
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v10    # "isSharedStorage":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v21    # "timeout":J
    .end local v23    # "pipeOkay":Z
    .end local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v26    # "agentSuccess":Z
    .end local v29    # "okay":Z
    .local v9, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_1a
    move-exception v0

    move-object/from16 v24, v9

    move/from16 v3, p6

    :goto_12
    move-object/from16 v15, p7

    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_19

    .line 515
    .end local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "okay":Z
    .restart local v4    # "pipe":Ljava/io/FileOutputStream;
    .restart local v5    # "toCopy":J
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .local v8, "agentSuccess":Z
    .restart local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v10    # "isSharedStorage":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v21    # "timeout":J
    .restart local v23    # "pipeOkay":Z
    :cond_18
    move/from16 v29, v3

    move-wide/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v24, v9

    .line 542
    .end local v3    # "okay":Z
    .end local v5    # "toCopy":J
    .end local v8    # "agentSuccess":Z
    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v26    # "agentSuccess":Z
    .local v27, "toCopy":J
    .restart local v29    # "okay":Z
    :goto_13
    iget-wide v5, v7, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v5, v6}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 546
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_18

    move/from16 v3, p6

    :try_start_28
    invoke-virtual {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    move v8, v0

    move-wide/from16 v4, v27

    .end local v26    # "agentSuccess":Z
    .restart local v8    # "agentSuccess":Z
    goto :goto_14

    .line 592
    .end local v4    # "pipe":Ljava/io/FileOutputStream;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "agentSuccess":Z
    .end local v10    # "isSharedStorage":Z
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v21    # "timeout":J
    .end local v23    # "pipeOkay":Z
    .end local v27    # "toCopy":J
    .end local v29    # "okay":Z
    :catch_1b
    move-exception v0

    goto :goto_f

    .end local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_1c
    move-exception v0

    move/from16 v3, p6

    move-object/from16 v24, v9

    goto :goto_12

    .line 508
    .restart local v3    # "okay":Z
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v8    # "agentSuccess":Z
    .restart local v10    # "isSharedStorage":Z
    .restart local v15    # "pkg":Ljava/lang/String;
    .restart local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v21    # "timeout":J
    .restart local v53    # "toCopy":J
    :cond_19
    move/from16 v29, v3

    move/from16 v26, v8

    move-object/from16 v24, v9

    move/from16 v3, p6

    .end local v3    # "okay":Z
    .end local v8    # "agentSuccess":Z
    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v26    # "agentSuccess":Z
    .restart local v29    # "okay":Z
    move-wide/from16 v4, v53

    .line 551
    .end local v26    # "agentSuccess":Z
    .end local v53    # "toCopy":J
    .local v4, "toCopy":J
    .restart local v8    # "agentSuccess":Z
    :goto_14
    if-nez v8, :cond_1b

    .line 552
    const/16 v0, 0x50

    invoke-direct {v1, v0, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Agent failure restoring "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; ending restore"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    invoke-direct {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 558
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-direct {v1, v0, v9}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 559
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 560
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    if-eqz v12, :cond_1b

    .line 565
    const/4 v0, -0x2

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    .line 566
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 567
    return v9

    .line 438
    .end local v4    # "toCopy":J
    .end local v8    # "agentSuccess":Z
    .end local v10    # "isSharedStorage":Z
    .end local v21    # "timeout":J
    .end local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v29    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_1a
    move/from16 v23, v3

    move-object/from16 v24, v9

    const-wide/16 v18, 0x0

    move/from16 v3, p6

    .end local v3    # "okay":Z
    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v23, "okay":Z
    .restart local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move/from16 v29, v23

    .line 575
    .end local v23    # "okay":Z
    .restart local v29    # "okay":Z
    :cond_1b
    if-nez v29, :cond_1f

    .line 579
    iget-wide v4, v7, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v4, v8

    const-wide/16 v8, -0x200

    and-long/2addr v4, v8

    .line 580
    .local v4, "bytesToConsume":J
    :goto_15
    cmp-long v0, v4, v18

    if-lez v0, :cond_1f

    .line 581
    array-length v0, v11

    int-to-long v8, v0

    cmp-long v0, v4, v8

    if-lez v0, :cond_1c

    .line 582
    array-length v0, v11

    goto :goto_16

    :cond_1c
    long-to-int v0, v4

    :goto_16
    nop

    .line 583
    .local v0, "toRead":I
    const/4 v9, 0x0

    invoke-virtual {v2, v11, v9, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1b

    int-to-long v8, v6

    .line 584
    .local v8, "nRead":J
    cmp-long v6, v8, v18

    if-gtz v6, :cond_1d

    .line 585
    goto :goto_17

    .line 587
    :cond_1d
    sub-long/2addr v4, v8

    .line 588
    .end local v0    # "toRead":I
    .end local v8    # "nRead":J
    goto :goto_15

    .line 592
    .end local v4    # "bytesToConsume":J
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v17    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v29    # "okay":Z
    .restart local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_1d
    move-exception v0

    move/from16 v3, p6

    move-object/from16 v24, v9

    move-object/from16 v14, v40

    goto/16 :goto_12

    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1e
    move-exception v0

    move-object v13, v3

    move-object/from16 v24, v9

    move/from16 v3, p6

    move-object/from16 v15, p7

    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto :goto_19

    .line 221
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_1e
    move-object v13, v3

    move-object/from16 v24, v9

    move/from16 v3, p6

    .line 598
    .end local v3    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_1f
    :goto_17
    move-object/from16 v0, p7

    .end local v9    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v24    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_18
    goto :goto_1a

    .line 592
    .end local v0    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v7    # "info":Lcom/android/server/backup/FileMetadata;
    .local v15, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_19
    nop

    .line 593
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "io exception on restore socket read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v4, 0x51

    invoke-direct {v1, v4, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 596
    const/4 v8, -0x3

    invoke-virtual {v1, v8}, Lcom/android/server/backup/restore/RestoreEngine;->setResult(I)V

    .line 597
    const/4 v7, 0x0

    move-object v0, v15

    .line 601
    .end local v15    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v7    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_1a
    if-nez v7, :cond_20

    .line 605
    invoke-direct {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 606
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 607
    if-eqz p2, :cond_21

    .line 608
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    invoke-direct {v1, v4, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_1b

    .line 601
    :cond_20
    const/4 v9, 0x0

    .line 611
    :cond_21
    :goto_1b
    if-eqz v7, :cond_22

    goto :goto_1c

    :cond_22
    move/from16 v25, v9

    :goto_1c
    return v25

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 615
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    invoke-static {v0, p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isValidParent(Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 618
    return v1

    .line 622
    :cond_0
    invoke-static {p1}, Lcom/android/server/backup/restore/FullRestoreEngine;->isReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and its contents as read-only dirs are currently not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BackupManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return v1

    .line 630
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 634
    const/4 v0, 0x0

    return v0
.end method
