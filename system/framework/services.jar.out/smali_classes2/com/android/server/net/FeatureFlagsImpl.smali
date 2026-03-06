.class public final Lcom/android/server/net/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/net/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public neverApplyRulesToCoreUids()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public useDifferentDelaysForBackgroundChain()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public useMeteredFirewallChains()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method
