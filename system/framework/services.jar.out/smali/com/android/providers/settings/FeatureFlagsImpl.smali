.class public final Lcom/android/providers/settings/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/providers/settings/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRootAndReadOnly()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public ignoreXmlForReadOnlyFlags()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public loadAconfigDefaults()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public loadApexAconfigProtobufs()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public notifyIndividualAconfigSyspropChanged()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public stageAllAconfigFlags()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public storageTestMission1()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public supportLocalOverridesSysprops()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public supportOverrides()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public syncLocalOverridesRemovalNewStorage()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public useNewStorageValue()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method
