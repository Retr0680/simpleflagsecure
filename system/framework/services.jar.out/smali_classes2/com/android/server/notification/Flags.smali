.class public final Lcom/android/server/notification/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/notification/FeatureFlags; = null

.field public static final FLAG_ALL_NOTIFS_NEED_TTL:Ljava/lang/String; = "com.android.server.notification.all_notifs_need_ttl"

.field public static final FLAG_AUTOGROUP_SUMMARY_ICON_UPDATE:Ljava/lang/String; = "com.android.server.notification.autogroup_summary_icon_update"

.field public static final FLAG_CROSS_APP_POLITE_NOTIFICATIONS:Ljava/lang/String; = "com.android.server.notification.cross_app_polite_notifications"

.field public static final FLAG_EXIT_INVALID_CANCEL_EARLY:Ljava/lang/String; = "com.android.server.notification.exit_invalid_cancel_early"

.field public static final FLAG_EXPIRE_BITMAPS:Ljava/lang/String; = "com.android.server.notification.expire_bitmaps"

.field public static final FLAG_FIX_CALLING_UID_FROM_CPS:Ljava/lang/String; = "com.android.server.notification.fix_calling_uid_from_cps"

.field public static final FLAG_MANAGED_SERVICES_CONCURRENT_MULTIUSER:Ljava/lang/String; = "com.android.server.notification.managed_services_concurrent_multiuser"

.field public static final FLAG_NM_BINDER_PERF_REDUCE_ZEN_BROADCASTS:Ljava/lang/String; = "com.android.server.notification.nm_binder_perf_reduce_zen_broadcasts"

.field public static final FLAG_NM_BINDER_PERF_THROTTLE_EFFECTS_SUPPRESSOR_BROADCAST:Ljava/lang/String; = "com.android.server.notification.nm_binder_perf_throttle_effects_suppressor_broadcast"

.field public static final FLAG_NOTIFICATION_CUSTOM_VIEW_URI_RESTRICTION:Ljava/lang/String; = "com.android.server.notification.notification_custom_view_uri_restriction"

.field public static final FLAG_NOTIFICATION_FORCE_GROUP_CONVERSATIONS:Ljava/lang/String; = "com.android.server.notification.notification_force_group_conversations"

.field public static final FLAG_NOTIFICATION_FORCE_GROUP_SINGLETONS:Ljava/lang/String; = "com.android.server.notification.notification_force_group_singletons"

.field public static final FLAG_NOTIFICATION_HIDE_UNUSED_CHANNELS:Ljava/lang/String; = "com.android.server.notification.notification_hide_unused_channels"

.field public static final FLAG_NOTIFICATION_LOCK_SCREEN_SETTINGS:Ljava/lang/String; = "com.android.server.notification.notification_lock_screen_settings"

.field public static final FLAG_NOTIFICATION_MINIMALISM:Ljava/lang/String; = "com.android.server.notification.notification_minimalism"

.field public static final FLAG_NOTIFICATION_TEST:Ljava/lang/String; = "com.android.server.notification.notification_test"

.field public static final FLAG_NOTIFICATION_VIBRATION_IN_SOUND_URI:Ljava/lang/String; = "com.android.server.notification.notification_vibration_in_sound_uri"

.field public static final FLAG_NOTIFICATION_VIBRATION_IN_SOUND_URI_FOR_CHANNEL:Ljava/lang/String; = "com.android.server.notification.notification_vibration_in_sound_uri_for_channel"

.field public static final FLAG_PERSIST_INCOMPLETE_RESTORE_DATA:Ljava/lang/String; = "com.android.server.notification.persist_incomplete_restore_data"

.field public static final FLAG_POLITE_NOTIFICATIONS:Ljava/lang/String; = "com.android.server.notification.polite_notifications"

.field public static final FLAG_POLITE_NOTIFICATIONS_ATTN_UPDATE:Ljava/lang/String; = "com.android.server.notification.polite_notifications_attn_update"

.field public static final FLAG_PREVENT_ZEN_DEVICE_EFFECTS_WHILE_DRIVING:Ljava/lang/String; = "com.android.server.notification.prevent_zen_device_effects_while_driving"

.field public static final FLAG_REFACTOR_ATTENTION_HELPER:Ljava/lang/String; = "com.android.server.notification.refactor_attention_helper"

.field public static final FLAG_REJECT_OLD_NOTIFICATIONS:Ljava/lang/String; = "com.android.server.notification.reject_old_notifications"

.field public static final FLAG_SCREENSHARE_NOTIFICATION_HIDING:Ljava/lang/String; = "com.android.server.notification.screenshare_notification_hiding"

.field public static final FLAG_TRACE_CANCEL_EVENTS:Ljava/lang/String; = "com.android.server.notification.trace_cancel_events"

.field public static final FLAG_USE_SSM_USER_SWITCH_SIGNAL:Ljava/lang/String; = "com.android.server.notification.use_ssm_user_switch_signal"

.field public static final FLAG_VIBRATE_WHILE_UNLOCKED:Ljava/lang/String; = "com.android.server.notification.vibrate_while_unlocked"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 260
    new-instance v0, Lcom/android/server/notification/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/notification/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/notification/Flags;->FEATURE_FLAGS:Lcom/android/server/notification/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allNotifsNeedTtl()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public static autogroupSummaryIconUpdate()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public static crossAppPoliteNotifications()Z
    .locals 1

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public static exitInvalidCancelEarly()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static expireBitmaps()Z
    .locals 1

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public static fixCallingUidFromCps()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public static managedServicesConcurrentMultiuser()Z
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public static nmBinderPerfReduceZenBroadcasts()Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public static nmBinderPerfThrottleEffectsSuppressorBroadcast()Z
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationCustomViewUriRestriction()Z
    .locals 1

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationForceGroupConversations()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationForceGroupSingletons()Z
    .locals 1

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public static notificationHideUnusedChannels()Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public static notificationLockScreenSettings()Z
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationMinimalism()Z
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationTest()Z
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationVibrationInSoundUri()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public static notificationVibrationInSoundUriForChannel()Z
    .locals 1

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public static persistIncompleteRestoreData()Z
    .locals 1

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public static politeNotifications()Z
    .locals 1

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public static politeNotificationsAttnUpdate()Z
    .locals 1

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public static preventZenDeviceEffectsWhileDriving()Z
    .locals 1

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public static refactorAttentionHelper()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public static rejectOldNotifications()Z
    .locals 1

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public static screenshareNotificationHiding()Z
    .locals 1

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public static traceCancelEvents()Z
    .locals 1

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public static useSsmUserSwitchSignal()Z
    .locals 1

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public static vibrateWhileUnlocked()Z
    .locals 1

    .line 257
    const/4 v0, 0x0

    return v0
.end method
