.class Lcom/android/server/input/SysfsNodeMonitor$1;
.super Ljava/lang/Object;
.source "SysfsNodeMonitor.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/SysfsNodeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/SysfsNodeMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/SysfsNodeMonitor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 79
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {v0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$mstartMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V

    .line 80
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 89
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 84
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$1;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {v0, p1}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$mstopMonitoring(Lcom/android/server/input/SysfsNodeMonitor;I)V

    .line 85
    return-void
.end method
