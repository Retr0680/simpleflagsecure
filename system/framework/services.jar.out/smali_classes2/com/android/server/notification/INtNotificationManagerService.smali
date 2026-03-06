.class public interface abstract Lcom/android/server/notification/INtNotificationManagerService;
.super Ljava/lang/Object;
.source "INtNotificationManagerService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/notification/INtNotificationManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/server/notification/INtNotificationManagerService$1;

    invoke-direct {v0}, Lcom/android/server/notification/INtNotificationManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/notification/INtNotificationManagerService;->DEFAULT:Lcom/android/server/notification/INtNotificationManagerService;

    return-void
.end method


# virtual methods
.method public cancelVibration(Lcom/android/server/notification/VibratorHelper;)Z
    .locals 1
    .param p1, "vibratorHelper"    # Lcom/android/server/notification/VibratorHelper;

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public cancelVibration(Lcom/android/server/notification/VibratorHelper;Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "vibratorHelper"    # Lcom/android/server/notification/VibratorHelper;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public delayStopGlyphEffect()V
    .locals 0

    .line 44
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 55
    return-void
.end method

.method public getSound(Lcom/android/server/notification/NotificationRecord;)Landroid/net/Uri;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 54
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "nms"    # Lcom/android/server/notification/NotificationManagerService;

    .line 29
    return-void
.end method

.method public initExtension()V
    .locals 0

    .line 32
    return-void
.end method

.method public isHideNavBarInGestureMode()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isMistouchPreventWorkingNow()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedBlockNotificationPost(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedToBlockSwipeFromTop(IIF)Z
    .locals 1
    .param p1, "screenWidth"    # I
    .param p2, "rotation"    # I
    .param p3, "positionX"    # F

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageWithUnlimitedToast(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public isWhiteListCustomToast(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public observe(Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 45
    return-void
.end method

.method public onStart(Landroid/app/INotificationManager$Stub;)V
    .locals 0
    .param p1, "service"    # Landroid/app/INotificationManager$Stub;

    .line 30
    return-void
.end method

.method public playGlyphEffect(Lcom/android/server/notification/NotificationRecord;ZZ)V
    .locals 0
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "isInCall"    # Z
    .param p3, "isScreenOn"    # Z

    .line 43
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 31
    return-void
.end method

.method public updateObserver(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 46
    return-void
.end method

.method public vibrate(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;Landroid/os/VibrationEffect;Lcom/android/server/notification/VibratorHelper;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "vibratorHelper"    # Lcom/android/server/notification/VibratorHelper;

    .line 47
    const/4 v0, 0x0

    return v0
.end method
