.class Lcom/android/server/power/WakefulnessSessionObserver$Injector;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakefulnessSessionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getClock()Lcom/android/server/power/WakefulnessSessionObserver$Clock;
    .locals 1

    .line 857
    new-instance v0, Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;
    .locals 1

    .line 865
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 861
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method getWakefulnessSessionFrameworkStatsLogger()Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;
    .locals 1

    .line 853
    new-instance v0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-direct {v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;-><init>()V

    return-object v0
.end method
