.class public abstract Lcom/android/server/sensors/SensorManagerInternal;
.super Ljava/lang/Object;
.source "SensorManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;,
        Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;,
        Lcom/android/server/sensors/SensorManagerInternal$AmbientLightSensorActiveListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
.end method

.method public abstract createRuntimeSensor(IILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;)I
.end method

.method public abstract removeProximityActiveListener(Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
.end method

.method public abstract removeRuntimeSensor(I)V
.end method

.method public abstract sendSensorAdditionalInfo(IIIJ[F)Z
.end method

.method public abstract sendSensorEvent(IIJ[F)Z
.end method
