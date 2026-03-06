.class public Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;
.super Ljava/lang/Object;
.source "BiometricNotificationImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendCustomizeFpFrrNotification(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showCustomizeFpFrrNotification(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public sendFaceEnrollNotification(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFaceEnrollNotification(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public sendFpEnrollNotification(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFingerprintEnrollNotification(Landroid/content/Context;)V

    .line 37
    return-void
.end method
