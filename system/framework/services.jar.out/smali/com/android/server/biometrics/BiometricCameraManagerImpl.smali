.class public Lcom/android/server/biometrics/BiometricCameraManagerImpl;
.super Ljava/lang/Object;
.source "BiometricCameraManagerImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricCameraManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricCameraManager"


# instance fields
.field private final mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsCameraAvailable(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/SensorPrivacyManager;)V
    .locals 3
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
    .param p2, "sensorPrivacyManager"    # Landroid/hardware/SensorPrivacyManager;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricCameraManagerImpl$1;-><init>(Lcom/android/server/biometrics/BiometricCameraManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 52
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 53
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 54
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 55
    return-void
.end method


# virtual methods
.method public isAnyCameraUnavailable()Z
    .locals 8

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 61
    .local v4, "cameraId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mIsCameraAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    .line 62
    return v6

    .line 61
    :cond_0
    nop

    .line 60
    .end local v4    # "cameraId":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_1

    .line 65
    :cond_1
    return v0

    .line 66
    :goto_1
    nop

    .line 67
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "BiometricCameraManager"

    const-string v3, "Camera exception thrown when trying to determine availability: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    return v0
.end method

.method public isCameraPrivacyEnabled()Z
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 76
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 75
    :goto_0
    return v1
.end method
