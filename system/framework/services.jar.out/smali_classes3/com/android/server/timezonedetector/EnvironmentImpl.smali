.class final Lcom/android/server/timezonedetector/EnvironmentImpl;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Environment;


# static fields
.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method


# virtual methods
.method public addDebugLogEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public dumpDebugLog(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 84
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->dump(Ljava/io/PrintWriter;)V

    .line 85
    return-void
.end method

.method public elapsedRealtimeMillis()J
    .locals 2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceTimeZone()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTimeZoneConfidence()I
    .locals 1

    .line 55
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result v0

    return v0
.end method

.method public runAsync(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "confidence"    # I
    .param p3, "logInfo"    # Ljava/lang/String;

    .line 62
    nop

    .line 63
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    .line 64
    .local v0, "alarmManagerInternal":Lcom/android/server/AlarmManagerInternal;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerInternal;->setTimeZone(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    return-void
.end method
