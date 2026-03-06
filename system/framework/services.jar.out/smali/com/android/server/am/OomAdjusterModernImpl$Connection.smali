.class public interface abstract Lcom/android/server/am/OomAdjusterModernImpl$Connection;
.super Ljava/lang/Object;
.source "OomAdjusterModernImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OomAdjusterModernImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Connection"
.end annotation


# virtual methods
.method public abstract canAffectCapabilities()Z
.end method

.method public abstract computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZII)V
.end method

.method public transmitsCpuTime()Z
    .locals 1

    .line 645
    const/4 v0, 0x1

    return v0
.end method
