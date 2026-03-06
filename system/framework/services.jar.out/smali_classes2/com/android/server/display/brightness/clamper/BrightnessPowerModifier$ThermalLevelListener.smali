.class final Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "BrightnessPowerModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalLevelListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mStarted:Z

.field private mThermalService:Landroid/os/IThermalService;

.field final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;


# direct methods
.method public static synthetic $r8$lambda$20aF-SPGVM6H1027Ons6vT4GPus(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->-$$Nest$mactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubnOdYg7n4fcHPzKnKW852Cva3Y(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->lambda$notifyThrottling$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
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

    .line 384
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    .line 386
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    .line 387
    nop

    .line 388
    const-string/jumbo p1, "thermalservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 387
    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    .line 389
    return-void
.end method

.method private synthetic lambda$notifyThrottling$0(I)V
    .locals 1
    .param p1, "status"    # I

    .line 419
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-static {v0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->-$$Nest$mdeactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 438
    const-string v0, "  ThermalLevelObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method getThermalService()Landroid/os/IThermalService;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    return-object v0
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 4
    .param p1, "temp"    # Landroid/os/Temperature;

    .line 413
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 414
    .local v0, "status":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activating pmic monitor due to thermal state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessPowerClamper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-static {v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->-$$Nest$fgetmPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)Lcom/android/server/display/brightness/clamper/PmicMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    :cond_1
    :goto_0
    return-void
.end method

.method start()V
    .locals 3

    .line 396
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    if-eqz v0, :cond_0

    .line 397
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    if-nez v0, :cond_1

    .line 400
    return-void

    .line 404
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BrightnessPowerClamper"

    const-string v2, "Failed to register thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method stop()V
    .locals 3

    .line 425
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z

    if-nez v0, :cond_0

    .line 426
    return-void

    .line 429
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mStarted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BrightnessPowerClamper"

    const-string v2, "Failed to unregister thermal status listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->mThermalService:Landroid/os/IThermalService;

    .line 435
    return-void
.end method
