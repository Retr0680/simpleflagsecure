.class public Lcom/android/server/security/intrusiondetection/NetworkLogSource;
.super Ljava/lang/Object;
.source "NetworkLogSource.java"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/DataSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "IntrusionDetectionEvent NetworkLogSource"


# instance fields
.field private mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

.field private mId:J

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private final mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private final mPm:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataAggregator(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Lcom/android/server/security/intrusiondetection/DataAggregator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNetworkLoggingEnabled(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mPm:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mincrementEventID(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->incrementEventID()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/intrusiondetection/DataAggregator;)V
    .locals 2
    .param p1, "dataAggregator"    # Lcom/android/server/security/intrusiondetection/DataAggregator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-instance v0, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource$1;-><init>(Lcom/android/server/security/intrusiondetection/NetworkLogSource;)V

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 47
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mDataAggregator:Lcom/android/server/security/intrusiondetection/DataAggregator;

    .line 48
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    .line 50
    invoke-direct {p0}, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->initIpConnectivityMetrics()V

    .line 51
    return-void
.end method

.method private incrementEventID()V
    .locals 4

    .line 98
    iget-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 99
    const-string v0, "IntrusionDetectionEvent NetworkLogSource"

    const-string v1, "Reached maximum id value; wrapping around."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    goto :goto_0

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mId:J

    .line 104
    :goto_0
    return-void
.end method

.method private initIpConnectivityMetrics()V
    .locals 1

    .line 54
    nop

    .line 57
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 58
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "IntrusionDetectionEvent NetworkLogSource"

    if-nez v0, :cond_0

    .line 81
    const-string v0, "Network logging is already disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1

    .line 90
    :cond_1
    const-string v0, "Failed to disable network logging; invalid callback"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    goto :goto_2

    .line 92
    :goto_1
    nop

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to disable network logging; "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public enable()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "IntrusionDetectionEvent NetworkLogSource"

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "Network logging is already enabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v2, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/NetworkLogSource;->mIsNetworkLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_1

    .line 71
    :cond_1
    const-string v0, "Failed to enable network logging; invalid callback"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    goto :goto_2

    .line 73
    :goto_1
    nop

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to enable network logging; "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
