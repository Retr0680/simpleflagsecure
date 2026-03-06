.class Lcom/android/server/sensors/NothSensorHelper$1;
.super Ljava/lang/Object;
.source "NothSensorHelper.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/NothSensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sensors/NothSensorHelper;


# direct methods
.method constructor <init>(Lcom/android/server/sensors/NothSensorHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/sensors/NothSensorHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmbientLightSensorActive(Z)V
    .locals 3
    .param p1, "isActive"    # Z

    .line 120
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0, p1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fputmAmbientLightSensorActive(Lcom/android/server/sensors/NothSensorHelper;Z)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAmbientLightSensorActive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmAmbientLightSensorActive(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " screen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenState(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/sensors/NothSensorHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NothSensorHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "notifyDisplayInfoEnabled":Z
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmAmbientLightSensorActive(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmAmbientLightSensorActive(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenState(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v0, 0x1

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNothSensorHelperHandler(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$1;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNothSensorHelperHandler(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 131
    .local v1, "msg":Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 132
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 133
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 135
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method
