.class interface abstract Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;
.super Ljava/lang/Object;
.source "BrightnessThermalModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ThermalData"
.end annotation


# virtual methods
.method public abstract getTempSensor()Lcom/android/server/display/config/SensorData;
.end method

.method public abstract getThermalBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;
.end method

.method public abstract getThermalThrottlingDataId()Ljava/lang/String;
.end method

.method public abstract getUniqueDisplayId()Ljava/lang/String;
.end method
