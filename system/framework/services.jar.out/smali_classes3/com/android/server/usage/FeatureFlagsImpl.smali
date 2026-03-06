.class public final Lcom/android/server/usage/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/usage/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustDefaultBucketElevationParams()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public avoidIdleCheck()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public persistRestoreToRareAppsList()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public screenTimeBypass()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method
