.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController;
.super Ljava/lang/Object;
.source "VirtualCameraController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualCameraController"

.field private static final VIRTUAL_CAMERA_SERVICE_NAME:Ljava/lang/String; = "virtual_camera"


# instance fields
.field private final mCameraPolicy:I

.field private final mCameras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceId:I

.field private final mServiceLock:Ljava/lang/Object;

.field private mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "cameraPolicy"    # I
    .param p2, "deviceId"    # I

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V
    .locals 1
    .param p1, "virtualCameraService"    # Landroid/companion/virtualcamera/IVirtualCameraService;
    .param p2, "cameraPolicy"    # I
    .param p3, "deviceId"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 74
    iput p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    .line 75
    iput p3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    .line 76
    return-void
.end method

.method private checkConfigByPolicy(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 3
    .param p1, "config"    # Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 196
    iget v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->isLensFacingAlreadyPresent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only a single virtual camera can be created with lens facing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create virtual camera with DEVICE_POLICY_DEFAULT for POLICY_TYPE_CAMERA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectVirtualCameraService()V
    .locals 5

    .line 232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 234
    .local v0, "callingId":J
    :try_start_0
    const-string/jumbo v2, "virtual_camera"

    .line 235
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 236
    .local v2, "virtualCameraBinder":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 237
    const-string v3, "VirtualCameraController"

    const-string v4, "connectVirtualCameraService: Failed to connect to the virtual camera service"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    return-void

    .line 246
    .end local v2    # "virtualCameraBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 243
    :catch_0
    move-exception v2

    goto :goto_1

    .line 241
    .restart local v2    # "virtualCameraBinder":Landroid/os/IBinder;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 242
    invoke-static {v2}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v2    # "virtualCameraBinder":Landroid/os/IBinder;
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    goto :goto_2

    .line 243
    :goto_1
    nop

    .line 244
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 248
    :goto_2
    return-void

    .line 246
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw v2
.end method

.method private connectVirtualCameraServiceIfNeeded()V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    if-nez v1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraService()V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 225
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    if-eqz v1, :cond_1

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 226
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Virtual camera service is not connected."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    throw v1

    .line 228
    .restart local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isLensFacingAlreadyPresent(I)Z
    .locals 4
    .param p1, "lensFacing"    # I

    .line 208
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 210
    .local v2, "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    invoke-static {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->-$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 211
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 214
    .end local v2    # "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 210
    .restart local v2    # "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    :cond_0
    nop

    .line 213
    .end local v2    # "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    goto :goto_0

    .line 214
    :cond_1
    monitor-exit v0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 214
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/companion/virtual/camera/VirtualCameraConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    invoke-static {p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraConversionUtil;->getServiceCameraConfiguration(Landroid/companion/virtual/camera/VirtualCameraConfig;)Landroid/companion/virtualcamera/VirtualCameraConfiguration;

    move-result-object v0

    .line 252
    .local v0, "serviceConfiguration":Landroid/companion/virtualcamera/VirtualCameraConfiguration;
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mDeviceId:I

    invoke-interface {v2, v3, v0, v4}, Landroid/companion/virtualcamera/IVirtualCameraService;->registerCamera(Landroid/os/IBinder;Landroid/companion/virtualcamera/VirtualCameraConfiguration;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 150
    const-string v0, "VirtualCameraController"

    const-string v1, "Virtual camera service died."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v1

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 153
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public close()V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 165
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 166
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .local v3, "binder":Landroid/os/IBinder;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-interface {v4, v3}, Landroid/companion/virtualcamera/IVirtualCameraService;->unregisterCamera(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    goto :goto_1

    .line 174
    .end local v3    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 169
    .restart local v3    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v4

    nop

    .line 170
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "VirtualCameraController"

    const-string v6, "close(): Camera failed to be removed on camera service."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 174
    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 177
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 174
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    :try_start_6
    throw v2

    .line 177
    .restart local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    :cond_1
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 178
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 177
    :goto_4
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "fout"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VirtualCameraController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 188
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Registered cameras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    .line 190
    .local v2, "descriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->-$$Nest$fgetmConfig(Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;)Landroid/companion/virtual/camera/VirtualCameraConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .end local v2    # "descriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 193
    return-void

    .line 192
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .locals 3
    .param p1, "cameraConfig"    # Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 137
    invoke-direct {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/companion/virtualcamera/IVirtualCameraService;->getCameraId(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .end local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .restart local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .restart local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :catch_0
    move-exception v0

    nop

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;Landroid/content/AttributionSource;)V
    .locals 4
    .param p1, "cameraConfig"    # Landroid/companion/virtual/camera/VirtualCameraConfig;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->checkConfigByPolicy(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 87
    invoke-direct {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    .line 90
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;-><init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    .line 93
    .local v0, "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 94
    .local v1, "binder":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 95
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :try_start_1
    iget-object v3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v2

    .line 98
    .end local v0    # "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    .end local v1    # "binder":Landroid/os/IBinder;
    nop

    .line 104
    goto :goto_1

    .line 97
    .restart local v0    # "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .end local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    .end local p2    # "attributionSource":Landroid/content/AttributionSource;
    :try_start_2
    throw v3

    .line 102
    .end local v0    # "cameraDescriptor":Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
    .end local v1    # "binder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .restart local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    .restart local p2    # "attributionSource":Landroid/content/AttributionSource;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to register virtual camera."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .end local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    .end local p2    # "attributionSource":Landroid/content/AttributionSource;
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    .restart local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .restart local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    .restart local p2    # "attributionSource":Landroid/content/AttributionSource;
    :goto_0
    nop

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v0, "virtual_devices.value_virtual_camera_created_count"

    .line 107
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 105
    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 4
    .param p1, "cameraConfig"    # Landroid/companion/virtual/camera/VirtualCameraConfig;

    .line 116
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 118
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const-string v2, "VirtualCameraController"

    const-string v3, "Virtual camera was not registered."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    .end local v1    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 121
    .restart local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    iget-object v3, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-interface {v3, v1}, Landroid/companion/virtualcamera/IVirtualCameraService;->unregisterCamera(Landroid/os/IBinder;)V

    .line 126
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :try_start_3
    iget-object v2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    goto :goto_0

    .line 126
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v1    # "binder":Landroid/os/IBinder;
    .end local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .end local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :try_start_5
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 128
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/camera/VirtualCameraController;
    .restart local p1    # "cameraConfig":Landroid/companion/virtual/camera/VirtualCameraConfig;
    :goto_0
    nop

    .line 129
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_6
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 132
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method
