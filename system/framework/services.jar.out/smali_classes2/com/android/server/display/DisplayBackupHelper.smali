.class public Lcom/android/server/display/DisplayBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "DisplayBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayBackupHelper$Injector;
    }
.end annotation


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final DEBUG:Z

.field private static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field private static final TAG:Ljava/lang/String; = "DisplayBackupHelper"


# instance fields
.field private final mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "DisplayBackupHelper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 62
    new-instance v0, Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBackupHelper$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayBackupHelper;-><init>(ILcom/android/server/display/DisplayBackupHelper$Injector;)V

    .line 63
    return-void
.end method

.method constructor <init>(ILcom/android/server/display/DisplayBackupHelper$Injector;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "injector"    # Lcom/android/server/display/DisplayBackupHelper$Injector;

    .line 67
    const-string v0, "display"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 68
    iput p1, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    .line 69
    iput-object p2, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    .line 70
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 89
    const-string v0, "DisplayBackupHelper"

    const-string v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->isDisplayTopologyFlagEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_2

    .line 92
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    iget v2, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayBackupHelper$Injector;->writeTopologyFile(I)Landroid/util/AtomicFileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v1, "oStream":Landroid/util/AtomicFileOutputStream;
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/util/AtomicFileOutputStream;->write([B)V

    .line 94
    invoke-virtual {v1}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyRestoredPayload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    invoke-virtual {v1}, Landroid/util/AtomicFileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v1    # "oStream":Landroid/util/AtomicFileOutputStream;
    nop

    .line 101
    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v1

    .line 102
    .local v1, "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    if-nez v1, :cond_2

    .line 103
    const-string v2, "DisplayManagerInternal is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 107
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->reloadTopologies(I)V

    .line 108
    return-void

    .line 97
    .end local v1    # "displayManagerInternal":Landroid/hardware/display/DisplayManagerInternal;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 92
    .local v1, "oStream":Landroid/util/AtomicFileOutputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Landroid/util/AtomicFileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayBackupHelper;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "payload":[B
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 97
    .end local v1    # "oStream":Landroid/util/AtomicFileOutputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayBackupHelper;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "payload":[B
    :goto_1
    nop

    .line 98
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "applyRestoredPayload failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    return-void

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 74
    const-string v0, "DisplayBackupHelper"

    const-string v1, "display"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayBackupHelper$Injector;->isDisplayTopologyFlagEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 78
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    iget v3, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayBackupHelper$Injector;->readTopologyFile(I)[B

    move-result-object v1

    .line 79
    .local v1, "result":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackupPayload for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " done, size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object v1

    .line 81
    .end local v1    # "result":[B
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/android/server/display/DisplayBackupHelper;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Skip topology backup"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_2
    return-object v2

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2
.end method
