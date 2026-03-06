.class Lcom/android/server/hdmi/HdmiControlService$29;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->onPendingActionsCleared(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$countStandbyCompletedDevices:[I

.field final synthetic val$localDevicesCount:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 4050
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$localDevicesCount:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$countStandbyCompletedDevices:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStandbyCompleted()V
    .locals 5

    .line 4053
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$localDevicesCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$29;->val$countStandbyCompletedDevices:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aput v3, v1, v2

    if-ge v0, v3, :cond_0

    .line 4054
    return-void

    .line 4057
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->releaseWakeLock()V

    .line 4058
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandby()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    .line 4061
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getDisableCecOnStandbyByLowEnergyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmPowerManager(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/PowerManagerWrapper;

    move-result-object v0

    .line 4062
    invoke-virtual {v0}, Lcom/android/server/hdmi/PowerManagerWrapper;->isLowPowerStandbyEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4063
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->userEnabledCecInOfflineMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4064
    const-string v0, "HdmiControlService"

    const-string v1, "Disable CEC on standby due to low power energy mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiControlService;->setWasCecDisabledOnStandbyByLowEnergyMode(Z)V

    .line 4066
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v0

    const-string/jumbo v1, "hdmi_cec_enabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V

    .line 4070
    :cond_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 4071
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$29;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 4072
    return-void

    .line 4059
    :goto_0
    return-void
.end method
