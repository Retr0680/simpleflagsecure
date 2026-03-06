.class Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerConstants;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1233
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1236
    const/4 v0, 0x0

    .line 1237
    .local v0, "oomAdjusterConfigUpdated":Z
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x18

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1238
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1239
    return-void

    .line 1241
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const-string/jumbo v5, "freezer_cutoff_adj"

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "binder_heavy_hitter_auto_sampler_batchsize"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x17

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v3, "service_bind_almost_perceptible_timeout_ms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2b

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v3, "tiered_cached_adj_ui_tier_size"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3e

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "binder_heavy_hitter_watcher_threshold"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x15

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "deferred_fgs_notification_interval_for_short"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "fgs_start_foreground_timeout"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1d

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x16

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v3, "use_tiered_cached_adj"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3c

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "binder_heavy_hitter_auto_sampler_threshold"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v3, "proc_state_debug_uids"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x42

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "follow_up_oomadj_update_wait_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x43

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "enable_wait_for_finish_attach_application"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3a

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "deferred_fgs_notifications_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x24

    goto/16 :goto_2

    :sswitch_e
    const-string v3, "disable_app_profiler_pss_profiling"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x40

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v3, "media_processing_fgs_timeout_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x33

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v3, "short_fgs_proc_state_extra_wait_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x32

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v3, "kill_bg_restricted_cached_idle"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x21

    goto/16 :goto_2

    :sswitch_12
    const-string v3, "boot_time_temp_allowlist_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1a

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v3, "low_swap_threshold_percent"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x38

    goto/16 :goto_2

    :sswitch_14
    const-string v3, "fg_to_bg_fgs_grace_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1b

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v3, "no_kill_cached_processes_until_boot_completed"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2c

    goto/16 :goto_2

    :sswitch_16
    const-string v3, "default_fgs_starts_restriction_check_caller_target_sdk"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_17
    const-string v3, "deferred_fgs_notification_exclusion_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto/16 :goto_2

    :sswitch_18
    const-string v3, "enable_extra_delay_svc_restart_mem_pressure"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x25

    goto/16 :goto_2

    :sswitch_19
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3f

    goto/16 :goto_2

    :sswitch_1a
    const-string/jumbo v3, "system_exempt_power_restrictions_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_1b
    const-string/jumbo v3, "proactive_kills_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x37

    goto/16 :goto_2

    :sswitch_1c
    const-string/jumbo v3, "tiered_cached_adj_decay_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3d

    goto/16 :goto_2

    :sswitch_1d
    const-string v3, "defer_boot_completed_broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x28

    goto/16 :goto_2

    :sswitch_1e
    const-string v3, "fgs_crash_extra_wait_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x36

    goto/16 :goto_2

    :sswitch_1f
    const-string/jumbo v3, "imperceptible_kill_exempt_packages"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xf

    goto/16 :goto_2

    :sswitch_20
    const-string/jumbo v3, "top_to_fgs_grace_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x39

    goto/16 :goto_2

    :sswitch_21
    const-string v3, "deferred_fgs_notifications_api_gated"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto/16 :goto_2

    :sswitch_22
    const-string/jumbo v3, "no_kill_cached_processes_post_boot_completed_duration_millis"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2d

    goto/16 :goto_2

    :sswitch_23
    const-string/jumbo v3, "push_messaging_over_quota_behavior"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_24
    const-string v3, "binder_heavy_hitter_watcher_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x13

    goto/16 :goto_2

    :sswitch_25
    const-string v3, "default_fgs_starts_restriction_notification_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_26
    const-string v3, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1f

    goto/16 :goto_2

    :sswitch_27
    const-string/jumbo v3, "pss_to_rss_threshold_modifier"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x41

    goto/16 :goto_2

    :sswitch_28
    const-string/jumbo v3, "service_start_foreground_timeout_ms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x29

    goto/16 :goto_2

    :sswitch_29
    const-string v3, "fgs_atom_sample_rate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1e

    goto/16 :goto_2

    :sswitch_2a
    const-string/jumbo v3, "prioritize_alarm_broadcasts"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x27

    goto/16 :goto_2

    :sswitch_2b
    const-string/jumbo v3, "process_kill_timeout"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x26

    goto/16 :goto_2

    :sswitch_2c
    const-string/jumbo v3, "min_assoc_log_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x12

    goto/16 :goto_2

    :sswitch_2d
    const-string/jumbo v3, "network_access_timeout_ms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2f

    goto/16 :goto_2

    :sswitch_2e
    const-string v3, "data_sync_fgs_timeout_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x34

    goto/16 :goto_2

    :sswitch_2f
    const-string/jumbo v3, "max_empty_time_millis"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    goto/16 :goto_2

    :sswitch_30
    const-string/jumbo v3, "max_cached_processes"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_2

    :sswitch_31
    const-string v3, "force_bg_check_on_restricted"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x11

    goto/16 :goto_2

    :sswitch_32
    const-string v3, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto/16 :goto_2

    :sswitch_33
    const-string/jumbo v3, "short_fgs_timeout_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x31

    goto/16 :goto_2

    :sswitch_34
    const-string/jumbo v3, "max_phantom_processes"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x19

    goto/16 :goto_2

    :sswitch_35
    const-string v3, "deferred_fgs_notification_interval"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_36
    const-string/jumbo v3, "max_previous_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x3b

    goto/16 :goto_2

    :sswitch_37
    const-string/jumbo v3, "oomadj_update_policy"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_38
    const-string/jumbo v3, "vis_to_invis_uij_schedule_grace_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1c

    goto/16 :goto_2

    :sswitch_39
    const-string/jumbo v3, "max_service_connections_per_process"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x30

    goto/16 :goto_2

    :sswitch_3a
    const-string v3, "deferred_fgs_notification_exclusion_time_for_short"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xb

    goto/16 :goto_2

    :sswitch_3b
    const-string v3, "fgs_start_denied_log_sample_rate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_2

    :sswitch_3c
    const-string v3, "fgs_allow_opt_out"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x23

    goto :goto_2

    :sswitch_3d
    const-string v3, "default_background_activity_starts_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3e
    const-string v3, "binder_heavy_hitter_watcher_batchsize"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x14

    goto :goto_2

    :sswitch_3f
    const-string/jumbo v3, "service_start_foreground_anr_delay_ms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2a

    goto :goto_2

    :sswitch_40
    const-string v3, "default_fgs_starts_restriction_enabled"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_41
    const-string/jumbo v3, "kill_bg_restricted_cached_idle_settle_time"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x22

    goto :goto_2

    :sswitch_42
    const-string/jumbo v3, "short_fgs_anr_extra_wait_duration"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x35

    goto :goto_2

    :sswitch_43
    const-string/jumbo v3, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1433
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFGSPermissionEnforcementFlagsIfNecessary(Lcom/android/server/am/ActivityManagerConstants;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1430
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFollowUpOomAdjUpdateWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1431
    goto/16 :goto_3

    .line 1427
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcStateDebugUids(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1428
    goto/16 :goto_3

    .line 1424
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePssToRssThresholdModifier(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1425
    goto/16 :goto_3

    .line 1421
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDisableAppProfilerPssProfiling(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1422
    goto/16 :goto_3

    .line 1416
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$sfgetDEFAULT_FREEZER_CUTOFF_ADJ()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    .line 1418
    const/4 v0, 0x1

    .line 1419
    goto/16 :goto_3

    .line 1413
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateUseTieredCachedAdj(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1414
    goto/16 :goto_3

    .line 1408
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPreviousTime(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1409
    goto/16 :goto_3

    .line 1405
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableWaitForFinishAttachApplication(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1406
    goto/16 :goto_3

    .line 1402
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateTopToFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1403
    goto/16 :goto_3

    .line 1399
    :pswitch_9
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateLowSwapThresholdPercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1400
    goto/16 :goto_3

    .line 1396
    :pswitch_a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProactiveKillsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1397
    goto/16 :goto_3

    .line 1393
    :pswitch_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsCrashExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1394
    goto/16 :goto_3

    .line 1390
    :pswitch_c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsAnrExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1391
    goto/16 :goto_3

    .line 1387
    :pswitch_d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDataSyncFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1388
    goto/16 :goto_3

    .line 1384
    :pswitch_e
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMediaProcessingFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1385
    goto/16 :goto_3

    .line 1381
    :pswitch_f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsProcStateExtraWaitDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1382
    goto/16 :goto_3

    .line 1378
    :pswitch_10
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateShortFgsTimeoutDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1379
    goto/16 :goto_3

    .line 1375
    :pswitch_11
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxServiceConnectionsPerProcess(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1376
    goto/16 :goto_3

    .line 1372
    :pswitch_12
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNetworkAccessTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1373
    goto/16 :goto_3

    .line 1369
    :pswitch_13
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxEmptyTimeMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1370
    goto/16 :goto_3

    .line 1366
    :pswitch_14
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesPostBootCompletedDurationMillis(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1367
    goto/16 :goto_3

    .line 1363
    :pswitch_15
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateNoKillCachedProcessesUntilBootCompleted(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1364
    goto/16 :goto_3

    .line 1360
    :pswitch_16
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceBindAlmostPerceptibleTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1361
    goto/16 :goto_3

    .line 1357
    :pswitch_17
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundAnrDealyMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1358
    goto/16 :goto_3

    .line 1354
    :pswitch_18
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateServiceStartForegroundTimeoutMs(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1355
    goto/16 :goto_3

    .line 1351
    :pswitch_19
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateDeferBootCompletedBroadcast(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1352
    goto/16 :goto_3

    .line 1348
    :pswitch_1a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePrioritizeAlarmBroadcasts(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1349
    goto/16 :goto_3

    .line 1345
    :pswitch_1b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateProcessKillTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1346
    goto/16 :goto_3

    .line 1342
    :pswitch_1c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateEnableExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1343
    goto/16 :goto_3

    .line 1339
    :pswitch_1d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateExtraServiceRestartDelayOnMemPressure(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1340
    goto/16 :goto_3

    .line 1336
    :pswitch_1e
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAllowOptOut(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1337
    goto/16 :goto_3

    .line 1333
    :pswitch_1f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdleSettleTime(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1334
    goto/16 :goto_3

    .line 1330
    :pswitch_20
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateKillBgRestrictedCachedIdle(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1331
    goto/16 :goto_3

    .line 1327
    :pswitch_21
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartDeniedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1328
    goto/16 :goto_3

    .line 1324
    :pswitch_22
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartAllowedLogSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1325
    goto/16 :goto_3

    .line 1321
    :pswitch_23
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsAtomSamplePercent(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1322
    goto/16 :goto_3

    .line 1318
    :pswitch_24
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartForegroundTimeout(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1319
    goto/16 :goto_3

    .line 1315
    :pswitch_25
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1316
    goto/16 :goto_3

    .line 1312
    :pswitch_26
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgToBgFgsGraceDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1313
    goto/16 :goto_3

    .line 1309
    :pswitch_27
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBootTimeTempAllowListDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1310
    goto/16 :goto_3

    .line 1306
    :pswitch_28
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxPhantomProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1307
    goto/16 :goto_3

    .line 1303
    :pswitch_29
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBinderHeavyHitterWatcher(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1304
    goto/16 :goto_3

    .line 1295
    :pswitch_2a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMinAssocLogDuration(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1296
    goto/16 :goto_3

    .line 1292
    :pswitch_2b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateForceRestrictedBackgroundCheck(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1293
    goto/16 :goto_3

    .line 1289
    :pswitch_2c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateImperceptibleKillExemptions(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1290
    goto :goto_3

    .line 1285
    :pswitch_2d
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateOomAdjUpdatePolicy(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1286
    goto :goto_3

    .line 1282
    :pswitch_2e
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdatePushMessagingOverQuotaBehavior(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1283
    goto :goto_3

    .line 1279
    :pswitch_2f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateSystemExemptPowerRestrictionsEnabled(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1280
    goto :goto_3

    .line 1276
    :pswitch_30
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTimeForShort(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1277
    goto :goto_3

    .line 1273
    :pswitch_31
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralIntervalForShort(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1274
    goto :goto_3

    .line 1270
    :pswitch_32
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralExclusionTime(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1271
    goto :goto_3

    .line 1267
    :pswitch_33
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralInterval(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1268
    goto :goto_3

    .line 1264
    :pswitch_34
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralApiGated(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1265
    goto :goto_3

    .line 1261
    :pswitch_35
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsNotificationDeferralEnable(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1262
    goto :goto_3

    .line 1258
    :pswitch_36
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionCheckCallerTargetSdk(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1259
    goto :goto_3

    .line 1255
    :pswitch_37
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestrictionNotification(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1256
    goto :goto_3

    .line 1252
    :pswitch_38
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1253
    goto :goto_3

    .line 1249
    :pswitch_39
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundFgsStartsRestriction(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1250
    goto :goto_3

    .line 1246
    :pswitch_3a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateBackgroundActivityStarts(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1247
    goto :goto_3

    .line 1243
    :pswitch_3b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateMaxCachedProcesses(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 1244
    nop

    .line 1436
    .end local v2    # "name":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 1437
    :cond_2
    if-eqz v0, :cond_3

    .line 1438
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1440
    .local v1, "ami":Landroid/app/ActivityManagerInternal;
    if-eqz v1, :cond_3

    .line 1441
    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->updateOomAdj(I)V

    .line 1444
    .end local v1    # "ami":Landroid/app/ActivityManagerInternal;
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ba4b562 -> :sswitch_43
        -0x798468db -> :sswitch_42
        -0x76fa06f8 -> :sswitch_41
        -0x719878d5 -> :sswitch_40
        -0x71781c6f -> :sswitch_3f
        -0x6d209d2c -> :sswitch_3e
        -0x6a37b8d0 -> :sswitch_3d
        -0x62f6cce1 -> :sswitch_3c
        -0x61c0c900 -> :sswitch_3b
        -0x5f5f6d14 -> :sswitch_3a
        -0x58658d02 -> :sswitch_39
        -0x569d8d6f -> :sswitch_38
        -0x53dc231d -> :sswitch_37
        -0x4f213486 -> :sswitch_36
        -0x4db39f74 -> :sswitch_35
        -0x48c35170 -> :sswitch_34
        -0x4852209e -> :sswitch_33
        -0x476d69e0 -> :sswitch_32
        -0x47037762 -> :sswitch_31
        -0x41254a05 -> :sswitch_30
        -0x3eef3615 -> :sswitch_2f
        -0x3daa35b2 -> :sswitch_2e
        -0x397974d2 -> :sswitch_2d
        -0x3099a4da -> :sswitch_2c
        -0x2ddb96b0 -> :sswitch_2b
        -0x2b65dd00 -> :sswitch_2a
        -0x28b1facc -> :sswitch_29
        -0x226e8ce7 -> :sswitch_28
        -0x1f869333 -> :sswitch_27
        -0x1ac3af47 -> :sswitch_26
        -0x13aa2fbd -> :sswitch_25
        -0x116849e6 -> :sswitch_24
        -0xf17951c -> :sswitch_23
        -0xd5a912d -> :sswitch_22
        -0xceeb9d0 -> :sswitch_21
        -0x502f0de -> :sswitch_20
        -0x2e7b9c6 -> :sswitch_1f
        -0xa23b96 -> :sswitch_1e
        0x14ce72d -> :sswitch_1d
        0x47243c9 -> :sswitch_1c
        0x61ee68b -> :sswitch_1b
        0xa61fe73 -> :sswitch_1a
        0xca1df59 -> :sswitch_19
        0x105030a5 -> :sswitch_18
        0x257a0925 -> :sswitch_17
        0x34db0a33 -> :sswitch_16
        0x350b53bb -> :sswitch_15
        0x39ca177c -> :sswitch_14
        0x425eee10 -> :sswitch_13
        0x45611472 -> :sswitch_12
        0x477b2286 -> :sswitch_11
        0x49dfc388 -> :sswitch_10
        0x4d171cd0 -> :sswitch_f
        0x4f9e4f36 -> :sswitch_e
        0x50949369 -> :sswitch_d
        0x524459dd -> :sswitch_c
        0x5611b47e -> :sswitch_b
        0x58bdb2f7 -> :sswitch_a
        0x59f1b6c6 -> :sswitch_9
        0x59fe4888 -> :sswitch_8
        0x5e055050 -> :sswitch_7
        0x5f40529e -> :sswitch_6
        0x60f0152f -> :sswitch_5
        0x6fb61593 -> :sswitch_4
        0x710abd04 -> :sswitch_3
        0x729c862a -> :sswitch_2
        0x7805f2e7 -> :sswitch_1
        0x7bd2ee58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
