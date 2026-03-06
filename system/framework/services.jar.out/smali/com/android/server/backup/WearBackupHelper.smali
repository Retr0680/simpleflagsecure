.class public Lcom/android/server/backup/WearBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "WearBackupHelper.java"


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final KEY_WEAR_BACKUP:Ljava/lang/String; = "wear"


# instance fields
.field private final mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    const-string/jumbo v0, "wear"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 33
    const-class v0, Lcom/android/server/backup/WearBackupInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/WearBackupInternal;

    iput-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    .line 34
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 45
    const-string/jumbo v0, "wear"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    invoke-interface {v0, p2}, Lcom/android/server/backup/WearBackupInternal;->applyRestoredPayload([B)V

    .line 48
    :cond_0
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "wear"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/backup/WearBackupInternal;->getBackupPayload(Landroid/app/backup/BackupRestoreEventLogger;)[B

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0
.end method
