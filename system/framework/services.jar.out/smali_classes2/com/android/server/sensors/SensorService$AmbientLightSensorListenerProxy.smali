.class Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmbientLightSensorListenerProxy"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;


# direct methods
.method public static synthetic $r8$lambda$-x3FmLVkX4Cj-LfV0Kn-9DzIn0I(Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;->lambda$onAmbientLightSensorActive$0(Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 285
    iput-object p2, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    .line 286
    return-void
.end method

.method private synthetic lambda$onAmbientLightSensorActive$0(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .line 290
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;

    invoke-interface {v0, p1}, Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;->onAmbientLightSensorActive(Z)V

    return-void
.end method


# virtual methods
.method public onAmbientLightSensorActive(Z)V
    .locals 2
    .param p1, "isActive"    # Z

    .line 290
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService$AmbientLightSensorListenerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method
