.class Lcom/android/server/sensors/NothSensorHelper$2;
.super Ljava/lang/Object;
.source "NothSensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 183
    iput-object p1, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmSensorExtensionImpl(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensorextension/INtSensorExtension;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$mgetScreenBacklight(Lcom/android/server/sensors/NothSensorHelper;)I

    move-result v0

    .line 189
    .local v0, "backlight":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmCurrentBacklight(Lcom/android/server/sensors/NothSensorHelper;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1, v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fputmCurrentBacklight(Lcom/android/server/sensors/NothSensorHelper;I)V

    .line 191
    const/16 v1, 0xf

    new-array v2, v1, [I

    move-object v7, v2

    .line 192
    .local v7, "intRequestValues":[I
    new-array v8, v1, [I

    .line 193
    .local v8, "intResponseValues":[I
    const/4 v1, 0x0

    const v2, 0x11171

    aput v2, v7, v1

    .line 194
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmCurrentBacklight(Lcom/android/server/sensors/NothSensorHelper;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v7, v2

    .line 195
    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmSensorExtensionImpl(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensorextension/INtSensorExtension;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    invoke-interface/range {v3 .. v8}, Lcom/android/server/sensorextension/INtSensorExtension;->execSyncIntInt(III[I[I)Z

    .line 197
    const-string v1, "NothSensorHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNotifyBrightnessRunnable notify backlight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v3}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmCurrentBacklight(Lcom/android/server/sensors/NothSensorHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0    # "backlight":I
    .end local v7    # "intRequestValues":[I
    .end local v8    # "intResponseValues":[I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 201
    :cond_0
    :goto_0
    goto :goto_2

    .line 199
    :goto_1
    nop

    .line 200
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenState(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyDisplayInfoEnabled(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNothSensorHelperHandler(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensors/NothSensorHelper$NothSensorHelperHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensors/NothSensorHelper$2;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v1}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmNotifyBrightnessRunnable(Lcom/android/server/sensors/NothSensorHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_2
    return-void
.end method
