.class final Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;
.super Landroid/media/INativeAudioVolumeGroupCallback$Stub;
.source "AudioVolumeChangeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioVolumeChangeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioVolumeGroupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioVolumeChangeHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioVolumeChangeHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;->this$0:Lcom/android/server/audio/AudioVolumeChangeHandler;

    invoke-direct {p0}, Landroid/media/INativeAudioVolumeGroupCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioVolumeChangeHandler;Lcom/android/server/audio/AudioVolumeChangeHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;-><init>(Lcom/android/server/audio/AudioVolumeChangeHandler;)V

    return-void
.end method


# virtual methods
.method public onAudioVolumeGroupChanged(Landroid/media/audio/common/AudioVolumeGroupChangeEvent;)V
    .locals 3
    .param p1, "volumeEvent"    # Landroid/media/audio/common/AudioVolumeGroupChangeEvent;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAudioVolumeGroupChanged volumeEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioVolumeChangeHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;->this$0:Lcom/android/server/audio/AudioVolumeChangeHandler;

    iget v1, p1, Landroid/media/audio/common/AudioVolumeGroupChangeEvent;->groupId:I

    iget v2, p1, Landroid/media/audio/common/AudioVolumeGroupChangeEvent;->flags:I

    invoke-static {v0, v1, v2}, Lcom/android/server/audio/AudioVolumeChangeHandler;->-$$Nest$msendAudioVolumeGroupChangedToClients(Lcom/android/server/audio/AudioVolumeChangeHandler;II)V

    .line 101
    return-void
.end method
