.class public Lcom/android/server/backup/AppSpecificLocalesBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "AppSpecificLocalesBackupHelper.java"


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final DATA_TYPE_APP_LOCALES:Ljava/lang/String; = "app_locales:locales"

.field private static final DEBUG:Z = false

.field private static final ERROR_BACKUP_FAILED:Ljava/lang/String; = "backup_failed"

.field private static final ERROR_RESTORE_FAILED:Ljava/lang/String; = "restore_failed"

.field private static final ERROR_UNEXPECTED_KEY:Ljava/lang/String; = "unexpected_key"

.field private static final KEY_APP_LOCALES:Ljava/lang/String; = "app_locales"

.field private static final TAG:Ljava/lang/String; = "AppLocalesBackupHelper"


# instance fields
.field private final mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 59
    const-string v0, "app_locales"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    .line 61
    const-class v0, Lcom/android/server/locales/LocaleManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locales/LocaleManagerInternal;

    iput-object v0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    .line 62
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 102
    const-string v0, "app_locales"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AppLocalesBackupHelper"

    const/4 v2, 0x1

    const-string v3, "app_locales:locales"

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    iget v4, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {v0, p2, v4}, Lcom/android/server/locales/LocaleManagerInternal;->stageAndApplyRestoredPayload([BI)V

    .line 105
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Couldn\'t communicate with locale manager"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v1

    const-string/jumbo v4, "restore_failed"

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected restore key "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v0

    const-string/jumbo v1, "unexpected_key"

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    :goto_1
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "newPayload":[B
    const-string v1, "app_locales"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AppLocalesBackupHelper"

    const/4 v3, 0x1

    const-string v4, "app_locales:locales"

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mLocaleManagerInternal:Lcom/android/server/locales/LocaleManagerInternal;

    iget v5, p0, Lcom/android/server/backup/AppSpecificLocalesBackupHelper;->mUserId:I

    invoke-virtual {v1, v5}, Lcom/android/server/locales/LocaleManagerInternal;->getBackupPayload(I)[B

    move-result-object v1

    move-object v0, v1

    .line 74
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Couldn\'t communicate with locale manager"

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v2

    const-string v5, "backup_failed"

    invoke-virtual {v2, v4, v3, v5}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected backup key "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object v1

    const-string/jumbo v2, "unexpected_key"

    invoke-virtual {v1, v4, v3, v2}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    :goto_1
    return-object v0
.end method
