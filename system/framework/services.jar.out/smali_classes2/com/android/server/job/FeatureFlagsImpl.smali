.class public final Lcom/android/server/job/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/job/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public additionalQuotaForSystemInstaller()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public adjustQuotaDefaultConstants()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public batchActiveBucketJobs()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public batchConnectivityJobsPerNetwork()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public countQuotaFix()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public createWorkChainByDefault()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public doNotForceRushExecutionAtBoot()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public enforceQuotaPolicyToFgsJobs()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public enforceQuotaPolicyToTopStartedJobs()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public enforceScheduleLimitToProxyJobs()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public includeTraceTagInJobName()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public relaxPrefetchConnectivityConstraintOnlyOnCharger()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public removeUserDuringUserSwitch()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public thermalRestrictionsToFgsJobs()Z
    .locals 1

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public tuneQuotaWindowDefaultParameters()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public useCorrectProcessStateForLogging()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method
