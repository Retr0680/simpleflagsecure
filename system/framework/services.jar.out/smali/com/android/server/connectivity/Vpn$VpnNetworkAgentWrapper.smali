.class public Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VpnNetworkAgentWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "nc"    # Landroid/net/NetworkCapabilities;
    .param p5, "lp"    # Landroid/net/LinkProperties;
    .param p6, "score"    # Landroid/net/NetworkScore;
    .param p7, "config"    # Landroid/net/NetworkAgentConfig;
    .param p8, "provider"    # Landroid/net/NetworkProvider;
    .param p9, "callback"    # Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    .line 4525
    invoke-direct/range {p0 .. p8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 4526
    move-object v0, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "context":Landroid/content/Context;
    .local v0, "provider":Landroid/net/NetworkProvider;
    .local p2, "context":Landroid/content/Context;
    .local p3, "looper":Landroid/os/Looper;
    .local p4, "logTag":Ljava/lang/String;
    .local p5, "nc":Landroid/net/NetworkCapabilities;
    .local p6, "lp":Landroid/net/LinkProperties;
    .local p7, "score":Landroid/net/NetworkScore;
    .local p8, "config":Landroid/net/NetworkAgentConfig;
    iput-object p9, p1, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    .line 4527
    return-void
.end method


# virtual methods
.method public doSendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 4531
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 4532
    return-void
.end method

.method public doSendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 4536
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 4537
    return-void
.end method

.method public doSetUnderlyingNetworks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;)V"
        }
    .end annotation

    .line 4541
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->setUnderlyingNetworks(Ljava/util/List;)V

    .line 4542
    return-void
.end method

.method public onNetworkUnwanted()V
    .locals 0

    .line 4547
    return-void
.end method

.method public onValidationStatus(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "redirectUri"    # Landroid/net/Uri;

    .line 4551
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    if-eqz v0, :cond_0

    .line 4552
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;->onValidationStatus(I)V

    .line 4554
    :cond_0
    return-void
.end method
