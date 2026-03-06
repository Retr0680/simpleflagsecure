.class public Lcom/android/server/am/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/am/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/am/FeatureFlags;",
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
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/am/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/am/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v1, Ljava/util/HashSet;

    const-string v43, "com.android.server.am.use_cpu_time_capability"

    const-string v44, ""

    const-string v2, "com.android.server.am.add_modify_raw_oom_adj_service_level"

    const-string v3, "com.android.server.am.app_start_info_isolated_process"

    const-string v4, "com.android.server.am.avoid_note_op_at_enqueue"

    const-string v5, "com.android.server.am.avoid_repeated_bcast_re_enqueues"

    const-string v6, "com.android.server.am.avoid_resolving_type"

    const-string v7, "com.android.server.am.batching_oom_adj"

    const-string v8, "com.android.server.am.bfgs_managed_network_access"

    const-string v9, "com.android.server.am.collect_logcat_on_run_synchronously"

    const-string v10, "com.android.server.am.defer_binders_when_paused"

    const-string v11, "com.android.server.am.defer_display_events_when_frozen"

    const-string v12, "com.android.server.am.defer_outgoing_broadcasts"

    const-string v13, "com.android.server.am.enable_dropbox_watchdog_headers"

    const-string v14, "com.android.server.am.expedite_activity_launch_on_cold_start"

    const-string v15, "com.android.server.am.fgs_abuse_detection"

    const-string v16, "com.android.server.am.fgs_boot_completed"

    const-string v17, "com.android.server.am.fgs_disable_saw"

    const-string v18, "com.android.server.am.fix_apply_oomadj_order"

    const-string v19, "com.android.server.am.follow_up_oomadj_updates"

    const-string v20, "com.android.server.am.limit_priority_scope"

    const-string v21, "com.android.server.am.log_broadcast_processed_event"

    const-string v22, "com.android.server.am.log_broadcast_sent_event"

    const-string v23, "com.android.server.am.log_excessive_binder_proxies"

    const-string v24, "com.android.server.am.logcat_longer_timeout"

    const-string v25, "com.android.server.am.lower_sms_oom_importance"

    const-string v26, "com.android.server.am.migrate_full_oomadj_updates"

    const-string v27, "com.android.server.am.new_fgs_restriction_logic"

    const-string v28, "com.android.server.am.oomadjuster_cached_app_tiers"

    const-string v29, "com.android.server.am.oomadjuster_correctness_rewrite"

    const-string v30, "com.android.server.am.oomadjuster_prev_laddering"

    const-string v31, "com.android.server.am.perceptible_tasks"

    const-string v32, "com.android.server.am.phantom_processes_fix"

    const-string v33, "com.android.server.am.prototype_aggressive_freezing"

    const-string v34, "com.android.server.am.push_global_state_to_oomadjuster"

    const-string v35, "com.android.server.am.raise_bound_ui_service_threshold"

    const-string v36, "com.android.server.am.restrict_priority_values"

    const-string v37, "com.android.server.am.service_binding_oom_adj_policy"

    const-string v38, "com.android.server.am.simplify_process_traversal"

    const-string v39, "com.android.server.am.skip_unimportant_connections"

    const-string v40, "com.android.server.am.trace_receiver_registration"

    const-string v41, "com.android.server.am.trace_update_app_freeze_state_lsp"

    const-string v42, "com.android.server.am.unfreeze_bind_policy_fix"

    filled-new-array/range {v2 .. v44}, [Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/am/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 323
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addModifyRawOomAdjServiceLevel()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.add_modify_raw_oom_adj_service_level"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public appStartInfoIsolatedProcess()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.app_start_info_isolated_process"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public avoidNoteOpAtEnqueue()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.avoid_note_op_at_enqueue"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public avoidRepeatedBcastReEnqueues()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.avoid_repeated_bcast_re_enqueues"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public avoidResolvingType()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.avoid_resolving_type"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public batchingOomAdj()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.batching_oom_adj"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public bfgsManagedNetworkAccess()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.bfgs_managed_network_access"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public collectLogcatOnRunSynchronously()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.collect_logcat_on_run_synchronously"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deferBindersWhenPaused()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.defer_binders_when_paused"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deferDisplayEventsWhenFrozen()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.defer_display_events_when_frozen"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public deferOutgoingBroadcasts()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.defer_outgoing_broadcasts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public enableDropboxWatchdogHeaders()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.enable_dropbox_watchdog_headers"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public expediteActivityLaunchOnColdStart()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.expedite_activity_launch_on_cold_start"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fgsAbuseDetection()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.fgs_abuse_detection"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fgsBootCompleted()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.fgs_boot_completed"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fgsDisableSaw()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.fgs_disable_saw"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fixApplyOomadjOrder()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.fix_apply_oomadj_order"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public followUpOomadjUpdates()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.follow_up_oomadj_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 331
    const-string v41, "com.android.server.am.unfreeze_bind_policy_fix"

    const-string v42, "com.android.server.am.use_cpu_time_capability"

    const-string v1, "com.android.server.am.add_modify_raw_oom_adj_service_level"

    const-string v2, "com.android.server.am.app_start_info_isolated_process"

    const-string v3, "com.android.server.am.avoid_note_op_at_enqueue"

    const-string v4, "com.android.server.am.avoid_repeated_bcast_re_enqueues"

    const-string v5, "com.android.server.am.avoid_resolving_type"

    const-string v6, "com.android.server.am.batching_oom_adj"

    const-string v7, "com.android.server.am.bfgs_managed_network_access"

    const-string v8, "com.android.server.am.collect_logcat_on_run_synchronously"

    const-string v9, "com.android.server.am.defer_binders_when_paused"

    const-string v10, "com.android.server.am.defer_display_events_when_frozen"

    const-string v11, "com.android.server.am.defer_outgoing_broadcasts"

    const-string v12, "com.android.server.am.enable_dropbox_watchdog_headers"

    const-string v13, "com.android.server.am.expedite_activity_launch_on_cold_start"

    const-string v14, "com.android.server.am.fgs_abuse_detection"

    const-string v15, "com.android.server.am.fgs_boot_completed"

    const-string v16, "com.android.server.am.fgs_disable_saw"

    const-string v17, "com.android.server.am.fix_apply_oomadj_order"

    const-string v18, "com.android.server.am.follow_up_oomadj_updates"

    const-string v19, "com.android.server.am.limit_priority_scope"

    const-string v20, "com.android.server.am.log_broadcast_processed_event"

    const-string v21, "com.android.server.am.log_broadcast_sent_event"

    const-string v22, "com.android.server.am.log_excessive_binder_proxies"

    const-string v23, "com.android.server.am.logcat_longer_timeout"

    const-string v24, "com.android.server.am.lower_sms_oom_importance"

    const-string v25, "com.android.server.am.migrate_full_oomadj_updates"

    const-string v26, "com.android.server.am.new_fgs_restriction_logic"

    const-string v27, "com.android.server.am.oomadjuster_cached_app_tiers"

    const-string v28, "com.android.server.am.oomadjuster_correctness_rewrite"

    const-string v29, "com.android.server.am.oomadjuster_prev_laddering"

    const-string v30, "com.android.server.am.perceptible_tasks"

    const-string v31, "com.android.server.am.phantom_processes_fix"

    const-string v32, "com.android.server.am.prototype_aggressive_freezing"

    const-string v33, "com.android.server.am.push_global_state_to_oomadjuster"

    const-string v34, "com.android.server.am.raise_bound_ui_service_threshold"

    const-string v35, "com.android.server.am.restrict_priority_values"

    const-string v36, "com.android.server.am.service_binding_oom_adj_policy"

    const-string v37, "com.android.server.am.simplify_process_traversal"

    const-string v38, "com.android.server.am.skip_unimportant_connections"

    const-string v39, "com.android.server.am.trace_receiver_registration"

    const-string v40, "com.android.server.am.trace_update_app_freeze_state_lsp"

    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

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
            "Lcom/android/server/am/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 327
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/am/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/server/am/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    nop

    .line 316
    const/4 v0, 0x1

    return v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public limitPriorityScope()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.limit_priority_scope"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public logBroadcastProcessedEvent()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.log_broadcast_processed_event"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public logBroadcastSentEvent()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.log_broadcast_sent_event"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public logExcessiveBinderProxies()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.log_excessive_binder_proxies"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public logcatLongerTimeout()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.logcat_longer_timeout"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public lowerSmsOomImportance()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.lower_sms_oom_importance"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public migrateFullOomadjUpdates()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.migrate_full_oomadj_updates"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public newFgsRestrictionLogic()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.new_fgs_restriction_logic"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public oomadjusterCachedAppTiers()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.oomadjuster_cached_app_tiers"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public oomadjusterCorrectnessRewrite()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.oomadjuster_correctness_rewrite"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public oomadjusterPrevLaddering()Z
    .locals 2

    .line 218
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.oomadjuster_prev_laddering"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public perceptibleTasks()Z
    .locals 2

    .line 225
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.perceptible_tasks"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public phantomProcessesFix()Z
    .locals 2

    .line 232
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.phantom_processes_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public prototypeAggressiveFreezing()Z
    .locals 2

    .line 239
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.prototype_aggressive_freezing"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public pushGlobalStateToOomadjuster()Z
    .locals 2

    .line 246
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.push_global_state_to_oomadjuster"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public raiseBoundUiServiceThreshold()Z
    .locals 2

    .line 253
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.raise_bound_ui_service_threshold"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public restrictPriorityValues()Z
    .locals 2

    .line 260
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.restrict_priority_values"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public serviceBindingOomAdjPolicy()Z
    .locals 2

    .line 267
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.service_binding_oom_adj_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public simplifyProcessTraversal()Z
    .locals 2

    .line 274
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.simplify_process_traversal"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public skipUnimportantConnections()Z
    .locals 2

    .line 281
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.skip_unimportant_connections"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public traceReceiverRegistration()Z
    .locals 2

    .line 288
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.trace_receiver_registration"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public traceUpdateAppFreezeStateLsp()Z
    .locals 2

    .line 295
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.trace_update_app_freeze_state_lsp"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public unfreezeBindPolicyFix()Z
    .locals 2

    .line 302
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.am.unfreeze_bind_policy_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useCpuTimeCapability()Z
    .locals 2

    .line 309
    new-instance v0, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.am.use_cpu_time_capability"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
