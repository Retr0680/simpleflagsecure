.class interface abstract Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WrapperThermalChangedCallback"
.end annotation


# virtual methods
.method public abstract onTemperatureChanged(Landroid/os/Temperature;)V
.end method

.method public abstract onThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
.end method
