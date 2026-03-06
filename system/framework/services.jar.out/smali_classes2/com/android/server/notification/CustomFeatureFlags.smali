.class public Lcom/android/server/notification/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/server/notification/FeatureFlags;


# instance fields
.field private mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/notification/FeatureFlags;",
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
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/notification/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 16
    .local p1, "getValueImpl":Ljava/util/function/BiPredicate;, "Ljava/util/function/BiPredicate<Ljava/lang/String;Ljava/util/function/Predicate<Lcom/android/server/notification/FeatureFlags;>;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v1, Ljava/util/HashSet;

    const-string v29, "com.android.server.notification.vibrate_while_unlocked"

    const-string v30, ""

    const-string v2, "com.android.server.notification.all_notifs_need_ttl"

    const-string v3, "com.android.server.notification.autogroup_summary_icon_update"

    const-string v4, "com.android.server.notification.cross_app_polite_notifications"

    const-string v5, "com.android.server.notification.exit_invalid_cancel_early"

    const-string v6, "com.android.server.notification.expire_bitmaps"

    const-string v7, "com.android.server.notification.fix_calling_uid_from_cps"

    const-string v8, "com.android.server.notification.managed_services_concurrent_multiuser"

    const-string v9, "com.android.server.notification.nm_binder_perf_reduce_zen_broadcasts"

    const-string v10, "com.android.server.notification.nm_binder_perf_throttle_effects_suppressor_broadcast"

    const-string v11, "com.android.server.notification.notification_custom_view_uri_restriction"

    const-string v12, "com.android.server.notification.notification_force_group_conversations"

    const-string v13, "com.android.server.notification.notification_force_group_singletons"

    const-string v14, "com.android.server.notification.notification_hide_unused_channels"

    const-string v15, "com.android.server.notification.notification_lock_screen_settings"

    const-string v16, "com.android.server.notification.notification_minimalism"

    const-string v17, "com.android.server.notification.notification_test"

    const-string v18, "com.android.server.notification.notification_vibration_in_sound_uri"

    const-string v19, "com.android.server.notification.notification_vibration_in_sound_uri_for_channel"

    const-string v20, "com.android.server.notification.persist_incomplete_restore_data"

    const-string v21, "com.android.server.notification.polite_notifications"

    const-string v22, "com.android.server.notification.polite_notifications_attn_update"

    const-string v23, "com.android.server.notification.prevent_zen_device_effects_while_driving"

    const-string v24, "com.android.server.notification.refactor_attention_helper"

    const-string v25, "com.android.server.notification.reject_old_notifications"

    const-string v26, "com.android.server.notification.screenshare_notification_hiding"

    const-string v27, "com.android.server.notification.trace_cancel_events"

    const-string v28, "com.android.server.notification.use_ssm_user_switch_signal"

    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/notification/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 17
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/notification/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 18
    return-void
.end method

