.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;,
        Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessClamperController"


# instance fields
.field private final mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field private final mDeviceConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field private final mDisplayDeviceDataListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayState:I

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

.field private final mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;",
            ">;"
        }
    .end annotation
.end field

.field private mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

.field private final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private volatile mStarted:Z

.field private final mStatefulModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSwitchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KW1PfQkggty-OpDV9NTT8OvIsEM(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$recalculateModifiersState$5(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O_Db3R5ZOThySPed3NrXWlnzByY(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0jhELYM8iAkhQZTlgzlCemCYMI(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UbHQs2xcCeL-ihfZ8Z3AiRG97qA(Landroid/util/IndentingPrintWriter;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$dump$4(Landroid/util/IndentingPrintWriter;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_99BYE4X6wh_0QCNX7YtZRRi0qQ(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->recalculateModifiersState()V

    return-void
.end method

.method public static synthetic $r8$lambda$lZbkd5dSsq5LPeOklHPm2wOksTM(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTdg2EEUse8KZfVRspHss_Ie-xA(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->lambda$onDisplayChanged$3(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmModifiers(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "clamperChangeListener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p3, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p6, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p7, "currentBrightness"    # F

    .line 91
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V

    .line 93
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V
    .locals 10
    .param p1, "injector"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "clamperChangeListener"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .param p4, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p7, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p8, "currentBrightness"    # F

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 78
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 99
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 100
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorListener:Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    move-object/from16 v2, p7

    invoke-virtual {p1, v2, p5, v0, v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getLightSensorController(Landroid/hardware/SensorManager;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/LightSensorController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    .line 104
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 105
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 107
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    .line 108
    .local v0, "modifiersChangeRunnableInternal":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Ljava/lang/Runnable;)V

    move-object v7, v1

    .line 114
    .local v7, "clamperChangeListenerInternal":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    move-object v3, p1

    move-object v6, p2

    move-object v8, p4

    move-object v5, p5

    move-object/from16 v4, p6

    move/from16 v9, p8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;->getModifiers(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;F)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    .line 117
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v3, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 131
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 134
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v3

    invoke-virtual {p4}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getDisplayId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/display/brightness/clamper/LightSensorController;->configure(Lcom/android/server/display/config/SensorData;I)V

    .line 135
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->start()V

    .line 136
    return-void
.end method

.method private adjustLightSensorSubscription()V
    .locals 2

    .line 245
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    const/4 v1, 0x2

    nop

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda4;-><init>()V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->restart()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 251
    :goto_0
    return-void
.end method

.method private static synthetic lambda$dump$4(Landroid/util/IndentingPrintWriter;Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 0
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "modifier"    # Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    .line 183
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "modifiersChangeRunnableInternal"    # Ljava/lang/Runnable;

    .line 109
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;)V
    .locals 2
    .param p1, "m"    # Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    .line 118
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    nop

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    .line 119
    .local v0, "l":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v0    # "l":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
    :cond_0
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    nop

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    .line 122
    .local v0, "s":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v0    # "s":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;
    :cond_1
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    nop

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;

    .line 125
    .local v0, "l":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v0    # "l":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$UserSwitchListener;
    :cond_2
    instance-of v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    nop

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;

    .line 128
    .local v0, "l":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v0    # "l":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;
    :cond_3
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 132
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 133
    return-void
.end method

.method private static synthetic lambda$onDisplayChanged$3(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;)V
    .locals 0
    .param p0, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
    .param p1, "l"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;

    .line 143
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method private static synthetic lambda$recalculateModifiersState$5(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;)V
    .locals 0
    .param p0, "newAggregatedState"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;
    .param p1, "modifier"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;

    .line 215
    invoke-interface {p1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;->applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    return-void
.end method

.method private needToNotifyExternalListener(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)Z
    .locals 2
    .param p1, "state1"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;
    .param p2, "state2"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 225
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    iget v1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    iget v1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    .line 227
    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    iget-object v1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    iget v1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v1, p2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    .line 231
    invoke-static {v0, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 225
    :goto_1
    return v0
.end method

.method private recalculateModifiersState()V
    .locals 3

    .line 214
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    .line 215
    .local v0, "newAggregatedState":Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->needToNotifyExternalListener(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 220
    :cond_0
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    .line 221
    return-void
.end method

.method private start()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 242
    return-void
.end method


# virtual methods
.method public clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3
    .param p1, "displayBrightnessState"    # Lcom/android/server/display/DisplayBrightnessState;
    .param p2, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p3, "brightnessValue"    # F
    .param p4, "slowChange"    # Z
    .param p5, "displayState"    # I

    .line 154
    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    .line 155
    invoke-static {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 157
    .local v0, "builder":Lcom/android/server/display/DisplayBrightnessState$Builder;
    invoke-virtual {v0, p4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 158
    invoke-virtual {v0, p3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 160
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;

    invoke-interface {v2, p2, v0}, Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;->apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 166
    .end local v1    # "i":I
    invoke-virtual {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 180
    const-string v0, "BrightnessClamperController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 182
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->dump(Ljava/io/PrintWriter;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 184
    return-void
.end method

.method public getMaxBrightness()F
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    return v0
.end method

.method public isThrottled()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 3
    .param p1, "data"    # Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    .line 142
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/brightness/clamper/LightSensorController;->configure(Lcom/android/server/display/config/SensorData;I)V

    .line 143
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 144
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    .line 145
    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mUserSwitchListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 174
    return-void
.end method

.method public stop()V
    .locals 2

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    .line 192
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDeviceConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/LightSensorController;->stop()V

    .line 195
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiers:Ljava/util/List;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 196
    return-void
.end method
