.class final Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"

# interfaces
.implements Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
.implements Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerNativeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VibrationCompleteListener"
.end annotation


# instance fields
.field private mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/vibrator/VibratorManagerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/vibrator/VibratorManagerService;

    .line 2266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 2268
    return-void
.end method


# virtual methods
.method public onComplete(IJJ)V
    .locals 7
    .param p1, "vibratorId"    # I
    .param p2, "vibrationId"    # J
    .param p4, "stepId"    # J

    .line 2288
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/vibrator/VibratorManagerService;

    .line 2289
    .local v1, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v1, :cond_0

    .line 2290
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "vibratorId":I
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .local v2, "vibratorId":I
    .local v3, "vibrationId":J
    .local v5, "stepId":J
    invoke-static/range {v1 .. v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;IJJ)V

    goto :goto_0

    .line 2289
    .end local v2    # "vibratorId":I
    .end local v3    # "vibrationId":J
    .end local v5    # "stepId":J
    .restart local p1    # "vibratorId":I
    .restart local p2    # "vibrationId":J
    .restart local p4    # "stepId":J
    :cond_0
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2292
    .end local p1    # "vibratorId":I
    .end local p2    # "vibrationId":J
    .end local p4    # "stepId":J
    .restart local v2    # "vibratorId":I
    .restart local v3    # "vibrationId":J
    .restart local v5    # "stepId":J
    :goto_0
    return-void
.end method

.method public onSyncedVibrationComplete(J)V
    .locals 1
    .param p1, "vibrationId"    # J

    .line 2272
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 2273
    .local v0, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v0, :cond_0

    .line 2274
    invoke-static {v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monSyncedVibrationComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    .line 2276
    :cond_0
    return-void
.end method

.method public onVibrationSessionComplete(J)V
    .locals 1
    .param p1, "sessionId"    # J

    .line 2280
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationCompleteListener;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 2281
    .local v0, "service":Lcom/android/server/vibrator/VibratorManagerService;
    if-eqz v0, :cond_0

    .line 2282
    invoke-static {v0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$monVibrationSessionComplete(Lcom/android/server/vibrator/VibratorManagerService;J)V

    .line 2284
    :cond_0
    return-void
.end method