.method private isOptimizationEnabled()Z
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public allNotifsNeedTtl()Z
    .locals 2

    .line 22
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.all_notifs_need_ttl"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public autogroupSummaryIconUpdate()Z
    .locals 2

    .line 29
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.autogroup_summary_icon_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public crossAppPoliteNotifications()Z
    .locals 2

    .line 36
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.cross_app_polite_notifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public exitInvalidCancelEarly()Z
    .locals 2

    .line 43
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.exit_invalid_cancel_early"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public expireBitmaps()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.expire_bitmaps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public fixCallingUidFromCps()Z
    .locals 2

    .line 57
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.fix_calling_uid_from_cps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public getFlagNames()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    const-string v27, "com.android.server.notification.use_ssm_user_switch_signal"

    const-string v28, "com.android.server.notification.vibrate_while_unlocked"

    const-string v1, "com.android.server.notification.all_notifs_need_ttl"

    const-string v2, "com.android.server.notification.autogroup_summary_icon_update"

    const-string v3, "com.android.server.notification.cross_app_polite_notifications"

    const-string v4, "com.android.server.notification.exit_invalid_cancel_early"

    const-string v5, "com.android.server.notification.expire_bitmaps"

    const-string v6, "com.android.server.notification.fix_calling_uid_from_cps"

    const-string v7, "com.android.server.notification.managed_services_concurrent_multiuser"

    const-string v8, "com.android.server.notification.nm_binder_perf_reduce_zen_broadcasts"

    const-string v9, "com.android.server.notification.nm_binder_perf_throttle_effects_suppressor_broadcast"

    const-string v10, "com.android.server.notification.notification_custom_view_uri_restriction"

    const-string v11, "com.android.server.notification.notification_force_group_conversations"

    const-string v12, "com.android.server.notification.notification_force_group_singletons"

    const-string v13, "com.android.server.notification.notification_hide_unused_channels"

    const-string v14, "com.android.server.notification.notification_lock_screen_settings"

    const-string v15, "com.android.server.notification.notification_minimalism"

    const-string v16, "com.android.server.notification.notification_test"

    const-string v17, "com.android.server.notification.notification_vibration_in_sound_uri"

    const-string v18, "com.android.server.notification.notification_vibration_in_sound_uri_for_channel"

    const-string v19, "com.android.server.notification.persist_incomplete_restore_data"

    const-string v20, "com.android.server.notification.polite_notifications"

    const-string v21, "com.android.server.notification.polite_notifications_attn_update"

    const-string v22, "com.android.server.notification.prevent_zen_device_effects_while_driving"

    const-string v23, "com.android.server.notification.refactor_attention_helper"

    const-string v24, "com.android.server.notification.reject_old_notifications"

    const-string v25, "com.android.server.notification.screenshare_notification_hiding"

    const-string v26, "com.android.server.notification.trace_cancel_events"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

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
            "Lcom/android/server/notification/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 229
    .local p2, "getter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/notification/FeatureFlags;>;"
    iget-object v0, p0, Lcom/android/server/notification/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/android/server/notification/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    nop

    .line 218
    const/4 v0, 0x1

    return v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public managedServicesConcurrentMultiuser()Z
    .locals 2

    .line 64
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.managed_services_concurrent_multiuser"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfReduceZenBroadcasts()Z
    .locals 2

    .line 71
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.nm_binder_perf_reduce_zen_broadcasts"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public nmBinderPerfThrottleEffectsSuppressorBroadcast()Z
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.nm_binder_perf_throttle_effects_suppressor_broadcast"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationCustomViewUriRestriction()Z
    .locals 2

    .line 85
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_custom_view_uri_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationForceGroupConversations()Z
    .locals 2

    .line 92
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_force_group_conversations"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationForceGroupSingletons()Z
    .locals 2

    .line 99
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.notification_force_group_singletons"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationHideUnusedChannels()Z
    .locals 2

    .line 106
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.notification_hide_unused_channels"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationLockScreenSettings()Z
    .locals 2

    .line 113
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_lock_screen_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationMinimalism()Z
    .locals 2

    .line 120
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_minimalism"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationTest()Z
    .locals 2

    .line 127
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_test"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationVibrationInSoundUri()Z
    .locals 2

    .line 134
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_vibration_in_sound_uri"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public notificationVibrationInSoundUriForChannel()Z
    .locals 2

    .line 141
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.notification_vibration_in_sound_uri_for_channel"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public persistIncompleteRestoreData()Z
    .locals 2

    .line 148
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.persist_incomplete_restore_data"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public politeNotifications()Z
    .locals 2

    .line 155
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.polite_notifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public politeNotificationsAttnUpdate()Z
    .locals 2

    .line 162
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.polite_notifications_attn_update"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public preventZenDeviceEffectsWhileDriving()Z
    .locals 2

    .line 169
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.prevent_zen_device_effects_while_driving"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public refactorAttentionHelper()Z
    .locals 2

    .line 176
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.refactor_attention_helper"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public rejectOldNotifications()Z
    .locals 2

    .line 183
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.reject_old_notifications"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public screenshareNotificationHiding()Z
    .locals 2

    .line 190
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.screenshare_notification_hiding"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public traceCancelEvents()Z
    .locals 2

    .line 197
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.trace_cancel_events"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public useSsmUserSwitchSignal()Z
    .locals 2

    .line 204
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.server.notification.use_ssm_user_switch_signal"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public vibrateWhileUnlocked()Z
    .locals 2

    .line 211
    new-instance v0, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/notification/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.server.notification.vibrate_while_unlocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
