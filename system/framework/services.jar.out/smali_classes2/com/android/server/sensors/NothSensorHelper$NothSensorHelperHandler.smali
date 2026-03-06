.class final Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;
.super Landroid/os/Handler;
.source "NothSensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/NothSensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NothSensorHelperHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sensors/NothSensorHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/NothSensorHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    .line 229
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 230
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 236
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 237
    .local v1, "notifyDisplayInfoEnabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetDEBUG(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NothSensorHelperHandler notifyDisplayInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v2}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NothSensorHelper"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    if-eq v1, v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0, v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fputmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;Z)V

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenState(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNothSensorHelperHandler(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v2}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyBrightnessRunnable(Lcom/android/server/sensors/NothSensorHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    goto :goto_2

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNothSensorHelperHandler(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v2}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyBrightnessRunnable(Lcom/android/server/sensors/NothSensorHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    goto :goto_3

    .line 247
    :goto_2
    nop

    .line 248
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "exception":Ljava/lang/Exception;
    goto :goto_1

    .line 255
    .end local v1    # "notifyDisplayInfoEnabled":Z
    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
