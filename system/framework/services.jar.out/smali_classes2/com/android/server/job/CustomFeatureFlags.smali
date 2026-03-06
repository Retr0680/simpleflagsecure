.class public Lcom/android/server/job/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/job/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/BiPredicate;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/job/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v1, Ljava/util/HashSet;

    const-string v17, "com.android.server.job.use_correct_process_state_for_logging"

    const-string v18, ""

    const-string v2, "com.android.server.job.additional_quota_for_system_installer"

    const-string v3, "com.android.server.job.adjust_quota_default_constants"

    const-string v4, "com.android.server.job.batch_active_bucket_jobs"

    const-string v5, "com.android.server.job.batch_connectivity_jobs_per_network"

    const-string v6, "com.android.server.job.count_quota_fix"

    const-string v7, "com.android.server.job.create_work_chain_by_default"

    const-string v8, "com.android.server.job.do_not_force_rush_execution_at_boot"

    const-string v9, "com.android.server.job.enforce_quota_policy_to_fgs_jobs"

    const-string v10, "com.android.server.job.enforce_quota_policy_to_top_started_jobs"

    const-string v11, "com.android.server.job.enforce_schedule_limit_to_proxy_jobs"

    const-string v12, "com.android.server.job.include_trace_tag_in_job_name"

    const-string v13, "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

    const-string v14, "com.android.server.job.remove_user_during_user_switch"

    const-string v15, "com.android.server.job.thermal_restrictions_to_fgs_jobs"

    const-string v16, "com.android.server.job.tune_quota_window_default_parameters"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/job/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/job/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public additionalQuotaForSystemInstaller()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.additional_quota_for_system_installer"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public adjustQuotaDefaultConstants()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.adjust_quota_default_constants"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public batchActiveBucketJobs()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.job.batch_active_bucket_jobs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public batchConnectivityJobsPerNetwork()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.job.batch_connectivity_jobs_per_network"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public countQuotaFix()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.count_quota_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public createWorkChainByDefault()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.create_work_chain_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public doNotForceRushExecutionAtBoot()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.job.do_not_force_rush_execution_at_boot"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enforceQuotaPolicyToFgsJobs()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.enforce_quota_policy_to_fgs_jobs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enforceQuotaPolicyToTopStartedJobs()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.enforce_quota_policy_to_top_started_jobs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enforceScheduleLimitToProxyJobs()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.enforce_schedule_limit_to_proxy_jobs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 149
    const-string v15, "com.android.server.job.tune_quota_window_default_parameters"

    const-string v16, "com.android.server.job.use_correct_process_state_for_logging"

    const-string v1, "com.android.server.job.additional_quota_for_system_installer"

    const-string v2, "com.android.server.job.adjust_quota_default_constants"

    const-string v3, "com.android.server.job.batch_active_bucket_jobs"

    const-string v4, "com.android.server.job.batch_connectivity_jobs_per_network"

    const-string v5, "com.android.server.job.count_quota_fix"

    const-string v6, "com.android.server.job.create_work_chain_by_default"

    const-string v7, "com.android.server.job.do_not_force_rush_execution_at_boot"

    const-string v8, "com.android.server.job.enforce_quota_policy_to_fgs_jobs"

    const-string v9, "com.android.server.job.enforce_quota_policy_to_top_started_jobs"

    const-string v10, "com.android.server.job.enforce_schedule_limit_to_proxy_jobs"

    const-string v11, "com.android.server.job.include_trace_tag_in_job_name"

    const-string v12, "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

    const-string v13, "com.android.server.job.remove_user_during_user_switch"

    const-string v14, "com.android.server.job.thermal_restrictions_to_fgs_jobs"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 145
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/job/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public includeTraceTagInJobName()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.job.include_trace_tag_in_job_name"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/server/job/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    nop

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public relaxPrefetchConnectivityConstraintOnlyOnCharger()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public removeUserDuringUserSwitch()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.remove_user_during_user_switch"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public thermalRestrictionsToFgsJobs()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.thermal_restrictions_to_fgs_jobs"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public tuneQuotaWindowDefaultParameters()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.tune_quota_window_default_parameters"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useCorrectProcessStateForLogging()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.job.use_correct_process_state_for_logging"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
