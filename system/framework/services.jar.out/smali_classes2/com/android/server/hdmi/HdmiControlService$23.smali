.class Lcom/android/server/hdmi/HdmiControlService$23;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field final synthetic val$command:Lcom/android/server/hdmi/HdmiCecMessage;

.field final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1736
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 5
    .param p1, "result"    # I

    .line 1739
    if-eqz p1, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    new-instance v1, Lcom/android/server/hdmi/ResendCecCommandAction;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/ResendCecCommandAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    goto :goto_0

    .line 1742
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 1745
    :cond_1
    :goto_0
    return-void
.end method
