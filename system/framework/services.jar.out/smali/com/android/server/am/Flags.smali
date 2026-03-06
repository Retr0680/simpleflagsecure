.class public final Lcom/android/server/am/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/am/FeatureFlags; = null

.field public static final FLAG_ADD_MODIFY_RAW_OOM_ADJ_SERVICE_LEVEL:Ljava/lang/String; = "com.android.server.am.add_modify_raw_oom_adj_service_level"

.field public static final FLAG_APP_START_INFO_ISOLATED_PROCESS:Ljava/lang/String; = "com.android.server.am.app_start_info_isolated_process"

.field public static final FLAG_AVOID_NOTE_OP_AT_ENQUEUE:Ljava/lang/String; = "com.android.server.am.avoid_note_op_at_enqueue"

.field public static final FLAG_AVOID_REPEATED_BCAST_RE_ENQUEUES:Ljava/lang/String; = "com.android.server.am.avoid_repeated_bcast_re_enqueues"

.field public static final FLAG_AVOID_RESOLVING_TYPE:Ljava/lang/String; = "com.android.server.am.avoid_resolving_type"

.field public static final FLAG_BATCHING_OOM_ADJ:Ljava/lang/String; = "com.android.server.am.batching_oom_adj"

.field public static final FLAG_BFGS_MANAGED_NETWORK_ACCESS:Ljava/lang/String; = "com.android.server.am.bfgs_managed_network_access"

.field public static final FLAG_COLLECT_LOGCAT_ON_RUN_SYNCHRONOUSLY:Ljava/lang/String; = "com.android.server.am.collect_logcat_on_run_synchronously"

.field public static final FLAG_DEFER_BINDERS_WHEN_PAUSED:Ljava/lang/String; = "com.android.server.am.defer_binders_when_paused"

.field public static final FLAG_DEFER_DISPLAY_EVENTS_WHEN_FROZEN:Ljava/lang/String; = "com.android.server.am.defer_display_events_when_frozen"

.field public static final FLAG_DEFER_OUTGOING_BROADCASTS:Ljava/lang/String; = "com.android.server.am.defer_outgoing_broadcasts"

.field public static final FLAG_ENABLE_DROPBOX_WATCHDOG_HEADERS:Ljava/lang/String; = "com.android.server.am.enable_dropbox_watchdog_headers"

.field public static final FLAG_EXPEDITE_ACTIVITY_LAUNCH_ON_COLD_START:Ljava/lang/String; = "com.android.server.am.expedite_activity_launch_on_cold_start"

.field public static final FLAG_FGS_ABUSE_DETECTION:Ljava/lang/String; = "com.android.server.am.fgs_abuse_detection"

.field public static final FLAG_FGS_BOOT_COMPLETED:Ljava/lang/String; = "com.android.server.am.fgs_boot_completed"

.field public static final FLAG_FGS_DISABLE_SAW:Ljava/lang/String; = "com.android.server.am.fgs_disable_saw"

.field public static final FLAG_FIX_APPLY_OOMADJ_ORDER:Ljava/lang/String; = "com.android.server.am.fix_apply_oomadj_order"

.field public static final FLAG_FOLLOW_UP_OOMADJ_UPDATES:Ljava/lang/String; = "com.android.server.am.follow_up_oomadj_updates"

.field public static final FLAG_LIMIT_PRIORITY_SCOPE:Ljava/lang/String; = "com.android.server.am.limit_priority_scope"

.field public static final FLAG_LOGCAT_LONGER_TIMEOUT:Ljava/lang/String; = "com.android.server.am.logcat_longer_timeout"

.field public static final FLAG_LOG_BROADCAST_PROCESSED_EVENT:Ljava/lang/String; = "com.android.server.am.log_broadcast_processed_event"

.field public static final FLAG_LOG_BROADCAST_SENT_EVENT:Ljava/lang/String; = "com.android.server.am.log_broadcast_sent_event"

.field public static final FLAG_LOG_EXCESSIVE_BINDER_PROXIES:Ljava/lang/String; = "com.android.server.am.log_excessive_binder_proxies"

.field public static final FLAG_LOWER_SMS_OOM_IMPORTANCE:Ljava/lang/String; = "com.android.server.am.lower_sms_oom_importance"

.field public static final FLAG_MIGRATE_FULL_OOMADJ_UPDATES:Ljava/lang/String; = "com.android.server.am.migrate_full_oomadj_updates"

.field public static final FLAG_NEW_FGS_RESTRICTION_LOGIC:Ljava/lang/String; = "com.android.server.am.new_fgs_restriction_logic"

.field public static final FLAG_OOMADJUSTER_CACHED_APP_TIERS:Ljava/lang/String; = "com.android.server.am.oomadjuster_cached_app_tiers"

.field public static final FLAG_OOMADJUSTER_CORRECTNESS_REWRITE:Ljava/lang/String; = "com.android.server.am.oomadjuster_correctness_rewrite"

.field public static final FLAG_OOMADJUSTER_PREV_LADDERING:Ljava/lang/String; = "com.android.server.am.oomadjuster_prev_laddering"

