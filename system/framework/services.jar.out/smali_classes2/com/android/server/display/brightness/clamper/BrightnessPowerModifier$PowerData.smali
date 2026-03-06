.class public interface abstract Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
.super Ljava/lang/Object;
.source "BrightnessPowerModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PowerData"
.end annotation


# virtual methods
.method public abstract getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
.end method

.method public abstract getPowerThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;
.end method

.method public abstract getPowerThrottlingDataId()Ljava/lang/String;
.end method

.method public abstract getUniqueDisplayId()Ljava/lang/String;
.end method
