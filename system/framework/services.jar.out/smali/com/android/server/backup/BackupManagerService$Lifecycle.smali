.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public static synthetic $r8$lambda$gdbi4zlGZGic5yYpC6rnH2b-N7A(Lcom/android/server/backup/BackupManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 1683
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    .line 1684
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 1688
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1689
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 1690
    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 1691
    const-class v0, Landroid/app/backup/BackupManagerInternal;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1692
    return-void
.end method

.method private synthetic lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1706
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$mupdateDefaultBackupUserIdIfNeeded(Lcom/android/server/backup/BackupManagerService;)V

    .line 1707
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    .line 1708
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$fputmHasFirstUserUnlockedSinceBoot(Lcom/android/server/backup/BackupManagerService;Z)V

    .line 1709
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 1696
    const-string v0, "backup"

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1697
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1714
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 1715
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1704
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    .line 1710
    return-void
.end method

.method publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1719
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1720
    return-void
.end method
