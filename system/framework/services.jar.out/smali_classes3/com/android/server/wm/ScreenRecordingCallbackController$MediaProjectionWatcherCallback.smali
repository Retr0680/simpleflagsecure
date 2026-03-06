.class final Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;
.super Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.source "ScreenRecordingCallbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRecordingCallbackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjectionWatcherCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Lcom/android/server/wm/ScreenRecordingCallbackController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;)V

    return-void
.end method


# virtual methods
.method public onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0
    .param p1, "event"    # Landroid/media/projection/MediaProjectionEvent;
    .param p2, "mediaProjectionInfo"    # Landroid/media/projection/MediaProjectionInfo;
    .param p3, "session"    # Landroid/view/ContentRecordingSession;

    .line 93
    return-void
.end method

.method public onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V
    .locals 0
    .param p1, "mediaProjectionInfo"    # Landroid/media/projection/MediaProjectionInfo;
    .param p2, "contentRecordingSession"    # Landroid/view/ContentRecordingSession;

    .line 87
    return-void
.end method

.method public onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1
    .param p1, "mediaProjectionInfo"    # Landroid/media/projection/MediaProjectionInfo;

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-static {v0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->-$$Nest$monScreenRecordingStart(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/media/projection/MediaProjectionInfo;)V

    .line 77
    return-void
.end method

.method public onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 1
    .param p1, "mediaProjectionInfo"    # Landroid/media/projection/MediaProjectionInfo;

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;->this$0:Lcom/android/server/wm/ScreenRecordingCallbackController;

    invoke-static {v0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->-$$Nest$monScreenRecordingStop(Lcom/android/server/wm/ScreenRecordingCallbackController;)V

    .line 82
    return-void
.end method
