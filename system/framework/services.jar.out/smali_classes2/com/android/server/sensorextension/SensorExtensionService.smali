.class public Lcom/android/server/sensorextension/SensorExtensionService;
.super Landroid/os/sensorextension/ISensorExtensionManager$Stub;
.source "SensorExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorextension/SensorExtensionService$SensorExtensionServiceLifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorExtensionService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Landroid/os/sensorextension/ISensorExtensionManager$Stub;-><init>()V

    .line 46
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_SENSOR_EXTENSION:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensorextension/INtSensorExtension;

    iput-object v0, p0, Lcom/android/server/sensorextension/SensorExtensionService;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    .line 47
    iput-object p1, p0, Lcom/android/server/sensorextension/SensorExtensionService;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public execSyncIntFloat(III[I[F)Z
    .locals 7
    .param p1, "sensorType"    # I
    .param p2, "cmd"    # I
    .param p3, "delay"    # I
    .param p4, "intRequestValues"    # [I
    .param p5, "floatResponseValues"    # [F

    .line 58
    iget-object v0, p0, Lcom/android/server/sensorextension/SensorExtensionService;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/server/sensorextension/SensorExtensionService;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "sensorType":I
    .end local p2    # "cmd":I
    .end local p3    # "delay":I
    .end local p4    # "intRequestValues":[I
    .end local p5    # "floatResponseValues":[F
    .local v2, "sensorType":I
    .local v3, "cmd":I
    .local v4, "delay":I
    .local v5, "intRequestValues":[I
    .local v6, "floatResponseValues":[F
    invoke-interface/range {v1 .. v6}, Lcom/android/server/sensorextension/INtSensorExtension;->execSyncIntFloat(III[I[F)Z

    move-result p1

    return p1
.end method

.method public execSyncIntInt(III[I[I)Z
    .locals 7
    .param p1, "sensorType"    # I
    .param p2, "cmd"    # I
    .param p3, "delay"    # I
    .param p4, "intRequestValues"    # [I
    .param p5, "intResponseValues"    # [I

    .line 51
    iget-object v0, p0, Lcom/android/server/sensorextension/SensorExtensionService;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/android/server/sensorextension/SensorExtensionService;->mSensorExtensionImpl:Lcom/android/server/sensorextension/INtSensorExtension;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "sensorType":I
    .end local p2    # "cmd":I
    .end local p3    # "delay":I
    .end local p4    # "intRequestValues":[I
    .end local p5    # "intResponseValues":[I
    .local v2, "sensorType":I
    .local v3, "cmd":I
    .local v4, "delay":I
    .local v5, "intRequestValues":[I
    .local v6, "intResponseValues":[I
    invoke-interface/range {v1 .. v6}, Lcom/android/server/sensorextension/INtSensorExtension;->execSyncIntInt(III[I[I)Z

    move-result p1

    return p1
.end method
