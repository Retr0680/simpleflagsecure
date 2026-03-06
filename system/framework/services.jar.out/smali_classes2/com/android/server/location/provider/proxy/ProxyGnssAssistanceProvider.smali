.class public Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;
.super Ljava/lang/Object;
.source "ProxyGnssAssistanceProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssAssistanceProxy"


# instance fields
.field private final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    nop

    .line 58
    const-string v0, "android.location.provider.action.GNSS_ASSISTANCE_PROVIDER"

    const v1, 0x1110178

    const v2, 0x1040281

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    .line 55
    const-string v1, "GnssAssistanceProxy"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    .line 65
    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "proxy":Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;
    invoke-direct {v0}, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private register()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    .line 69
    .local v0, "resolves":Z
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    .line 72
    :cond_0
    return v0
.end method


# virtual methods
.method public request(Landroid/location/provider/IGnssAssistanceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/location/provider/IGnssAssistanceCallback;

    .line 79
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;Landroid/location/provider/IGnssAssistanceCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 96
    return-void
.end method
