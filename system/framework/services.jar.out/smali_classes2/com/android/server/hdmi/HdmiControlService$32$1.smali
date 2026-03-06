.class Lcom/android/server/hdmi/HdmiControlService$32$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$32;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$32;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$32;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/hdmi/HdmiControlService$32;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4318
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 4321
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    .line 4322
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 4323
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 4324
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->clearCecLocalDevices()V

    .line 4325
    return-void
.end method
