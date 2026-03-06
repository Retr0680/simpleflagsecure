.class public Lcom/android/server/power/LowPowerStandbyController$DeviceConfigWrapper;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LowPowerStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfigWrapper"
.end annotation


# static fields
.field public static final FEATURE_FLAG_ENABLE_POLICY:Ljava/lang/String; = "enable_policy"

.field public static final FEATURE_FLAG_ENABLE_STANDBY_PORTS:Ljava/lang/String; = "enable_standby_ports"

.field public static final NAMESPACE:Ljava/lang/String; = "low_power_standby"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableCustomPolicy()Z
    .locals 3

    .line 1400
    const-string v0, "enable_policy"

    const/4 v1, 0x1

    const-string/jumbo v2, "low_power_standby"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableStandbyPorts()Z
    .locals 3

    .line 1408
    const-string v0, "enable_standby_ports"

    const/4 v1, 0x1

    const-string/jumbo v2, "low_power_standby"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerPropertyUpdateListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "onPropertiesChangedListener"    # Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1417
    const-string/jumbo v0, "low_power_standby"

    invoke-static {v0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1419
    return-void
.end method
