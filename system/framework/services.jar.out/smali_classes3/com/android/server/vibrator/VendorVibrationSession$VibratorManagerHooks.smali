.class interface abstract Lcom/android/server/vibrator/VendorVibrationSession$VibratorManagerHooks;
.super Ljava/lang/Object;
.source "VendorVibrationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VendorVibrationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VibratorManagerHooks"
.end annotation


# virtual methods
.method public abstract endSession(JZ)V
.end method

.method public abstract onSessionReleased(J)V
.end method

.method public abstract vibrate(JLcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V
.end method
