.class public Lcom/android/server/backup/InputBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "InputBackupHelper.java"


# static fields
.field private static final BLOB_VERSION:I = 0x1

.field private static final KEY_INPUT_GESTURES:Ljava/lang/String; = "input_gestures"

.field private static final TAG:Ljava/lang/String; = "InputBackupHelper"


# instance fields
.field private final mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 46
    const-string/jumbo v0, "input_gestures"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 47
    iput p1, p0, Lcom/android/server/backup/InputBackupHelper;->mUserId:I

    .line 48
    const-class v0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/backup/InputBackupHelper;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    .line 49
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "payloads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const-string/jumbo v1, "input_gestures"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/InputBackupHelper;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget v2, p0, Lcom/android/server/backup/InputBackupHelper;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/input/InputManagerInternal;->applyBackupPayload(Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "InputBackupHelper"

    const-string v3, "Failed to apply input backup payload"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/InputBackupHelper;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget v2, p0, Lcom/android/server/backup/InputBackupHelper;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerInternal;->getBackupPayload(I)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v1, "payloads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    nop

    .line 61
    const-string/jumbo v2, "input_gestures"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 65
    :cond_0
    return-object v0

    .line 56
    .end local v1    # "payloads":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :catch_0
    move-exception v1

    .line 57
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "InputBackupHelper"

    const-string v3, "Failed to get backup payload for input gestures"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-object v0
.end method
