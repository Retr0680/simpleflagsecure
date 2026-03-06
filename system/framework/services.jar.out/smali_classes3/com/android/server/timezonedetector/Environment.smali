.class public interface abstract Lcom/android/server/timezonedetector/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# virtual methods
.method public abstract addDebugLogEntry(Ljava/lang/String;)V
.end method

.method public abstract currentTimeMillis()J
.end method

.method public abstract dumpDebugLog(Ljava/io/PrintWriter;)V
.end method

.method public abstract elapsedRealtimeMillis()J
.end method

.method public abstract getDeviceTimeZone()Ljava/lang/String;
.end method

.method public abstract getDeviceTimeZoneConfidence()I
.end method

.method public abstract runAsync(Ljava/lang/Runnable;)V
.end method

.method public abstract setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V
.end method
