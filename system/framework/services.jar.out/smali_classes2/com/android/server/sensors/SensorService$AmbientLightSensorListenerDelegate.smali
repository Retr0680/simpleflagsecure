.class Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmbientLightSensorListenerDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method private constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sensors/SensorService;Lcom/android/server/sensors/SensorService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;-><init>(Lcom/android/server/sensors/SensorService;)V

    return-void
.end method


# virtual methods
.method public onAmbientLightSensorActive(Z)V
    .locals 4
    .param p1, "isActive"    # Z

    .line 320
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v0}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmLock(Lcom/android/server/sensors/SensorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    invoke-static {v1}, Lcom/android/server/sensors/SensorService;->-$$Nest$fgetmAmbientLightSensorListeners(Lcom/android/server/sensors/SensorService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;

    .line 322
    .local v1, "listeners":[Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    .line 324
    .local v3, "listener":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    invoke-virtual {v3, p1}, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;->onAmbientLightSensorActive(Z)V

    .line 323
    .end local v3    # "listener":Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_0
    return-void

    .line 322
    .end local v1    # "listeners":[Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
