.class public final Landroid/net/NativeNetworkConfig$Builder;
.super Ljava/lang/Object;
.source "NativeNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NativeNetworkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private excludeLocalRoutes:Z

.field private netId:I

.field private networkType:I

.field private permission:I

.field private secure:Z

.field private vpnType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    .line 26
    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    .line 31
    iput v0, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    .line 36
    iput-boolean v0, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    .line 41
    const/4 v1, 0x2

    iput v1, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    .line 46
    iput-boolean v0, p0, Landroid/net/NativeNetworkConfig$Builder;->excludeLocalRoutes:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/net/NativeNetworkConfig;
    .locals 7

    .line 52
    new-instance v0, Landroid/net/NativeNetworkConfig;

    iget v1, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    iget v2, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    iget v3, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    iget-boolean v4, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    iget v5, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    iget-boolean v6, p0, Landroid/net/NativeNetworkConfig$Builder;->excludeLocalRoutes:Z

    invoke-direct/range {v0 .. v6}, Landroid/net/NativeNetworkConfig;-><init>(IIIZIZ)V

    return-object v0
.end method

.method public setExcludeLocalRoutes(Z)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0
    .param p1, "excludeLocalRoutes"    # Z

    .line 48
    iput-boolean p1, p0, Landroid/net/NativeNetworkConfig$Builder;->excludeLocalRoutes:Z

    .line 49
    return-object p0
.end method

.method public setNetId(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0
    .param p1, "netId"    # I

    .line 23
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->netId:I

    .line 24
    return-object p0
.end method

.method public setNetworkType(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0
    .param p1, "networkType"    # I

    .line 28
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->networkType:I

    .line 29
    return-object p0
.end method

.method public setPermission(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0
    .param p1, "permission"    # I

    .line 33
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->permission:I

    .line 34
    return-object p0
.end method

.method public setSecure(Z)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0
    .param p1, "secure"    # Z

    .line 38
    iput-boolean p1, p0, Landroid/net/NativeNetworkConfig$Builder;->secure:Z

    .line 39
    return-object p0
.end method

.method public setVpnType(I)Landroid/net/NativeNetworkConfig$Builder;
    .locals 0
    .param p1, "vpnType"    # I

    .line 43
    iput p1, p0, Landroid/net/NativeNetworkConfig$Builder;->vpnType:I

    .line 44
    return-object p0
.end method
