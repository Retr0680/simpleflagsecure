.class final Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HalBinderCallback"
.end annotation


# instance fields
.field private final mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

.field final synthetic this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/frameworks/devicestate/IDeviceStateListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1384
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    .line 1386
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 10
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    new-instance v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;

    invoke-direct {v0}, Landroid/frameworks/devicestate/DeviceStateConfiguration;-><init>()V

    .line 1391
    .local v0, "config":Landroid/frameworks/devicestate/DeviceStateConfiguration;
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 1392
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1393
    .local v1, "systemProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 1394
    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1395
    .local v2, "physicalProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    .line 1396
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1397
    .local v4, "prop":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-static {v5}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->-$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1398
    .local v5, "publicProperty":Ljava/lang/Long;
    nop

    .line 1399
    iget-wide v6, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    or-long/2addr v6, v8

    iput-wide v6, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    .line 1401
    .end local v4    # "prop":Ljava/lang/Integer;
    .end local v5    # "publicProperty":Ljava/lang/Long;
    goto :goto_0

    .line 1402
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1403
    .restart local v4    # "prop":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-static {v5}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->-$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1404
    .restart local v5    # "publicProperty":Ljava/lang/Long;
    nop

    .line 1405
    iget-wide v6, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    or-long/2addr v6, v8

    iput-wide v6, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    .line 1407
    .end local v4    # "prop":Ljava/lang/Integer;
    .end local v5    # "publicProperty":Ljava/lang/Long;
    goto :goto_1

    .line 1408
    :cond_1
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    invoke-interface {v3, v0}, Landroid/frameworks/devicestate/IDeviceStateListener;->onDeviceStateChanged(Landroid/frameworks/devicestate/DeviceStateConfiguration;)V

    .line 1409
    return-void
.end method

.method public onRequestActive(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1414
    return-void
.end method

.method public onRequestCanceled(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1419
    return-void
.end method
