.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mFlashing:Z

.field private mHwLight:Landroid/hardware/light/HwLight;

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static synthetic $r8$lambda$Z3uqkXxEDZLexB4LNlzNFDxneWo(Lcom/android/server/lights/LightsService$LightImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHwLight(Lcom/android/server/lights/LightsService$LightImpl;)Landroid/hardware/light/HwLight;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetColor(Lcom/android/server/lights/LightsService$LightImpl;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "hwLight"    # Landroid/hardware/light/HwLight;
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

    .line 387
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 388
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;Lcom/android/server/lights/LightsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Landroid/hardware/light/HwLight;)V

    return-void
.end method

.method private getColor()I
    .locals 1

    .line 546
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return v0
.end method

.method private isSystemLight()Z
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, v0, Landroid/hardware/light/HwLight;->type:B

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLightLocked(IIIII)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 481
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    const/4 p5, 0x2

    move v5, p5

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 484
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    move v5, p5

    goto :goto_0

    .line 483
    :cond_1
    move v5, p5

    .line 487
    .end local p5    # "brightnessMode":I
    .local v5, "brightnessMode":I
    :goto_0
    iget-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz p5, :cond_2

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, p5, :cond_2

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, p5, :cond_2

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, p5, :cond_2

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, p5, :cond_2

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-eq p5, v5, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    goto :goto_2

    .line 493
    :goto_1
    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 494
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 495
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 496
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 497
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 498
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 499
    iput v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 502
    iget-object p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p5, p5, Lcom/android/server/lights/LightsService;->mNtGlyphService:Lcom/android/server/lights/INtGlyphService;

    if-eqz p5, :cond_4

    iget-object p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p5, p5, Lcom/android/server/lights/LightsService;->mNtGlyphService:Lcom/android/server/lights/INtGlyphService;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v0, v0, Landroid/hardware/light/HwLight;->id:I

    invoke-interface {p5, v0}, Lcom/android/server/lights/INtGlyphService;->isNtLight(I)Z

    move-result p5

    if-nez p5, :cond_4

    .line 504
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    .local v1, "color":I
    .local v2, "mode":I
    .local v3, "onMS":I
    .local v4, "offMS":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIII)V

    goto :goto_2

    .line 502
    .end local v1    # "color":I
    .end local v2    # "mode":I
    .end local v3    # "onMS":I
    .end local v4    # "offMS":I
    .restart local p1    # "color":I
    .restart local p2    # "mode":I
    .restart local p3    # "onMS":I
    .restart local p4    # "offMS":I
    :cond_4
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 506
    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    .restart local v1    # "color":I
    .restart local v2    # "mode":I
    .restart local v3    # "onMS":I
    .restart local v4    # "offMS":I
    :goto_2
    return-void
.end method