.field public static final FLAG_PERCEPTIBLE_TASKS:Ljava/lang/String; = "com.android.server.am.perceptible_tasks"

.field public static final FLAG_PHANTOM_PROCESSES_FIX:Ljava/lang/String; = "com.android.server.am.phantom_processes_fix"

.field public static final FLAG_PROTOTYPE_AGGRESSIVE_FREEZING:Ljava/lang/String; = "com.android.server.am.prototype_aggressive_freezing"

.field public static final FLAG_PUSH_GLOBAL_STATE_TO_OOMADJUSTER:Ljava/lang/String; = "com.android.server.am.push_global_state_to_oomadjuster"

.field public static final FLAG_RAISE_BOUND_UI_SERVICE_THRESHOLD:Ljava/lang/String; = "com.android.server.am.raise_bound_ui_service_threshold"

.field public static final FLAG_RESTRICT_PRIORITY_VALUES:Ljava/lang/String; = "com.android.server.am.restrict_priority_values"

.field public static final FLAG_SERVICE_BINDING_OOM_ADJ_POLICY:Ljava/lang/String; = "com.android.server.am.service_binding_oom_adj_policy"

.field public static final FLAG_SIMPLIFY_PROCESS_TRAVERSAL:Ljava/lang/String; = "com.android.server.am.simplify_process_traversal"

.field public static final FLAG_SKIP_UNIMPORTANT_CONNECTIONS:Ljava/lang/String; = "com.android.server.am.skip_unimportant_connections"

.field public static final FLAG_TRACE_RECEIVER_REGISTRATION:Ljava/lang/String; = "com.android.server.am.trace_receiver_registration"

.field public static final FLAG_TRACE_UPDATE_APP_FREEZE_STATE_LSP:Ljava/lang/String; = "com.android.server.am.trace_update_app_freeze_state_lsp"

.field public static final FLAG_UNFREEZE_BIND_POLICY_FIX:Ljava/lang/String; = "com.android.server.am.unfreeze_bind_policy_fix"

.field public static final FLAG_USE_CPU_TIME_CAPABILITY:Ljava/lang/String; = "com.android.server.am.use_cpu_time_capability"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 386
    new-instance v0, Lcom/android/server/am/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/am/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/am/Flags;->FEATURE_FLAGS:Lcom/android/server/am/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addModifyRawOomAdjServiceLevel()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public static appStartInfoIsolatedProcess()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public static avoidNoteOpAtEnqueue()Z
    .locals 1

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public static avoidRepeatedBcastReEnqueues()Z
    .locals 1

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public static avoidResolvingType()Z
    .locals 1

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public static batchingOomAdj()Z
    .locals 1

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public static bfgsManagedNetworkAccess()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public static collectLogcatOnRunSynchronously()Z
    .locals 1

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public static deferBindersWhenPaused()Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public static deferDisplayEventsWhenFrozen()Z
    .locals 1

    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public static deferOutgoingBroadcasts()Z
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public static enableDropboxWatchdogHeaders()Z
    .locals 1

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public static expediteActivityLaunchOnColdStart()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public static fgsAbuseDetection()Z
    .locals 1

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public static fgsBootCompleted()Z
    .locals 1

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public static fgsDisableSaw()Z
    .locals 1

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public static fixApplyOomadjOrder()Z
    .locals 1

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static followUpOomadjUpdates()Z
    .locals 1

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public static limitPriorityScope()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public static logBroadcastProcessedEvent()Z
    .locals 1

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public static logBroadcastSentEvent()Z
    .locals 1

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public static logExcessiveBinderProxies()Z
    .locals 1

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public static logcatLongerTimeout()Z
    .locals 1

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public static lowerSmsOomImportance()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public static migrateFullOomadjUpdates()Z
    .locals 1

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public static newFgsRestrictionLogic()Z
    .locals 1

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public static oomadjusterCachedAppTiers()Z
    .locals 1

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public static oomadjusterCorrectnessRewrite()Z
    .locals 1

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public static oomadjusterPrevLaddering()Z
    .locals 1

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public static perceptibleTasks()Z
    .locals 1

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public static phantomProcessesFix()Z
    .locals 1

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public static prototypeAggressiveFreezing()Z
    .locals 1

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public static pushGlobalStateToOomadjuster()Z
    .locals 1

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public static raiseBoundUiServiceThreshold()Z
    .locals 1

    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public static restrictPriorityValues()Z
    .locals 1

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public static serviceBindingOomAdjPolicy()Z
    .locals 1

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public static simplifyProcessTraversal()Z
    .locals 1

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public static skipUnimportantConnections()Z
    .locals 1

    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public static traceReceiverRegistration()Z
    .locals 1

    .line 362
    const/4 v0, 0x1

    return v0
.end method

.method public static traceUpdateAppFreezeStateLsp()Z
    .locals 1

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public static unfreezeBindPolicyFix()Z
    .locals 1

    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method public static useCpuTimeCapability()Z
    .locals 1

    .line 383
    const/4 v0, 0x0

    return v0
.end method
