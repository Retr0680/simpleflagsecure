.class final Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
.super Landroid/frameworks/devicestate/IDeviceStateService$Stub;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HalService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
    }
.end annotation


# instance fields
.field private final mPublicProperties:Landroid/util/LongSparseLongArray;

.field final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1357
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/frameworks/devicestate/IDeviceStateService$Stub;-><init>()V

    .line 1356
    new-instance p1, Landroid/util/LongSparseLongArray;

    invoke-direct {p1}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    .line 1358
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1361
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1364
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1367
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0xb

    const-wide/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1370
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0xc

    const-wide/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1373
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x20

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1376
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 1379
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1469
    const-string v0, "be9013fedb7fc3886980eca0e588bce998d315d2"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1464
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/frameworks/devicestate/IDeviceStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1429
    if-eqz p1, :cond_1

    .line 1433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1434
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1436
    .local v1, "token":J
    :try_start_0
    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    .line 1437
    .local v3, "callback":Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v4, v0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object v4

    .line 1438
    .local v4, "info":Landroid/hardware/devicestate/DeviceStateInfo;
    if-eqz v4, :cond_0

    .line 1439
    invoke-virtual {v3, v4}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1444
    .end local v3    # "callback":Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
    .end local v4    # "info":Landroid/hardware/devicestate/DeviceStateInfo;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1441
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1444
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1445
    nop

    .line 1446
    return-void

    .line 1441
    :goto_1
    nop

    .line 1442
    .local v3, "e":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v4, Landroid/os/ServiceSpecificException;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local v0    # "callingPid":I
    .end local v1    # "token":J
    .end local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
    .end local p1    # "listener":Landroid/frameworks/devicestate/IDeviceStateListener;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "callingPid":I
    .restart local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
    .restart local p1    # "listener":Landroid/frameworks/devicestate/IDeviceStateListener;
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1445
    throw v3

    .line 1430
    .end local v0    # "callingPid":I
    .end local v1    # "token":J
    :cond_1
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0
.end method

.method public unregisterListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/frameworks/devicestate/IDeviceStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1452
    .local v0, "callingPid":I
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1453
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1454
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1455
    monitor-exit v1

    return-void

    .line 1457
    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v1

    .line 1457
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
