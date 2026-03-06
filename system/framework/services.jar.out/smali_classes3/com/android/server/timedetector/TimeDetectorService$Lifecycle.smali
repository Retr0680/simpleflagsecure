.class public Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TimeDetectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/TimeDetectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 9

    .line 79
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 82
    .local v2, "handler":Landroid/os/Handler;
    nop

    .line 83
    invoke-static {v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;

    move-result-object v4

    .line 84
    .local v4, "serviceConfigAccessor":Lcom/android/server/timedetector/ServiceConfigAccessor;
    nop

    .line 85
    invoke-static {v1, v2, v4}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;

    move-result-object v5

    .line 88
    .local v5, "timeDetectorStrategy":Lcom/android/server/timedetector/TimeDetectorStrategy;
    sget-object v3, Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;

    .line 90
    .local v3, "currentUserIdentityInjector":Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timedetector/TimeDetectorInternalImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;Lcom/android/server/timedetector/ServiceConfigAccessor;Lcom/android/server/timedetector/TimeDetectorStrategy;)V

    move-object v7, v3

    move-object v6, v4

    move-object v4, v5

    .end local v3    # "currentUserIdentityInjector":Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;
    .end local v5    # "timeDetectorStrategy":Lcom/android/server/timedetector/TimeDetectorStrategy;
    .local v4, "timeDetectorStrategy":Lcom/android/server/timedetector/TimeDetectorStrategy;
    .local v6, "serviceConfigAccessor":Lcom/android/server/timedetector/ServiceConfigAccessor;
    .local v7, "currentUserIdentityInjector":Lcom/android/server/timezonedetector/CurrentUserIdentityInjector;
    move-object v8, v0

    .line 93
    .local v8, "internal":Lcom/android/server/timedetector/TimeDetectorInternal;
    const-class v0, Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-virtual {p0, v0, v8}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    sget-object v3, Lcom/android/server/timezonedetector/CallerIdentityInjector;->REAL:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 96
    .local v3, "callerIdentityInjector":Lcom/android/server/timezonedetector/CallerIdentityInjector;
    new-instance v0, Lcom/android/server/timedetector/TimeDetectorService;

    .line 98
    invoke-static {v1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timedetector/TimeDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timedetector/TimeDetectorStrategy;Landroid/util/NtpTrustedTime;)V

    .line 102
    .local v0, "service":Lcom/android/server/timedetector/TimeDetectorService;
    const-string v5, "time_detector"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 103
    return-void
.end method
