.class public final Lcom/android/server/biometrics/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public faceVhalFeature()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public frrDialogImprovement()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public notifyFingerprintsLoe()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public setIgnoreSpeedUp()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public useVhalForTesting()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method
