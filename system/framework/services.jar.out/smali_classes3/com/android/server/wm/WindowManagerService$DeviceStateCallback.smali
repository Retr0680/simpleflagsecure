.class Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateCallback"
.end annotation


# instance fields
.field private mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method isInRearDisplayOuterDefaultState()Z
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    const/16 v1, 0x3e9

    filled-new-array {v1}, [I

    move-result-object v1

    .line 1076
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1075
    :goto_0
    return v0
.end method

.method public onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 0
    .param p1, "state"    # Landroid/hardware/devicestate/DeviceState;

    .line 1071
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DeviceStateCallback;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    .line 1072
    return-void
.end method
