.class public Lcom/android/server/display/brightness/clamper/LightSensorController;
.super Ljava/lang/Object;
.source "LightSensorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;,
        Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final INVALID_LUX:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "LightSensorController"


# instance fields
.field private final mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field private final mLightSensorRate:I

.field private mRegisteredLightSensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLightSensorListener(Lcom/android/server/display/brightness/clamper/LightSensorController;)Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredLightSensor(Lcom/android/server/display/brightness/clamper/LightSensorController;)Landroid/hardware/Sensor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "LightSensorController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "listener"    # Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 83
    new-instance v5, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-direct {v5}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "sensorManager":Landroid/hardware/SensorManager;
    .end local p2    # "resources":Landroid/content/res/Resources;
    .end local p3    # "listener":Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .end local p4    # "handler":Landroid/os/Handler;
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    .local v2, "resources":Landroid/content/res/Resources;
    .local v3, "listener":Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .local v4, "handler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/LightSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "listener"    # Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "injector"    # Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 62
    new-instance v0, Lcom/android/server/display/brightness/clamper/LightSensorController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/LightSensorController$1;-><init>(Lcom/android/server/display/brightness/clamper/LightSensorController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 89
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 90
    invoke-virtual {p5, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getLightSensorRate(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    .line 91
    invoke-virtual {p5, p2}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getAmbientFilter(Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 92
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    .line 93
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p5, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    .line 95
    return-void
.end method


# virtual methods
.method configure(Lcom/android/server/display/config/SensorData;I)V
    .locals 3
    .param p1, "sensorData"    # Lcom/android/server/display/config/SensorData;
    .param p2, "displayId"    # I

    .line 129
    if-nez p2, :cond_0

    .line 130
    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "fallbackType":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;->getLightSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/config/SensorData;I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    .line 132
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 135
    const-string v0, "LightSensorController"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRegisteredLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method restart()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 110
    sget-boolean v0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 111
    const-string v0, "LightSensorController"

    const-string/jumbo v1, "restart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_3
    return-void
.end method

.method stop()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 121
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v0}, Lcom/android/server/display/utils/AmbientFilter;->clear()V

    .line 122
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, v1}, Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;->onAmbientLuxChange(F)V

    .line 123
    sget-boolean v0, Lcom/android/server/display/brightness/clamper/LightSensorController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "LightSensorController"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    return-void
.end method
