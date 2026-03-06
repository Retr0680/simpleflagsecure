.class public final Lcom/android/server/am/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/am/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addModifyRawOomAdjServiceLevel()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public appStartInfoIsolatedProcess()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public avoidNoteOpAtEnqueue()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public avoidRepeatedBcastReEnqueues()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public avoidResolvingType()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public batchingOomAdj()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public bfgsManagedNetworkAccess()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public collectLogcatOnRunSynchronously()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public deferBindersWhenPaused()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public deferDisplayEventsWhenFrozen()Z
    .locals 1

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public deferOutgoingBroadcasts()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public enableDropboxWatchdogHeaders()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public expediteActivityLaunchOnColdStart()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public fgsAbuseDetection()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public fgsBootCompleted()Z
    .locals 1

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public fgsDisableSaw()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public fixApplyOomadjOrder()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public followUpOomadjUpdates()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public limitPriorityScope()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public logBroadcastProcessedEvent()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public logBroadcastSentEvent()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public logExcessiveBinderProxies()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public logcatLongerTimeout()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public lowerSmsOomImportance()Z
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public migrateFullOomadjUpdates()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public newFgsRestrictionLogic()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public oomadjusterCachedAppTiers()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public oomadjusterCorrectnessRewrite()Z
    .locals 1

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public oomadjusterPrevLaddering()Z
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public perceptibleTasks()Z
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public phantomProcessesFix()Z
    .locals 1

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public prototypeAggressiveFreezing()Z
    .locals 1

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public pushGlobalStateToOomadjuster()Z
    .locals 1

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public raiseBoundUiServiceThreshold()Z
    .locals 1

    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public restrictPriorityValues()Z
    .locals 1

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public serviceBindingOomAdjPolicy()Z
    .locals 1

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public simplifyProcessTraversal()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public skipUnimportantConnections()Z
    .locals 1

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public traceReceiverRegistration()Z
    .locals 1

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public traceUpdateAppFreezeStateLsp()Z
    .locals 1

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public unfreezeBindPolicyFix()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public useCpuTimeCapability()Z
    .locals 1

    .line 297
    const/4 v0, 0x0

    return v0
.end method
