.class public Lcom/android/server/vibrator/VibratorController$NativeWrapper;
.super Ljava/lang/Object;
.source "VibratorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeWrapper"
.end annotation


# instance fields
.field private mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    return-void
.end method

.method private static native alwaysOnDisable(JJ)V
.end method

.method private static native alwaysOnEnable(JJJJ)V
.end method

.method private static native getInfo(JLandroid/os/VibratorInfo$Builder;)Z
.end method

.method private static native getNativeFinalizer()J
.end method

.method private static native isAvailable(J)Z
.end method

.method private static native nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J
.end method

.method private static native off(J)V
.end method

.method private static native on(JJJJ)J
.end method

.method private static native performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;JJ)J
.end method

.method private static native performEffect(JJJJJ)J
.end method

.method private static native performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJJ)J
.end method

.method private static native performPwleV2Effect(J[Landroid/os/vibrator/PwlePoint;JJ)J
.end method

.method private static native performVendorEffect(JLandroid/os/Parcel;JFFJJ)J
.end method

.method private static native setAmplitude(JF)V
.end method

.method private static native setExternalControl(JZ)V
.end method


# virtual methods
.method public alwaysOnDisable(J)V
    .locals 2
    .param p1, "id"    # J

    .line 700
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnDisable(JJ)V

    .line 701
    return-void
.end method

.method public alwaysOnEnable(JJJ)V
    .locals 8
    .param p1, "id"    # J
    .param p3, "effect"    # J
    .param p5, "strength"    # J

    .line 695
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "id":J
    .end local p3    # "effect":J
    .end local p5    # "strength":J
    .local v2, "id":J
    .local v4, "effect":J
    .local v6, "strength":J
    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->alwaysOnEnable(JJJJ)V

    .line 696
    return-void
.end method

.method public compose([Landroid/os/vibrator/PrimitiveSegment;JJ)J
    .locals 7
    .param p1, "primitives"    # [Landroid/os/vibrator/PrimitiveSegment;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 674
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "primitives":[Landroid/os/vibrator/PrimitiveSegment;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .local v2, "primitives":[Landroid/os/vibrator/PrimitiveSegment;
    .local v3, "vibrationId":J
    .local v5, "stepId":J
    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performComposedEffect(J[Landroid/os/vibrator/PrimitiveSegment;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public composePwle([Landroid/os/vibrator/RampSegment;IJJ)J
    .locals 8
    .param p1, "primitives"    # [Landroid/os/vibrator/RampSegment;
    .param p2, "braking"    # I
    .param p3, "vibrationId"    # J
    .param p5, "stepId"    # J

    .line 680
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "primitives":[Landroid/os/vibrator/RampSegment;
    .end local p2    # "braking":I
    .end local p3    # "vibrationId":J
    .end local p5    # "stepId":J
    .local v2, "primitives":[Landroid/os/vibrator/RampSegment;
    .local v3, "braking":I
    .local v4, "vibrationId":J
    .local v6, "stepId":J
    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleEffect(J[Landroid/os/vibrator/RampSegment;IJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public composePwleV2([Landroid/os/vibrator/PwlePoint;JJ)J
    .locals 7
    .param p1, "pwlePoints"    # [Landroid/os/vibrator/PwlePoint;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 685
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "pwlePoints":[Landroid/os/vibrator/PwlePoint;
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .local v2, "pwlePoints":[Landroid/os/vibrator/PwlePoint;
    .local v3, "vibrationId":J
    .local v5, "stepId":J
    invoke-static/range {v0 .. v6}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performPwleV2Effect(J[Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getInfo(Landroid/os/VibratorInfo$Builder;)Z
    .locals 2
    .param p1, "infoBuilder"    # Landroid/os/VibratorInfo$Builder;

    .line 707
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getInfo(JLandroid/os/VibratorInfo$Builder;)Z

    move-result v0

    return v0
.end method

.method public init(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)V
    .locals 5
    .param p1, "vibratorId"    # I
    .param p2, "listener"    # Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;

    .line 629
    invoke-static {p1, p2}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->nativeInit(ILcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    .line 630
    invoke-static {}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->getNativeFinalizer()J

    move-result-wide v0

    .line 632
    .local v0, "finalizerPtr":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 633
    nop

    .line 635
    const-class v2, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 634
    invoke-static {v2, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v2

    .line 636
    .local v2, "registry":Llibcore/util/NativeAllocationRegistry;
    iget-wide v3, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-virtual {v2, p0, v3, v4}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 638
    .end local v2    # "registry":Llibcore/util/NativeAllocationRegistry;
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 642
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->isAvailable(J)Z

    move-result v0

    return v0
.end method

.method public off()V
    .locals 2

    .line 652
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->off(J)V

    .line 653
    return-void
.end method

.method public on(JJJ)J
    .locals 8
    .param p1, "milliseconds"    # J
    .param p3, "vibrationId"    # J
    .param p5, "stepId"    # J

    .line 647
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .end local p1    # "milliseconds":J
    .end local p3    # "vibrationId":J
    .end local p5    # "stepId":J
    .local v2, "milliseconds":J
    .local v4, "vibrationId":J
    .local v6, "stepId":J
    invoke-static/range {v0 .. v7}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->on(JJJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public perform(JJJJ)J
    .locals 10
    .param p1, "effect"    # J
    .param p3, "strength"    # J
    .param p5, "vibrationId"    # J
    .param p7, "stepId"    # J

    .line 662
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performEffect(JJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public performVendorEffect(Landroid/os/Parcel;JFFJJ)J
    .locals 11
    .param p1, "vendorData"    # Landroid/os/Parcel;
    .param p2, "strength"    # J
    .param p4, "scale"    # F
    .param p5, "adaptiveScale"    # F
    .param p6, "vibrationId"    # J
    .param p8, "stepId"    # J

    .line 668
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->performVendorEffect(JLandroid/os/Parcel;JFFJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAmplitude(F)V
    .locals 2
    .param p1, "amplitude"    # F

    .line 657
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setAmplitude(JF)V

    .line 658
    return-void
.end method

.method public setExternalControl(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 690
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->mNativePtr:J

    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->setExternalControl(JZ)V

    .line 691
    return-void
.end method
