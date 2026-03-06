.class final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatcherEventCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field private final mEvent:Landroid/media/projection/MediaProjectionEvent;

.field private final mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

.field private final mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method constructor <init>(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionWatcherCallback;
    .param p2, "event"    # Landroid/media/projection/MediaProjectionEvent;
    .param p3, "projectionInfo"    # Landroid/media/projection/MediaProjectionInfo;
    .param p4, "session"    # Landroid/view/ContentRecordingSession;

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1668
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    .line 1669
    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mEvent:Landroid/media/projection/MediaProjectionEvent;

    .line 1670
    iput-object p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    .line 1671
    iput-object p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mSession:Landroid/view/ContentRecordingSession;

    .line 1672
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1676
    nop

    .line 1685
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mEvent:Landroid/media/projection/MediaProjectionEvent;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mProjectionInfo:Landroid/media/projection/MediaProjectionInfo;

    iget-object v3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherEventCallback;->mSession:Landroid/view/ContentRecordingSession;

    invoke-interface {v0, v1, v2, v3}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    goto :goto_0

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManagerService"

    const-string v2, "Failed to notify MediaProjectionEvent change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1689
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