.method private setLightUnchecked(IIIII)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v1, v1, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 514
    :try_start_1
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 515
    .local v0, "lightState":Landroid/hardware/light/HwLightState;
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 516
    int-to-byte v3, p2

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 517
    iput p3, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 518
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 519
    int-to-byte v3, p5

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 520
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmVintfLights(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/light/ILights;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v4, v4, Landroid/hardware/light/HwLight;->id:I

    invoke-interface {v3, v4, v0}, Landroid/hardware/light/ILights;->setLightState(ILandroid/hardware/light/HwLightState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    .end local v0    # "lightState":Landroid/hardware/light/HwLightState;
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    goto :goto_4

    .line 524
    :catch_0
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    goto :goto_2

    .line 522
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v3, v0, Landroid/hardware/light/HwLight;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    .end local p5    # "brightnessMode":I
    .local v4, "color":I
    .local v5, "mode":I
    .local v6, "onMS":I
    .local v7, "offMS":I
    .local v8, "brightnessMode":I
    :try_start_3
    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    :goto_0
    nop

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 528
    goto :goto_3

    .line 527
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 524
    :catch_1
    move-exception v0

    goto :goto_2

    .line 527
    .end local v4    # "color":I
    .end local v5    # "mode":I
    .end local v6    # "onMS":I
    .end local v7    # "offMS":I
    .end local v8    # "brightnessMode":I
    .restart local p1    # "color":I
    .restart local p2    # "mode":I
    .restart local p3    # "onMS":I
    .restart local p4    # "offMS":I
    .restart local p5    # "brightnessMode":I
    :catchall_2
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    .end local p5    # "brightnessMode":I
    .restart local v4    # "color":I
    .restart local v5    # "mode":I
    .restart local v6    # "onMS":I
    .restart local v7    # "offMS":I
    .restart local v8    # "brightnessMode":I
    goto :goto_4

    .line 524
    .end local v4    # "color":I
    .end local v5    # "mode":I
    .end local v6    # "onMS":I
    .end local v7    # "offMS":I
    .end local v8    # "brightnessMode":I
    .restart local p1    # "color":I
    .restart local p2    # "mode":I
    .restart local p3    # "onMS":I
    .restart local p4    # "offMS":I
    .restart local p5    # "brightnessMode":I
    :catch_2
    move-exception v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    .end local p5    # "brightnessMode":I
    .restart local v4    # "color":I
    .restart local v5    # "mode":I
    .restart local v6    # "onMS":I
    .restart local v7    # "offMS":I
    .restart local v8    # "brightnessMode":I
    :goto_2
    nop

    .line 525
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string p1, "LightsService"

    const-string p2, "Failed issuing setLightState"

    invoke-static {p1, p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 527
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 529
    :goto_3
    return-void

    .line 527
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 528
    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private stopFlashing()V
    .locals 7

    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 477
    monitor-exit p0

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public pulse()V
    .locals 2

    .line 432
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 433
    return-void
.end method

.method public pulse(II)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 439
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v3, 0x2

    move-object v1, p0

    move v2, p1

    move v4, p2

    .end local p1    # "color":I
    .end local p2    # "onMS":I
    .local v2, "color":I
    .local v4, "onMS":I
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 441
    const/4 p1, 0x0

    iput p1, v1, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 442
    iget-object p1, v1, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->-$$Nest$fgetmH(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/lights/LightsService$LightImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v5, v4

    invoke-virtual {p1, p2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 438
    .end local v2    # "color":I
    .end local v4    # "onMS":I
    .restart local p1    # "color":I
    .restart local p2    # "onMS":I
    :cond_0
    move-object v1, p0

    move v2, p1

    move v4, p2

    .end local p1    # "color":I
    .end local p2    # "onMS":I
    .restart local v2    # "color":I
    .restart local v4    # "onMS":I
    goto :goto_0

    .line 444
    .end local v2    # "color":I
    .end local v4    # "onMS":I
    .restart local p1    # "color":I
    .restart local p2    # "onMS":I
    :catchall_1
    move-exception v0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object p1, v0

    .end local p1    # "color":I
    .end local p2    # "onMS":I
    .restart local v2    # "color":I
    .restart local v4    # "onMS":I
    goto :goto_1

    :goto_0
    monitor-exit p0

    .line 445
    return-void

    .line 444
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBrightness(F)V
    .locals 1
    .param p1, "brightness"    # F

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    .line 394
    return-void
.end method

.method public setBrightness(FI)V
    .locals 9
    .param p1, "brightness"    # F
    .param p2, "brightnessMode"    # I

    .line 398
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brightness is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 402
    :cond_0
    monitor-enter p0

    .line 404
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 405
    :try_start_0
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget v2, v2, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    move-object v3, p0

    move v8, p2

    goto :goto_0

    .line 409
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 410
    .local v0, "brightnessInt":I
    and-int/lit16 v1, v0, 0xff

    .line 411
    .local v1, "color":I
    shl-int/lit8 v2, v1, 0x10

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int v4, v2, v1

    .line 412
    .end local v1    # "color":I
    .local v4, "color":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move v8, p2

    .end local p2    # "brightnessMode":I
    .local v8, "brightnessMode":I
    :try_start_2
    invoke-direct/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 413
    .end local v0    # "brightnessInt":I
    .end local v4    # "color":I
    monitor-exit p0

    .line 414
    return-void

    .line 413
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v8    # "brightnessMode":I
    .restart local p2    # "brightnessMode":I
    :catchall_2
    move-exception v0

    move-object v3, p0

    move v8, p2

    .end local p2    # "brightnessMode":I
    .restart local v8    # "brightnessMode":I
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public setColor(I)V
    .locals 7
    .param p1, "color"    # I

    .line 418
    monitor-enter p0

    .line 419
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    .end local p1    # "color":I
    .local v2, "color":I
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 420
    monitor-exit p0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFlashing(IIII)V
    .locals 7
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 425
    monitor-enter p0

    .line 426
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    .local v2, "color":I
    .local v3, "mode":I
    .local v4, "onMS":I
    .local v5, "offMS":I
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 427
    monitor-exit p0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setVrMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 458
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 460
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 461
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$mgetVrDisplayMode(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 462
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    goto :goto_1

    .line 471
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    .line 472
    return-void

    .line 471
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnOff()V
    .locals 7

    .line 449
    monitor-enter p0

    .line 450
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 451
    monitor-exit p0

    .line 452
    return-void

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
