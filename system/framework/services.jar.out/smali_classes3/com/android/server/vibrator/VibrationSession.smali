.class interface abstract Lcom/android/server/vibrator/VibrationSession;
.super Ljava/lang/Object;
.source "VibrationSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationSession$Status;,
        Lcom/android/server/vibrator/VibrationSession$CallerInfo;,
        Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    }
.end annotation


# static fields
.field public static final sNextSessionId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSession;->sNextSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static nextSessionId()J
    .locals 2

    .line 50
    sget-object v0, Lcom/android/server/vibrator/VibrationSession;->sNextSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public abstract getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
.end method

.method public abstract getCallerToken()Landroid/os/IBinder;
.end method

.method public abstract getCreateUptimeMillis()J
.end method

.method public abstract getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
.end method

.method public abstract getSessionId()J
.end method

.method public abstract isRepeating()Z
.end method

.method public abstract linkToDeath()Z
.end method

.method public abstract notifySessionCallback()V
.end method

.method public abstract notifySyncedVibratorsCallback(J)V
.end method

.method public abstract notifyVibratorCallback(IJJ)V
.end method

.method public requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 87
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/vibrator/VibrationSession;->requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V

    .line 88
    return-void
.end method

.method public abstract requestEnd(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;Z)V
.end method

.method public abstract unlinkToDeath()V
.end method

.method public abstract wasEndRequested()Z
.end method
