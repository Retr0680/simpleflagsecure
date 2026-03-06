.class interface abstract Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IkeV2VpnRunnerCallback"
.end annotation


# virtual methods
.method public abstract onChildMigrated(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
.end method

.method public abstract onChildOpened(ILandroid/net/ipsec/ike/ChildSessionConfiguration;)V
.end method

.method public abstract onChildTransformCreated(ILandroid/net/IpSecTransform;I)V
.end method

.method public abstract onDefaultNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract onDefaultNetworkChanged(Landroid/net/Network;)V
.end method

.method public abstract onDefaultNetworkLinkPropertiesChanged(Landroid/net/LinkProperties;)V
.end method

.method public abstract onDefaultNetworkLost(Landroid/net/Network;)V
.end method

.method public abstract onIkeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
.end method

.method public abstract onIkeOpened(ILandroid/net/ipsec/ike/IkeSessionConfiguration;)V
.end method

.method public abstract onSessionLost(ILjava/lang/Exception;)V
.end method
