.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemperatureWatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    }
.end annotation


# static fields
.field private static final DEGREES_BETWEEN_ZERO_AND_ONE:F = 30.0f

.field private static final INACTIVITY_THRESHOLD_MILLIS:I = 0x2710

.field private static final MINIMUM_SAMPLE_COUNT:I = 0x3

.field private static final RING_BUFFER_SIZE:I = 0x1e


# instance fields
.field private final mCachedHeadrooms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mHeadroomThresholds:[F

.field mInactivityThresholdMillis:J

.field private mLastForecastCallTimeMillis:J

.field final mSamples:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;>;"
        }
    .end annotation
.end field

.field mSevereThresholds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public static synthetic $r8$lambda$UBi4DQBBLPBYQRHEEMFqEv1BLg8(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    return-void
.end method

.method public static synthetic $r8$lambda$g0-paZd5RiUyQc5-FmgfXPsGA84(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->lambda$updateTemperatureSampleLocked$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedHeadrooms(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTemperatureSampleLocked(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;JLandroid/os/Temperature;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/ThermalManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1879
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1882
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    .line 1885
    nop

    .line 1886
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    .line 1892
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    .line 1895
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    .line 1899
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    .line 1903
    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    .line 1905
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 1908
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getAndUpdateTemperatureSamples()V
    .locals 6

    .line 1970
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1971
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mInactivityThresholdMillis:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 1975
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1984
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1985
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v3

    .line 1990
    .local v3, "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Temperature;

    .line 1991
    .local v5, "temperature":Landroid/os/Temperature;
    invoke-direct {p0, v1, v2, v5}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureSampleLocked(JLandroid/os/Temperature;)V

    .line 1992
    .end local v5    # "temperature":Landroid/os/Temperature;
    goto :goto_0

    .line 1994
    .end local v1    # "now":J
    .end local v3    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1993
    .restart local v1    # "now":J
    .restart local v3    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1994
    .end local v1    # "now":J
    .end local v3    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    monitor-exit v0

    .line 1995
    return-void

    .line 1979
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1980
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1981
    monitor-exit v0

    return-void

    .line 1994
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$updateTemperatureSampleLocked$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "k"    # Ljava/lang/String;

    .line 2005
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method static normalizeTemperature(FF)F
    .locals 3
    .param p0, "temperature"    # F
    .param p1, "severeThreshold"    # F

    .line 2050
    const/high16 v0, 0x41f00000    # 30.0f

    sub-float v1, p1, v0

    .line 2051
    .local v1, "zeroNormalized":F
    cmpg-float v2, p0, v1

    if-gtz v2, :cond_0

    .line 2052
    const/4 v0, 0x0

    return v0

    .line 2054
    :cond_0
    sub-float v2, p0, v1

    .line 2055
    .local v2, "delta":F
    div-float v0, v2, v0

    return v0
.end method

.method private updateTemperatureSampleLocked(JLandroid/os/Temperature;)V
    .locals 3
    .param p1, "timeNow"    # J
    .param p3, "temperature"    # Landroid/os/Temperature;

    .line 2001
    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2002
    return-void

    .line 2004
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2006
    .local v0, "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    .line 2007
    invoke-virtual {v0}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 2009
    :cond_1
    new-instance v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-virtual {p3}, Landroid/os/Temperature;->getValue()F

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    return-void
.end method


# virtual methods
.method createSampleForTesting(JF)Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .locals 1
    .param p1, "time"    # J
    .param p3, "temperature"    # F

    .line 2220
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;-><init>(JF)V

    return-object v0
.end method

.method getAndUpdateThresholds()V
    .locals 5

    .line 1912
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v0

    .line 1913
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getTemperatureThresholds(ZI)Ljava/util/List;

    move-result-object v0

    .line 1914
    .local v0, "thresholds":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/thermal/TemperatureThreshold;>;"
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1915
    nop

    .line 1916
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 1918
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/thermal/TemperatureThreshold;

    .line 1919
    .local v3, "threshold":Landroid/hardware/thermal/TemperatureThreshold;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V

    .line 1920
    .end local v3    # "threshold":Landroid/hardware/thermal/TemperatureThreshold;
    goto :goto_0

    .line 1921
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    monitor-exit v1

    .line 1922
    return-void

    .line 1921
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getForecast(I)F
    .locals 17
    .param p1, "forecastSeconds"    # I

    .line 2061
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2064
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/16 v6, 0x305

    if-eqz v0, :cond_0

    .line 2065
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No temperature thresholds found"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    nop

    .line 2067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2066
    invoke-static {v6, v0, v4, v5, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2070
    monitor-exit v3

    return v5

    .line 2072
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    iget-object v0, v0, Lcom/android/server/power/ThermalManagerService;->mIsHalSkinForecastSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 2074
    const/high16 v8, -0x40800000    # -1.0f

    .line 2075
    .local v8, "threshold":F
    iget-object v9, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 2077
    :try_start_1
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 2078
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v8, v0

    goto :goto_0

    .line 2080
    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2081
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_2

    .line 2083
    :try_start_2
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v0

    .line 2084
    invoke-virtual {v0, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->forecastSkinTemperature(I)F

    move-result v0

    .line 2085
    .local v0, "forecastTemperature":F
    invoke-static {v0, v8}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    .line 2088
    .end local v0    # "forecastTemperature":F
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2086
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2088
    :goto_1
    nop

    .line 2089
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "forecastSkinTemperature fails"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2086
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 2087
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "forecastSkinTemperature returns unsupported"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    nop

    .line 2091
    :goto_3
    return v5

    .line 2080
    :goto_4
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2094
    .end local v8    # "threshold":F
    :cond_2
    iget-object v8, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 2095
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mLastForecastCallTimeMillis:J

    .line 2096
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mGetAndUpdateTemperatureSamplesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2100
    invoke-direct {v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getAndUpdateTemperatureSamples()V

    goto :goto_5

    .line 2194
    :catchall_2
    move-exception v0

    goto/16 :goto_9

    .line 2108
    :cond_3
    :goto_5
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2109
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "No temperature samples found"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    nop

    .line 2111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2110
    const/4 v3, 0x5

    invoke-static {v6, v0, v3, v5, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2114
    monitor-exit v8

    return v5

    .line 2117
    :cond_4
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2118
    iget-object v0, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2121
    .local v0, "headroom":F
    nop

    .line 2122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2121
    invoke-static {v6, v3, v7, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2130
    monitor-exit v8

    return v0

    .line 2133
    .end local v0    # "headroom":F
    :cond_5
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2134
    .local v0, "maxNormalized":F
    const/4 v9, 0x0

    .line 2135
    .local v9, "noThresholdSampleCount":I
    iget-object v10, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2136
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2137
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 2139
    .local v13, "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    iget-object v14, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    .line 2140
    .local v14, "threshold":Ljava/lang/Float;
    if-nez v14, :cond_6

    .line 2141
    add-int/lit8 v9, v9, 0x1

    .line 2142
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No threshold found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto :goto_6

    .line 2146
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    iget v4, v4, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    .line 2148
    .local v4, "currentTemperature":F
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v15, 0x3

    if-ge v5, v15, :cond_a

    .line 2149
    iget-object v5, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ne v5, v7, :cond_7

    iget-object v5, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2153
    iget-object v5, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 2154
    .local v5, "headroom":F
    nop

    .line 2155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2154
    invoke-static {v6, v10, v7, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2162
    monitor-exit v8

    return v5

    .line 2165
    .end local v5    # "headroom":F
    :cond_7
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v5

    .line 2166
    .local v5, "normalized":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_8

    cmpl-float v15, v5, v0

    if-lez v15, :cond_9

    :cond_8
    goto :goto_7

    :cond_9
    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_6

    .line 2167
    :goto_7
    move v0, v5

    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_6

    .line 2171
    .end local v5    # "normalized":F
    :cond_a
    const/4 v5, 0x0

    .line 2172
    .local v5, "slope":F
    if-lez v2, :cond_b

    .line 2173
    invoke-virtual {v1, v13}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getSlopeOf(Ljava/util/List;)F

    move-result v15

    move v5, v15

    .line 2175
    :cond_b
    int-to-float v15, v2

    mul-float/2addr v15, v5

    const/high16 v16, 0x447a0000    # 1000.0f

    mul-float v15, v15, v16

    add-float/2addr v15, v4

    .line 2176
    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 2175
    invoke-static {v15, v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v3

    .line 2177
    .local v3, "normalized":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_c

    cmpl-float v15, v3, v0

    if-lez v15, :cond_d

    .line 2178
    :cond_c
    move v0, v3

    .line 2180
    .end local v3    # "normalized":F
    .end local v4    # "currentTemperature":F
    .end local v5    # "slope":F
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;>;"
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "samples":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    .end local v14    # "threshold":Ljava/lang/Float;
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    goto/16 :goto_6

    .line 2181
    :cond_e
    iget-object v3, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ne v9, v3, :cond_f

    .line 2182
    nop

    .line 2183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2182
    const/4 v4, 0x6

    const/high16 v5, 0x7fc00000    # Float.NaN

    invoke-static {v6, v3, v4, v5, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    goto :goto_8

    .line 2187
    :cond_f
    nop

    .line 2188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2187
    invoke-static {v6, v3, v7, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFI)V

    .line 2192
    :goto_8
    iget-object v3, v1, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2193
    monitor-exit v8

    return v0

    .line 2194
    .end local v0    # "maxNormalized":F
    .end local v9    # "noThresholdSampleCount":I
    :goto_9
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 2072
    :goto_a
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method getHeadroomCallbackDataLocked()Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;
    .locals 6

    .line 2205
    new-instance v0, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;

    .line 2206
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v1

    .line 2207
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->getForecast(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v5, v5

    .line 2209
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;-><init>(FFI[F)V

    .line 2213
    .local v0, "data":Lcom/android/server/power/ThermalManagerService$HeadroomCallbackData;
    return-object v0
.end method

.method getHeadroomThresholds()[F
    .locals 3

    .line 2198
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSamples:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSlopeOf(Ljava/util/List;)F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;",
            ">;)F"
        }
    .end annotation

    .line 2018
    .local p1, "samples":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;>;"
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 2019
    .local v1, "sumTimes":J
    const/4 v3, 0x0

    .line 2020
    .local v3, "sumTemperatures":F
    const/4 v4, 0x0

    .local v4, "s":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2021
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2022
    .local v5, "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    iget-wide v6, v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    add-long/2addr v1, v6

    .line 2023
    iget v6, v5, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    add-float/2addr v3, v6

    .line 2020
    .end local v5    # "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 2025
    .end local v4    # "s":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v1, v4

    .line 2026
    .local v4, "meanTime":J
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    .line 2028
    .local v6, "meanTemperature":F
    const-wide/16 v7, 0x0

    .line 2029
    .local v7, "sampleVariance":J
    const/4 v9, 0x0

    .line 2030
    .local v9, "sampleCovariance":F
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 2031
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;

    .line 2032
    .local v11, "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    iget-wide v12, v11, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    sub-long/2addr v12, v4

    .line 2033
    .local v12, "timeDelta":J
    iget v14, v11, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    sub-float/2addr v14, v6

    .line 2034
    .local v14, "temperatureDelta":F
    mul-long v15, v12, v12

    add-long/2addr v7, v15

    .line 2035
    long-to-float v15, v12

    mul-float/2addr v15, v14

    add-float/2addr v9, v15

    .line 2030
    .end local v11    # "sample":Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
    .end local v12    # "timeDelta":J
    .end local v14    # "temperatureDelta":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 2038
    .end local v10    # "s":I
    long-to-float v10, v7

    div-float v10, v9, v10

    return v10
.end method

.method updateTemperatureThresholdLocked(Landroid/hardware/thermal/TemperatureThreshold;Z)V
    .locals 8
    .param p1, "threshold"    # Landroid/hardware/thermal/TemperatureThreshold;
    .param p2, "override"    # Z

    .line 1928
    iget-object v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v0, v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 1929
    return-void

    .line 1931
    :cond_0
    iget-object v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    aget v0, v0, v1

    .line 1933
    .local v0, "severeThreshold":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1934
    return-void

    .line 1936
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mSevereThresholds:Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    nop

    .line 1940
    if-eqz p2, :cond_2

    .line 1944
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mCachedHeadrooms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1945
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 1947
    :cond_2
    const/4 v2, 0x1

    .line 1948
    .local v2, "severity":I
    :goto_0
    const/4 v3, 0x6

    if-gt v2, v3, :cond_7

    .line 1949
    iget-object v3, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    array-length v3, v3

    if-le v3, v2, :cond_6

    .line 1950
    iget-object v3, p1, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    aget v3, v3, v2

    .line 1951
    .local v3, "t":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1952
    goto :goto_1

    .line 1954
    :cond_3
    if-ne v2, v1, :cond_4

    .line 1955
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v2

    .line 1956
    goto :goto_1

    .line 1958
    :cond_4
    invoke-static {v3, v0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->normalizeTemperature(FF)F

    move-result v4

    .line 1959
    .local v4, "headroom":F
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1960
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aput v4, v5, v2

    goto :goto_1

    .line 1962
    :cond_5
    iget-object v5, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    aget v5, v5, v2

    .line 1963
    .local v5, "lastHeadroom":F
    iget-object v6, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->mHeadroomThresholds:[F

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    aput v7, v6, v2

    .line 1948
    .end local v3    # "t":F
    .end local v4    # "headroom":F
    .end local v5    # "lastHeadroom":F
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    nop

    .line 1967
    .end local v2    # "severity":I
    return-void
.end method
