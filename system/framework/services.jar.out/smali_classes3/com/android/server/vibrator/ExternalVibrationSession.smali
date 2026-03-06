.class final Lcom/android/server/vibrator/ExternalVibrationSession;
.super Lcom/android/server/vibrator/Vibration;
.source "ExternalVibrationSession.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalVibrationSession"


# instance fields
.field private final mExternalVibration:Landroid/os/ExternalVibration;

.field private final mManagerHooks:Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

.field private final mScale:Landroid/os/ExternalVibrationScale;

.field private final mSessionId:J


# direct methods
.method constructor <init>(Landroid/os/ExternalVibration;Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;)V
    .locals 6
    .param p1, "externalVibration"    # Landroid/os/ExternalVibration;
    .param p2, "managerHooks"    # Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

    .line 55
    new-instance v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 56
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    .line 59
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationSession$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    .line 48
    invoke-static {}, Lcom/android/server/vibrator/VibrationSession;->nextSessionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    .line 50
    new-instance v0, Landroid/os/ExternalVibrationScale;

    invoke-direct {v0}, Landroid/os/ExternalVibrationScale;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    .line 60
    iput-object p1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    .line 61
    iput-object p2, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

    .line 62
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 124
    const-string v0, "ExternalVibrationSession"

    const-string v1, "Binder died, cancelling external vibration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/android/server/vibrator/VibrationSession$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-interface {p0, v0}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V

    .line 126
    return-void
.end method

.method end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 5
    .param p1, "endInfo"    # Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 130
    invoke-super {p0, p1}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStats;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->mute()Z

    .line 138
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStats;->getEndUptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationStats;->getStartUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vibrator/VibrationStats;->reportVibratorOn(J)V

    .line 140
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mManagerHooks:Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/vibrator/ExternalVibrationSession$VibratorManagerHooks;->onExternalVibrationReleased(J)V

    .line 142
    :cond_0
    return-void
.end method

.method public getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object v0
.end method

.method public getCallerToken()Landroid/os/IBinder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCreateUptimeMillis()J
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStats;->getCreateUptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 9

    .line 90
    new-instance v0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->getStatus()Lcom/android/server/vibrator/VibrationSession$Status;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v3, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v7, v3, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    iget-object v3, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v8, v3, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v0
.end method

.method public getScale()Landroid/os/ExternalVibrationScale;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    return-wide v0
.end method

.method isHoldingSameVibration(Landroid/os/ExternalVibration;)Z
    .locals 1
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 166
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRepeating()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 101
    .local v0, "usage":I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public linkToDeath()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method muteScale()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    const/16 v1, -0x64

    iput v1, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 171
    nop

    .line 174
    return-void
.end method

.method public notifySessionCallback()V
    .locals 0

    .line 163
    return-void
.end method

.method public notifySyncedVibratorsCallback(J)V
    .locals 0
    .param p1, "vibrationId"    # J

    .line 158
    return-void
.end method

.method public notifyVibratorCallback(IJJ)V
    .locals 0
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 153
    return-void
.end method

.method public requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
    .locals 1
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p2, "endedBy"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .param p3, "immediate"    # Z

    .line 147
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/ExternalVibrationSession;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 148
    return-void
.end method

.method scale(Lcom/android/server/vibrator/VibrationScaler;I)V
    .locals 2
    .param p1, "scaler"    # Lcom/android/server/vibrator/VibrationScaler;
    .param p2, "usage"    # I

    .line 177
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v1

    iput v1, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 178
    nop

    .line 181
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {p1, p2}, Lcom/android/server/vibrator/VibrationScaler;->getAdaptiveHapticsScale(I)F

    move-result v1

    iput v1, v0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 182
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    iget v1, v1, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/VibrationStats;->reportAdaptiveScale(F)V

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalVibrationSession{sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vibrationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalVibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mScale:Landroid/os/ExternalVibrationScale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinkToDeath()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/server/vibrator/ExternalVibrationSession;->mExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0, p0}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 120
    return-void
.end method

.method public wasEndRequested()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/server/vibrator/Vibration;->hasEnded()Z

    move-result v0

    return v0
.end method
