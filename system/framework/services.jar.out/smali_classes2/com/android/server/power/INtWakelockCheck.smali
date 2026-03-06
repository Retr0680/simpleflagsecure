.class public interface abstract Lcom/android/server/power/INtWakelockCheck;
.super Ljava/lang/Object;
.source "INtWakelockCheck.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/power/INtWakelockCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/android/server/power/INtWakelockCheck$1;

    invoke-direct {v0}, Lcom/android/server/power/INtWakelockCheck$1;-><init>()V

    sput-object v0, Lcom/android/server/power/INtWakelockCheck;->DEFAULT:Lcom/android/server/power/INtWakelockCheck;

    return-void
.end method


# virtual methods
.method public allowAcquire(Lcom/android/server/power/PowerManagerService$WakeLock;Lcom/android/server/power/feature/PowerManagerFlags;)Z
    .locals 1
    .param p1, "wakelock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "powerManagerFlags"    # Lcom/android/server/power/feature/PowerManagerFlags;

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public convertAlarmType(ILandroid/app/PendingIntent;)I
    .locals 0
    .param p1, "type"    # I
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 48
    return p1
.end method

.method public grabOnlineConfig()V
    .locals 0

    .line 36
    return-void
.end method

.method public handleScreenStateChange(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p2, "isDisplayActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;Z)V"
        }
    .end annotation

    .line 61
    .local p1, "wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    return-void
.end method

.method public isInWakelockBlacklist(Lcom/android/server/power/PowerManagerService$WakeLock;[I)Z
    .locals 1
    .param p1, "wakelock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "deviceIdleWhitelist"    # [I

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public registerServices(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public rmWakeLockFromDisabledMap(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p1, "wakelock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 57
    return-void
.end method

.method public setWakeLockTrackMap(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .param p1, "wakelock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 53
    return-void
.end method
