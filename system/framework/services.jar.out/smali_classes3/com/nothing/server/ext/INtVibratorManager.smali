.class public interface abstract Lcom/nothing/server/ext/INtVibratorManager;
.super Ljava/lang/Object;
.source "INtVibratorManager.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtVibratorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/nothing/server/ext/INtVibratorManager$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtVibratorManager$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtVibratorManager;->DEFAULT:Lcom/nothing/server/ext/INtVibratorManager;

    return-void
.end method


# virtual methods
.method public checkIfEffectHe2_0(Landroid/os/VibrationEffect;)Z
    .locals 1
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public checkIfFirstHe2_0Package(Landroid/os/VibrationEffect;)Z
    .locals 1
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public clearAlarmOrRingtonePid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 101
    return-void
.end method

.method public disposeRichtapEffectParams(Landroid/os/CombinedVibration;Ljava/lang/String;)Z
    .locals 1
    .param p1, "combEffect"    # Landroid/os/CombinedVibration;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public disposeTelephonyCallState(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callState"    # I

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public doAacVibrate(Landroid/os/CombinedVibration;ILandroid/os/VibrationAttributes;)I
    .locals 1
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "callerUid"    # I
    .param p3, "attrs"    # Landroid/os/VibrationAttributes;

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public doStopVibrateLocked()V
    .locals 0

    .line 77
    return-void
.end method

.method public doVibratorOnEnvelope([I[I[IZIILandroid/os/VibrationAttributes;)V
    .locals 0
    .param p1, "relativeTime"    # [I
    .param p2, "scaleArr"    # [I
    .param p3, "freqArr"    # [I
    .param p4, "steepMode"    # Z
    .param p5, "amplitude"    # I
    .param p6, "uid"    # I
    .param p7, "attrs"    # Landroid/os/VibrationAttributes;

    .line 71
    return-void
.end method

.method public doVibratorOnExtPrebakedEffectLocked(Landroid/os/VibrationEffect;)J
    .locals 2
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public doVibratorOnPatternHe(Landroid/os/VibrationEffect;I)J
    .locals 2
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "uid"    # I

    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallState()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMaxVibPriorityPkg()Ljava/lang/String;
    .locals 1

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentVibraterPriority(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getEnableDoVibrate(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getInternalHeEffect(I)[I
    .locals 1
    .param p1, "id"    # I

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRichTapPrebakStrength(I)I
    .locals 1
    .param p1, "effectStrength"    # I

    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public isAacVibratePkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToSkipVibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)Z
    .locals 1
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "opPkg"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isRichtapVibEffect(Landroid/os/VibrationEffect;)Z
    .locals 1
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isSameSender(Landroid/os/VibrationEffect;)Z
    .locals 1
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public nTshouldIgnoreForOngoingLocked(Ljava/lang/String;Ljava/lang/String;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/VibrationAttributes;)I
    .locals 1
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "callAttrs"    # Landroid/os/VibrationAttributes;
    .param p4, "currentPackage"    # Ljava/lang/String;
    .param p5, "currentAttrs"    # Landroid/os/VibrationAttributes;

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public ntVibrateOn(JJJ)J
    .locals 2
    .param p1, "milliseconds"    # J
    .param p3, "vibrationId"    # J
    .param p5, "stepId"    # J

    .line 88
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public ntVibrateOn(Landroid/os/vibrator/PrebakedSegment;JJ)J
    .locals 2
    .param p1, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 90
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public resetCurrentSenderId()V
    .locals 0

    .line 67
    return-void
.end method

.method public richTapVibratorOff()V
    .locals 0

    .line 49
    return-void
.end method

.method public richTapVibratorOn(J)V
    .locals 0
    .param p1, "millis"    # J

    .line 48
    return-void
.end method

.method public richTapVibratorOnEnvelope([I[I[IZI)V
    .locals 0
    .param p1, "relativeTime"    # [I
    .param p2, "scaleArr"    # [I
    .param p3, "freqArr"    # [I
    .param p4, "steepMode"    # Z
    .param p5, "amplitude"    # I

    .line 33
    return-void
.end method

.method public richTapVibratorOnPatternHe(Landroid/os/VibrationEffect;)V
    .locals 0
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 59
    return-void
.end method

.method public richTapVibratorOnRawPattern([III)V
    .locals 0
    .param p1, "pattern"    # [I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I

    .line 31
    return-void
.end method

.method public richTapVibratorPerform(IB)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "scale"    # B

    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public richTapVibratorSetAmplitude(I)V
    .locals 0
    .param p1, "amplitude"    # I

    .line 29
    return-void
.end method

.method public richTapVibratorStop()V
    .locals 0

    .line 61
    return-void
.end method

.method public setAlarmOrRingtonePid(ILjava/lang/String;I)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 100
    return-void
.end method

.method public setCurrentIntensity(I)V
    .locals 0
    .param p1, "intensity"    # I

    .line 92
    return-void
.end method

.method public setCurrentSenderId(Landroid/os/VibrationEffect;)V
    .locals 0
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 66
    return-void
.end method

.method public setCurrentVibraterPriority(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tempPriority"    # I

    .line 93
    return-void
.end method

.method public setEnableDoVibrate(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 96
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    return-void
.end method
