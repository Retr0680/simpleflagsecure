.class Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableArc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 946
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSadDone(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 949
    .local p1, "supportedSadsDone":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$fputmSupportedSads(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Ljava/util/List;)V

    .line 951
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 952
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$mnotifyArcStatusToAudioService(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;ZLjava/util/List;)V

    .line 953
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 954
    :try_start_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$fgetmSupportedSads(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->-$$Nest$mnotifyArcStatusToAudioService(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;ZLjava/util/List;)V

    .line 955
    monitor-exit v1

    .line 956
    return-void

    .line 955
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 951
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
