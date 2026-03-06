.class final Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
.super Ljava/lang/Object;
.source "MediaQualityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AmbientBacklightCallbackRecord"
.end annotation


# instance fields
.field final mCallback:Landroid/media/quality/IAmbientBacklightCallback;

.field final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Ljava/lang/String;Landroid/media/quality/IAmbientBacklightCallback;)V
    .locals 2
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/media/quality/IAmbientBacklightCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1760
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1761
    iput-object p2, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    .line 1762
    iput-object p3, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    .line 1764
    :try_start_0
    iget-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {p1}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    goto :goto_0

    .line 1765
    :catch_0
    move-exception p1

    .line 1766
    .local p1, "e":Landroid/os/RemoteException;
    const-string v0, "MediaQualityService"

    const-string v1, "Failed to link to death"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1768
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1780
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 1781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    monitor-exit v0

    .line 1783
    return-void

    .line 1782
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method release()V
    .locals 3

    .line 1772
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v0}, Landroid/media/quality/IAmbientBacklightCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaQualityService"

    const-string v2, "Failed to unlink to death"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    return-void
.end method
