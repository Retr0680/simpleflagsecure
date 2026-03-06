.class Lcom/android/server/sensors/NothSensorHelper$3;
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

    .line 209
    iput-object p1, p0, Lcom/android/server/sensors/NothSensorHelper$3;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 212
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$3;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmSensorExtensionImpl(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensorextension/INtSensorExtension;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    const/16 v0, 0xf

    new-array v5, v0, [I

    .line 214
    .local v5, "intRequestValues":[I
    new-array v6, v0, [I

    .line 216
    .local v6, "intResponseValues":[I
    const v0, 0x11174

    const/4 v1, 0x0

    :try_start_0
    aput v0, v5, v1

    .line 217
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$3;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmScreenState(Lcom/android/server/sensors/NothSensorHelper;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move v1, v7

    :cond_0
    aput v1, v5, v7

    .line 218
    iget-object v0, p0, Lcom/android/server/sensors/NothSensorHelper$3;->this$0:Lcom/android/server/sensors/NothSensorHelper;

    invoke-static {v0}, Lcom/android/server/sensors/NothSensorHelper;->-$$Nest$fgetmSensorExtensionImpl(Lcom/android/server/sensors/NothSensorHelper;)Lcom/android/server/sensorextension/INtSensorExtension;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/sensorextension/INtSensorExtension;->execSyncIntInt(III[I[I)Z

    .line 220
    const-string v0, "NothSensorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNotifyScreenStateRunnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v5, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v5    # "intRequestValues":[I
    .end local v6    # "intResponseValues":[I
    :cond_1
    :goto_0
    return-void
.end method
