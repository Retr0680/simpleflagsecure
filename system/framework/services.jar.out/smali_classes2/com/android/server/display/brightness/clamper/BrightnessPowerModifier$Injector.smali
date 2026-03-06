.class Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;
.super Ljava/lang/Object;
.source "BrightnessPowerModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 2

    .line 480
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {v0, v1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object v0
.end method

.method getPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)Lcom/android/server/display/brightness/clamper/PmicMonitor;
    .locals 1
    .param p1, "powerChangeListener"    # Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;
    .param p2, "thermalService"    # Landroid/os/IThermalService;
    .param p3, "pollingMaxTimeMillis"    # I
    .param p4, "pollingMinTimeMillis"    # I

    .line 475
    new-instance v0, Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/PmicMonitor;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)V

    return-object v0
.end method
