.class Lcom/android/server/am/Freezer;
.super Ljava/lang/Object;
.source "Freezer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeFreezeBinder(IZI)I
.end method

.method private static native nativeGetBinderFreezeInfo(I)I
.end method

.method private static native nativeIsFreezerSupported()Z
.end method


# virtual methods
.method public freezeBinder(IZI)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "freeze"    # Z
    .param p3, "timeoutMs"    # I

    .line 60
    invoke-static {p1, p2, p3}, Lcom/android/server/am/Freezer;->nativeFreezeBinder(IZI)I

    move-result v0

    return v0
.end method

.method public getBinderFreezeInfo(I)I
    .locals 1
    .param p1, "pid"    # I

    .line 71
    invoke-static {p1}, Lcom/android/server/am/Freezer;->nativeGetBinderFreezeInfo(I)I

    move-result v0

    return v0
.end method

.method public isFreezerSupported()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/android/server/am/Freezer;->nativeIsFreezerSupported()Z

    move-result v0

    return v0
.end method

.method public setProcessFrozen(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "frozen"    # Z

    .line 40
    invoke-static {p1, p2, p3}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 41
    return-void
.end method
