.class public final Lcom/android/aconfig_new_storage/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/aconfig_new_storage/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bluetoothFlagValueBugFix()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public enableAconfigStorageDaemon()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public enableAconfigdFromMainline()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public enableFullRustSystemAconfigd()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public supportClearLocalOverridesImmediately()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public supportImmediateLocalOverrides()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method
