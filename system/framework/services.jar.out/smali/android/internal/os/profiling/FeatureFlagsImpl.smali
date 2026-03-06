.class public final Landroid/internal/os/profiling/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Landroid/internal/os/profiling/FeatureFlags;


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile isCached:Z

.field private static persistQueue:Z

.field private static redactionEnabled:Z

.field private static systemTriggeredProfilingNew:Z

.field private static telemetryApis:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    .line 12
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    .line 13
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    .line 14
    sput-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->telemetryApis:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 17
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.os.profiling"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 18
    .local v2, "reader":Landroid/os/flagging/AconfigPackage;
    const-string/jumbo v3, "persist_queue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/internal/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    .line 19
    sput-boolean v1, Landroid/internal/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    .line 20
    const-string/jumbo v3, "system_triggered_profiling_new"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    .line 21
    sput-boolean v1, Landroid/internal/os/profiling/FeatureFlagsImpl;->telemetryApis:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v2    # "reader":Landroid/os/flagging/AconfigPackage;
    :goto_0
    goto :goto_3

    .line 25
    :catch_0
    move-exception v2

    goto :goto_1

    .line 22
    :catch_1
    move-exception v2

    goto :goto_2

    .line 25
    :goto_1
    nop

    .line 28
    .local v2, "e":Ljava/lang/LinkageError;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 22
    .end local v2    # "e":Ljava/lang/LinkageError;
    :goto_2
    nop

    .line 24
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 30
    :goto_3
    sput-boolean v1, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    .line 31
    return-void
.end method


# virtual methods
.method public persistQueue()Z
    .locals 1

    .line 34
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 37
    :cond_0
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->persistQueue:Z

    return v0
.end method

.method public redactionEnabled()Z
    .locals 1

    .line 42
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 45
    :cond_0
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->redactionEnabled:Z

    return v0
.end method

.method public systemTriggeredProfilingNew()Z
    .locals 1

    .line 50
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 51
    invoke-direct {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 53
    :cond_0
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->systemTriggeredProfilingNew:Z

    return v0
.end method

.method public telemetryApis()Z
    .locals 1

    .line 58
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Landroid/internal/os/profiling/FeatureFlagsImpl;->init()V

    .line 61
    :cond_0
    sget-boolean v0, Landroid/internal/os/profiling/FeatureFlagsImpl;->telemetryApis:Z

    return v0
.end method
