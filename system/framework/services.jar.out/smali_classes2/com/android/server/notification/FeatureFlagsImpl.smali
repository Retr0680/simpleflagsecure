.class public final Lcom/android/server/notification/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/server/notification/FeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allNotifsNeedTtl()Z
    .locals 1

    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public autogroupSummaryIconUpdate()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public crossAppPoliteNotifications()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public exitInvalidCancelEarly()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public expireBitmaps()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public fixCallingUidFromCps()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public managedServicesConcurrentMultiuser()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public nmBinderPerfReduceZenBroadcasts()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public nmBinderPerfThrottleEffectsSuppressorBroadcast()Z
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public notificationCustomViewUriRestriction()Z
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public notificationForceGroupConversations()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public notificationForceGroupSingletons()Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public notificationHideUnusedChannels()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public notificationLockScreenSettings()Z
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public notificationMinimalism()Z
    .locals 1

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public notificationTest()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public notificationVibrationInSoundUri()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public notificationVibrationInSoundUriForChannel()Z
    .locals 1

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public persistIncompleteRestoreData()Z
    .locals 1

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public politeNotifications()Z
    .locals 1

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public politeNotificationsAttnUpdate()Z
    .locals 1

    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public preventZenDeviceEffectsWhileDriving()Z
    .locals 1

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public refactorAttentionHelper()Z
    .locals 1

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public rejectOldNotifications()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public screenshareNotificationHiding()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public traceCancelEvents()Z
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public useSsmUserSwitchSignal()Z
    .locals 1

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public vibrateWhileUnlocked()Z
    .locals 1

    .line 199
    const/4 v0, 0x0

    return v0
.end method
