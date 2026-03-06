.class public final Lcom/android/server/sensorextension/SensorExtensionService$SensorExtensionServiceLifecycle;
.super Lcom/android/server/SystemService;
.source "SensorExtensionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorextension/SensorExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorExtensionServiceLifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/sensorextension/SensorExtensionService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lcom/android/server/sensorextension/SensorExtensionService;

    invoke-direct {v0, p1}, Lcom/android/server/sensorextension/SensorExtensionService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sensorextension/SensorExtensionService$SensorExtensionServiceLifecycle;->mService:Lcom/android/server/sensorextension/SensorExtensionService;

    .line 70
    const-string v0, "SensorExtensionService"

    const-string v1, "SensorExtensionServiceLifecycle create"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/server/sensorextension/SensorExtensionService;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/sensorextension/SensorExtensionService$SensorExtensionServiceLifecycle;->mService:Lcom/android/server/sensorextension/SensorExtensionService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 75
    const-string/jumbo v0, "sensorextension"

    iget-object v1, p0, Lcom/android/server/sensorextension/SensorExtensionService$SensorExtensionServiceLifecycle;->mService:Lcom/android/server/sensorextension/SensorExtensionService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 76
    const-string v0, "SensorExtensionService"

    const-string v1, "SensorExtensionServiceLifecycle start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
