.class Lcom/android/server/policy/WindowWakeUpPolicy;
.super Ljava/lang/Object;
.source "WindowWakeUpPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowWakeUpPolicy"


# instance fields
.field private final mAllowTheaterModeWakeFromCameraLens:Z

.field private final mAllowTheaterModeWakeFromKey:Z

.field private final mAllowTheaterModeWakeFromLidSwitch:Z

.field private final mAllowTheaterModeWakeFromMotion:Z

.field private final mAllowTheaterModeWakeFromPowerKey:Z

.field private final mAllowTheaterModeWakeFromWakeGesture:Z

.field private final mClock:Lcom/android/internal/os/Clock;

.field private final mContext:Landroid/content/Context;

.field private mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;-><init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V

    .line 69
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/Clock;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/android/internal/os/Clock;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 74
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    .line 75
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    .line 76
    iput-object p2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1110028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    .line 81
    iget-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    nop

    if-nez v1, :cond_1

    .line 82
    const v1, 0x111002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 84
    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    .line 86
    const v1, 0x1110025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 88
    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 90
    const v1, 0x1110027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 92
    nop

    .line 93
    new-instance v1, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;-><init>(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicy-IA;)V

    const-class v2, Lcom/android/server/policy/WindowWakeUpPolicyInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method private canWakeUp(Z)Z
    .locals 4
    .param p1, "wakeInTheaterMode"    # Z

    .line 240
    invoke-direct {p0}, Lcom/android/server/policy/WindowWakeUpPolicy;->isDefaultDisplayOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 245
    return v1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    const-string/jumbo v2, "theater_mode_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 250
    .local v0, "isTheaterModeEnabled":Z
    :goto_0
    if-nez p1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1
.end method

.method private isDefaultDisplayOn()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    return v0
.end method

.method private wakeUp(IJILjava/lang/String;)V
    .locals 7
    .param p1, "displayId"    # I
    .param p2, "wakeTime"    # J
    .param p4, "reason"    # I
    .param p5, "details"    # Ljava/lang/String;

    .line 266
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    move v6, v0

    .line 267
    .local v6, "displayIdToWake":I
    iget-object v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.policy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v2, p2

    move v4, p4

    .end local p2    # "wakeTime":J
    .end local p4    # "reason":I
    .local v2, "wakeTime":J
    .local v4, "reason":I
    invoke-virtual/range {v1 .. v6}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    .line 268
    return-void
.end method

.method private wakeUp(JILjava/lang/String;)V
    .locals 3
    .param p1, "wakeTime"    # J
    .param p3, "reason"    # I
    .param p4, "details"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.policy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 260
    return-void
.end method


# virtual methods
.method wakeUpFromCameraCover(J)Z
    .locals 2
    .param p1, "eventTime"    # J

    .line 186
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromCameraLens:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x5

    const-string v1, "CAMERA_COVER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method wakeUpFromKey(IJIZ)Z
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "eventTime"    # J
    .param p4, "keyCode"    # I
    .param p5, "isDown"    # Z

    .line 120
    const/16 v0, 0x1a

    if-ne p4, v0, :cond_0

    .line 121
    iget-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    goto :goto_0

    .line 122
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromKey:Z

    :goto_0
    nop

    .line 123
    .local v1, "wakeAllowedDuringTheaterMode":Z
    invoke-direct {p0, v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v3, 0x1

    nop

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    .line 128
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromKey(JIZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    return v3

    .line 131
    :cond_2
    nop

    .line 132
    nop

    .line 135
    if-ne p4, v0, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    move v8, v2

    .line 136
    :goto_1
    if-ne p4, v0, :cond_4

    const-string v0, "POWER"

    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_4
    const-string v0, "KEY"

    goto :goto_2

    .line 132
    :goto_3
    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    .end local p1    # "displayId":I
    .end local p2    # "eventTime":J
    .local v5, "displayId":I
    .local v6, "eventTime":J
    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IJILjava/lang/String;)V

    .line 143
    return v3
.end method

.method wakeUpFromLid()Z
    .locals 4

    .line 201
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromLidSwitch:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0x9

    const-string v3, "LID"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method wakeUpFromMotion(IJIZZ)Z
    .locals 8
    .param p1, "displayId"    # I
    .param p2, "eventTime"    # J
    .param p4, "source"    # I
    .param p5, "isDown"    # Z
    .param p6, "deviceGoingToSleep"    # Z

    .line 161
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromMotion:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mInputWakeUpDelegate:Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;

    .line 166
    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    .end local p2    # "eventTime":J
    .end local p4    # "source":I
    .end local p5    # "isDown":Z
    .end local p6    # "deviceGoingToSleep":Z
    .local v3, "eventTime":J
    .local v5, "source":I
    .local v6, "isDown":Z
    .local v7, "deviceGoingToSleep":Z
    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;->wakeUpFromMotion(JIZZ)Z

    move-result p2

    move p3, v5

    move p4, v6

    move p5, v7

    .end local v5    # "source":I
    .end local v6    # "isDown":Z
    .end local v7    # "deviceGoingToSleep":Z
    .local p3, "source":I
    .local p4, "isDown":Z
    .local p5, "deviceGoingToSleep":Z
    if-eqz p2, :cond_2

    .line 168
    return v1

    .line 165
    .end local v3    # "eventTime":J
    .end local p3    # "source":I
    .restart local p2    # "eventTime":J
    .local p4, "source":I
    .local p5, "isDown":Z
    .restart local p6    # "deviceGoingToSleep":Z
    :cond_1
    move-wide v3, p2

    move p3, p4

    move p4, p5

    move p5, p6

    .line 170
    .end local p2    # "eventTime":J
    .end local p6    # "deviceGoingToSleep":Z
    .restart local v3    # "eventTime":J
    .restart local p3    # "source":I
    .local p4, "isDown":Z
    .local p5, "deviceGoingToSleep":Z
    :cond_2
    nop

    .line 171
    const/4 v6, 0x7

    const-string v7, "MOTION"

    move-object v2, p0

    move-wide v4, v3

    move v3, p1

    .end local p1    # "displayId":I
    .local v3, "displayId":I
    .local v4, "eventTime":J
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(IJILjava/lang/String;)V

    .line 175
    return v1
.end method

.method wakeUpFromPowerKeyCameraGesture()Z
    .locals 4

    .line 216
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromPowerKey:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const-string v3, "CAMERA_GESTURE_PREVENT_LOCK"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method wakeUpFromWakeGesture()Z
    .locals 4

    .line 231
    iget-boolean v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mAllowTheaterModeWakeFromWakeGesture:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->canWakeUp(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowWakeUpPolicy;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "GESTURE"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUp(JILjava/lang/String;)V

    .line 236
    const/4 v0, 0x1

    return v0
.end method
