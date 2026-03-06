.class final Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;
.super Ljava/lang/Object;
.source "SensorController.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/SensorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimeSensorCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field final synthetic this$0:Lcom/android/server/companion/virtual/SensorController;


# direct methods
.method constructor <init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V
    .locals 0
    .param p2, "callback"    # Landroid/companion/virtual/sensor/IVirtualSensorCallback;
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

    .line 253
    iput-object p1, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    .line 255
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(IZII)I
    .locals 5
    .param p1, "handle"    # I
    .param p2, "enabled"    # Z
    .param p3, "samplingPeriodMicros"    # I
    .param p4, "batchReportLatencyMicros"    # I

    .line 260
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string v2, "SensorController"

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No sensor callback configured for sensor handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    .line 265
    const-string v0, "Virtual Device Manager is not enabled."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v3}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v0

    .line 269
    .local v0, "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    if-nez v0, :cond_2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No sensor found for deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v4}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and sensor handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v1

    .line 275
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v1, v0, p2, p3, p4}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 281
    const/4 v1, 0x0

    return v1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call sensor callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/high16 v2, -0x80000000

    return v2
.end method

.method public onDirectChannelConfigured(III)I
    .locals 5
    .param p1, "channelHandle"    # I
    .param p2, "sensorHandle"    # I
    .param p3, "rateLevel"    # I

    .line 327
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string v2, "SensorController"

    if-nez v0, :cond_0

    .line 328
    const-string v0, "No runtime sensor callback configured."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v1

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    const-string v0, "Virtual Device Manager is not enabled."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v1

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v0}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v3}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v0

    .line 336
    .local v0, "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    if-nez v0, :cond_2

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No sensor found for deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v4}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and sensor handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v1

    .line 342
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v1, p1, v0, p3, p2}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    nop

    .line 347
    if-nez p3, :cond_3

    .line 348
    const/4 v1, 0x0

    return v1

    .line 351
    :cond_3
    return p2

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call sensor callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/high16 v2, -0x80000000

    return v2
.end method

.method public onDirectChannelCreated(Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 286
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string v2, "SensorController"

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No sensor callback for virtual deviceId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v3}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v1

    .line 289
    :cond_0
    if-nez p1, :cond_1

    .line 290
    const-string v0, "Received invalid ParcelFileDescriptor"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v1

    .line 296
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    .local v0, "sharedMemory":Landroid/os/SharedMemory;
    nop

    .line 301
    invoke-static {}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$sfgetsNextDirectChannelHandle()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 303
    .local v1, "channelHandle":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v3, v1, v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    nop

    .line 308
    return v1

    .line 304
    :catch_0
    move-exception v3

    .line 305
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call sensor callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/high16 v2, -0x80000000

    return v2

    .line 297
    .end local v0    # "sharedMemory":Landroid/os/SharedMemory;
    .end local v1    # "channelHandle":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create shared memory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1
.end method

.method public onDirectChannelDestroyed(I)V
    .locals 4
    .param p1, "channelHandle"    # I

    .line 313
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const-string v1, "SensorController"

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No sensor callback for virtual deviceId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    invoke-static {v2}, Lcom/android/server/companion/virtual/SensorController;->-$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 318
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelDestroyed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call sensor callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
