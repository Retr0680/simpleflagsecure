.class final Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "BrightnessThermalModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalStatusObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

.field private mObserverTempSensor:Lcom/android/server/display/config/SensorData;

.field private mStarted:Z

.field private mThermalService:Landroid/os/IThermalService;

.field final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;


# direct methods
.method public static synthetic $r8$lambda$sRzgdLFMU9Ur97h22PwwbhASE9o(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->lambda$notifyThrottling$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;)V
    .locals 0
    .param p2, "injector"    # Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    .line 268
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mHandler:Landroid/os/Handler;

    .line 269
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    .line 270
    return-void
.end method

.method private synthetic lambda$notifyThrottling$0(I)V
    .locals 1
    .param p1, "status"    # I

    .line 318
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    invoke-static {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->-$$Nest$mthermalStatusChanged(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;I)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 335
    const-string v0, "  ThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mObserverTempSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "    ThermalService available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_0
    const-string v0, "    ThermalService not available"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 3
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New thermal throttling status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessThermalClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping thermal throttling notification as monitored sensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v2, v2, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " != notified sensor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 318
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method registerSensor(Lcom/android/server/display/config/SensorData;)V
    .locals 3
    .param p1, "tempSensor"    # Lcom/android/server/display/config/SensorData;

    .line 273
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 280
    .local v0, "curType":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 281
    iget-object v1, p1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    const-string v1, "BrightnessThermalClamper"

    const-string v2, "Thermal status observer already started"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->stopObserving()V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->registerThermalListener()V

    .line 287
    return-void

    .line 274
    .end local v0    # "curType":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    .line 275
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->registerThermalListener()V

    .line 276
    return-void
.end method

.method registerThermalListener()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mInjector:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 291
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    const-string v1, "BrightnessThermalClamper"

    if-nez v0, :cond_0

    .line 292
    const-string v0, "Could not observe thermal status. Service not available"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mObserverTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-static {v0}, Lcom/android/server/display/utils/SensorUtils;->getSensorTemperatureType(Lcom/android/server/display/config/SensorData;)I

    move-result v0

    .line 299
    .local v0, "temperatureType":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, p0, v0}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 300
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register thermal status listener"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method stopObserving()V
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z

    if-nez v0, :cond_0

    .line 323
    return-void

    .line 326
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BrightnessThermalClamper"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    .line 332
    return-void
.end method
