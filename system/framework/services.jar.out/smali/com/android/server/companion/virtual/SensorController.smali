.class public Lcom/android/server/companion/virtual/SensorController;
.super Ljava/lang/Object;
.source "SensorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;,
        Lcom/android/server/companion/virtual/SensorController$SensorCreationException;,
        Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    }
.end annotation


# static fields
.field private static final BAD_VALUE:I = -0x16

.field private static final OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SensorController"

.field private static final UNKNOWN_ERROR:I = -0x80000000

.field private static sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mLock:Ljava/lang/Object;

.field private final mRuntimeSensorCallback:Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;

.field private final mSensorDescriptors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

.field private final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field private final mVirtualDeviceId:I

.field private mVirtualSensorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualSensors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZcEHmBQisnAe3XHQp_iGjHvd-wM(Lcom/android/server/companion/virtual/SensorController;Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/SensorController;->lambda$close$0(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmVdmInternal(Lcom/android/server/companion/virtual/SensorController;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDeviceId(Lcom/android/server/companion/virtual/SensorController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsNextDirectChannelHandle()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V
    .locals 1
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "virtualDeviceId"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "virtualSensorCallback"    # Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/virtual/IVirtualDevice;",
            "I",
            "Landroid/content/AttributionSource;",
            "Landroid/companion/virtual/sensor/IVirtualSensorCallback;",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p5, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensorConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 89
    iput p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 90
    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 91
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    invoke-direct {v0, p0, p4}, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;-><init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;

    .line 92
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 93
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 94
    invoke-direct {p0, p1, p5}, Lcom/android/server/companion/virtual/SensorController;->createSensors(Landroid/companion/virtual/IVirtualDevice;Ljava/util/List;)V

    .line 95
    return-void
.end method

.method private createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    .locals 21
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "config"    # Landroid/companion/virtual/sensor/VirtualSensorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/companion/virtual/SensorController$SensorCreationException;
        }
    .end annotation

    .line 125
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v0

    if-lez v0, :cond_2

    .line 131
    iget-object v2, v1, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    iget v3, v1, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaximumRange()F

    move-result v7

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getResolution()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getPower()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMinDelay()I

    move-result v10

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaxDelay()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    move-result v12

    iget-object v13, v1, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;

    .line 131
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/sensors/SensorManagerInternal;->createRuntimeSensor(IILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I

    move-result v15

    .line 136
    .local v15, "handle":I
    if-lez v15, :cond_1

    .line 141
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v15, v2, v3}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    move-object v2, v0

    .line 143
    .local v2, "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    new-instance v0, Landroid/os/Binder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.hardware.sensor.VirtualSensor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v0

    .line 145
    .local v20, "sensorToken":Landroid/os/IBinder;
    new-instance v14, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v17

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    move-result v18

    move-object/from16 v19, p1

    invoke-direct/range {v14 .. v20}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;ILandroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    move-object/from16 v3, v20

    .line 147
    .end local v20    # "sensorToken":Landroid/os/IBinder;
    .local v3, "sensorToken":Landroid/os/IBinder;
    .local v14, "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    iget-object v4, v1, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 148
    :try_start_0
    iget-object v0, v1, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, v1, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const-string/jumbo v0, "virtual_devices.value_virtual_sensors_created_count"

    iget-object v4, v1, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    .line 153
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    .line 151
    invoke-static {v0, v4}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 154
    return-void

    .line 150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 137
    .end local v2    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .end local v3    # "sensorToken":Landroid/os/IBinder;
    .end local v14    # "sensor":Landroid/companion/virtual/sensor/VirtualSensor;
    :cond_1
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an invalid virtual sensor handle \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    .end local v15    # "handle":I
    :cond_2
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an invalid virtual sensor type (config name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\')."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSensors(Landroid/companion/virtual/IVirtualDevice;Ljava/util/List;)V
    .locals 5
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/companion/virtual/IVirtualDevice;",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensorConfig;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    .local v0, "token":J
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    .line 113
    .local v3, "config":Landroid/companion/virtual/sensor/VirtualSensorConfig;
    invoke-direct {p0, p1, v3}, Lcom/android/server/companion/virtual/SensorController;->createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/SensorController$SensorCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v3    # "config":Landroid/companion/virtual/sensor/VirtualSensorConfig;
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 115
    :catch_0
    move-exception v2

    goto :goto_1

    .line 118
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    nop

    .line 120
    return-void

    .line 115
    :goto_1
    nop

    .line 116
    .local v2, "e":Lcom/android/server/companion/virtual/SensorController$SensorCreationException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create virtual sensor"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/companion/virtual/SensorController;
    .end local p1    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .end local p2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensorConfig;>;"
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v2    # "e":Lcom/android/server/companion/virtual/SensorController$SensorCreationException;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/companion/virtual/SensorController;
    .restart local p1    # "virtualDevice":Landroid/companion/virtual/IVirtualDevice;
    .restart local p2    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/companion/virtual/sensor/VirtualSensorConfig;>;"
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    throw v2
.end method

.method private synthetic lambda$close$0(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    invoke-static {p1}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->-$$Nest$fgetmHandle(Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/sensors/SensorManagerInternal;->removeRuntimeSensor(I)V

    return-void
.end method


# virtual methods
.method addSensorForTesting(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 3
    .param p1, "deviceToken"    # Landroid/os/IBinder;
    .param p2, "handle"    # I
    .param p3, "type"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/SensorController;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 102
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "fout"    # Ljava/io/PrintWriter;

    .line 222
    const-string v0, "    SensorController: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    const-string v1, "      Active descriptors: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 226
    .local v2, "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "          name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    .end local v2    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSensorByHandle(I)Landroid/companion/virtual/sensor/VirtualSensor;
    .locals 2
    .param p1, "handle"    # I

    .line 203
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/sensor/VirtualSensor;

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSensorDescriptors()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSensorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensor;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 212
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 215
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 218
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;

    .line 172
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    iget-object v2, v1, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    :try_start_0
    iget-object v0, v1, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 176
    .local v0, "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    move-wide v10, v4

    .line 177
    .local v10, "timestamp":J
    if-eqz v0, :cond_4

    .line 180
    iget-object v6, v1, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 181
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v7

    const-wide/16 v4, 0x1

    add-long v13, v10, v4

    .line 180
    .end local v10    # "timestamp":J
    .local v13, "timestamp":J
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    .restart local v10    # "timestamp":J
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v6

    .end local v10    # "timestamp":J
    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 183
    monitor-exit v2

    return v7

    .line 197
    .end local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .end local v13    # "timestamp":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 185
    .restart local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .restart local v13    # "timestamp":J
    :cond_0
    const/4 v6, 0x0

    move-wide/from16 v19, v13

    .end local v13    # "timestamp":J
    .local v6, "i":I
    .local v19, "timestamp":J
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 186
    iget-object v15, v1, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 187
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getType()I

    move-result v17

    add-long v13, v19, v4

    .line 188
    .end local v19    # "timestamp":J
    .restart local v13    # "timestamp":J
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v21, v8

    check-cast v21, [F

    .line 186
    move/from16 v18, v6

    .end local v6    # "i":I
    .local v18, "i":I
    .restart local v19    # "timestamp":J
    invoke-virtual/range {v15 .. v21}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v6

    .end local v19    # "timestamp":J
    if-nez v6, :cond_1

    .line 189
    monitor-exit v2

    return v7

    .line 185
    :cond_1
    add-int/lit8 v6, v18, 0x1

    move-wide/from16 v19, v13

    .end local v18    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .end local v13    # "timestamp":J
    .restart local v19    # "timestamp":J
    :cond_2
    move/from16 v18, v6

    .line 192
    .end local v6    # "i":I
    iget-object v8, v1, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 193
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v9

    .line 192
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-wide/from16 v12, v19

    .end local v19    # "timestamp":J
    .local v12, "timestamp":J
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v4

    .end local v12    # "timestamp":J
    .restart local v19    # "timestamp":J
    if-nez v4, :cond_3

    .line 195
    monitor-exit v2

    return v7

    .line 192
    :cond_3
    nop

    .line 197
    .end local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .end local v19    # "timestamp":J
    monitor-exit v2

    .line 198
    const/4 v0, 0x1

    return v0

    .line 178
    .restart local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .restart local v10    # "timestamp":J
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Could not send sensor event for given token"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/SensorController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "info":Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
    throw v4

    .line 197
    .end local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .end local v10    # "timestamp":J
    .restart local p0    # "this":Lcom/android/server/companion/virtual/SensorController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "info":Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;
    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/companion/virtual/sensor/VirtualSensorEvent;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 161
    .local v0, "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    if-eqz v0, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorManagerInternal;

    .line 165
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getHandle()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->getType()I

    move-result v4

    .line 166
    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getTimestampNanos()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getValues()[F

    move-result-object v7

    .line 164
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/sensors/SensorManagerInternal;->sendSensorEvent(IIJ[F)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 167
    .end local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 162
    .restart local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not send sensor event for given token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/companion/virtual/SensorController;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "event":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    throw v2

    .line 167
    .end local v0    # "sensorDescriptor":Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
    .restart local p0    # "this":Lcom/android/server/companion/virtual/SensorController;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "event":Landroid/companion/virtual/sensor/VirtualSensorEvent;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
