.class public final Lcom/android/server/job/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/job/FeatureFlags; = null

.field public static final FLAG_ADDITIONAL_QUOTA_FOR_SYSTEM_INSTALLER:Ljava/lang/String; = "com.android.server.job.additional_quota_for_system_installer"

.field public static final FLAG_ADJUST_QUOTA_DEFAULT_CONSTANTS:Ljava/lang/String; = "com.android.server.job.adjust_quota_default_constants"

.field public static final FLAG_BATCH_ACTIVE_BUCKET_JOBS:Ljava/lang/String; = "com.android.server.job.batch_active_bucket_jobs"

.field public static final FLAG_BATCH_CONNECTIVITY_JOBS_PER_NETWORK:Ljava/lang/String; = "com.android.server.job.batch_connectivity_jobs_per_network"

.field public static final FLAG_COUNT_QUOTA_FIX:Ljava/lang/String; = "com.android.server.job.count_quota_fix"

.field public static final FLAG_CREATE_WORK_CHAIN_BY_DEFAULT:Ljava/lang/String; = "com.android.server.job.create_work_chain_by_default"

.field public static final FLAG_DO_NOT_FORCE_RUSH_EXECUTION_AT_BOOT:Ljava/lang/String; = "com.android.server.job.do_not_force_rush_execution_at_boot"

.field public static final FLAG_ENFORCE_QUOTA_POLICY_TO_FGS_JOBS:Ljava/lang/String; = "com.android.server.job.enforce_quota_policy_to_fgs_jobs"

.field public static final FLAG_ENFORCE_QUOTA_POLICY_TO_TOP_STARTED_JOBS:Ljava/lang/String; = "com.android.server.job.enforce_quota_policy_to_top_started_jobs"

.field public static final FLAG_ENFORCE_SCHEDULE_LIMIT_TO_PROXY_JOBS:Ljava/lang/String; = "com.android.server.job.enforce_schedule_limit_to_proxy_jobs"

.field public static final FLAG_INCLUDE_TRACE_TAG_IN_JOB_NAME:Ljava/lang/String; = "com.android.server.job.include_trace_tag_in_job_name"

.field public static final FLAG_RELAX_PREFETCH_CONNECTIVITY_CONSTRAINT_ONLY_ON_CHARGER:Ljava/lang/String; = "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

.field public static final FLAG_REMOVE_USER_DURING_USER_SWITCH:Ljava/lang/String; = "com.android.server.job.remove_user_during_user_switch"

.field public static final FLAG_THERMAL_RESTRICTIONS_TO_FGS_JOBS:Ljava/lang/String; = "com.android.server.job.thermal_restrictions_to_fgs_jobs"

.field public static final FLAG_TUNE_QUOTA_WINDOW_DEFAULT_PARAMETERS:Ljava/lang/String; = "com.android.server.job.tune_quota_window_default_parameters"

.field public static final FLAG_USE_CORRECT_PROCESS_STATE_FOR_LOGGING:Ljava/lang/String; = "com.android.server.job.use_correct_process_state_for_logging"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Lcom/android/server/job/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/job/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/job/Flags;->FEATURE_FLAGS:Lcom/android/server/job/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static additionalQuotaForSystemInstaller()Z
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public static adjustQuotaDefaultConstants()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static batchActiveBucketJobs()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public static batchConnectivityJobsPerNetwork()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public static countQuotaFix()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public static createWorkChainByDefault()Z
    .locals 1

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public static doNotForceRushExecutionAtBoot()Z
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public static enforceQuotaPolicyToFgsJobs()Z
    .locals 1

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public static enforceQuotaPolicyToTopStartedJobs()Z
    .locals 1

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public static enforceScheduleLimitToProxyJobs()Z
    .locals 1

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public static includeTraceTagInJobName()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public static relaxPrefetchConnectivityConstraintOnlyOnCharger()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public static removeUserDuringUserSwitch()Z
    .locals 1

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public static thermalRestrictionsToFgsJobs()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public static tuneQuotaWindowDefaultParameters()Z
    .locals 1

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public static useCorrectProcessStateForLogging()Z
    .locals 1

    .line 149
    const/4 v0, 0x1

    return v0
.end method
