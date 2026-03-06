.class public final Lcom/android/media/audio/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/media/audio/FeatureFlags; = null

.field public static final FLAG_ABS_VOLUME_INDEX_FIX:Ljava/lang/String; = "com.android.media.audio.abs_volume_index_fix"

.field public static final FLAG_ALARM_MIN_VOLUME_ZERO:Ljava/lang/String; = "com.android.media.audio.alarm_min_volume_zero"

.field public static final FLAG_AS_DEVICE_CONNECTION_FAILURE:Ljava/lang/String; = "com.android.media.audio.as_device_connection_failure"

.field public static final FLAG_AUDIOSERVER_PERMISSIONS:Ljava/lang/String; = "com.android.media.audio.audioserver_permissions"

.field public static final FLAG_AUDIO_ERASER_EFFECT:Ljava/lang/String; = "com.android.media.audio.audio_eraser_effect"

.field public static final FLAG_BLUETOOTH_MAC_ADDRESS_ANONYMIZATION:Ljava/lang/String; = "com.android.media.audio.bluetooth_mac_address_anonymization"

.field public static final FLAG_DEFER_WEAR_PERMISSION_UPDATES:Ljava/lang/String; = "com.android.media.audio.defer_wear_permission_updates"

.field public static final FLAG_DISABLE_PRESCALE_ABSOLUTE_VOLUME:Ljava/lang/String; = "com.android.media.audio.disable_prescale_absolute_volume"

.field public static final FLAG_DSA_OVER_BT_LE_AUDIO:Ljava/lang/String; = "com.android.media.audio.dsa_over_bt_le_audio"

.field public static final FLAG_EQUAL_SCO_LEA_VC_INDEX_RANGE:Ljava/lang/String; = "com.android.media.audio.equal_sco_lea_vc_index_range"

.field public static final FLAG_HARDENING_IMPL:Ljava/lang/String; = "com.android.media.audio.hardening_impl"

.field public static final FLAG_HARDENING_PARTIAL:Ljava/lang/String; = "com.android.media.audio.hardening_partial"

.field public static final FLAG_HARDENING_PARTIAL_VOLUME:Ljava/lang/String; = "com.android.media.audio.hardening_partial_volume"

.field public static final FLAG_HARDENING_STRICT:Ljava/lang/String; = "com.android.media.audio.hardening_strict"

.field public static final FLAG_MUSIC_FX_EDGE_TO_EDGE:Ljava/lang/String; = "com.android.media.audio.music_fx_edge_to_edge"

.field public static final FLAG_OPTIMIZE_BT_DEVICE_SWITCH:Ljava/lang/String; = "com.android.media.audio.optimize_bt_device_switch"

.field public static final FLAG_PORT_TO_PIID_SIMPLIFICATION:Ljava/lang/String; = "com.android.media.audio.port_to_piid_simplification"

.field public static final FLAG_REPLACE_STREAM_BT_SCO:Ljava/lang/String; = "com.android.media.audio.replace_stream_bt_sco"

.field public static final FLAG_RINGER_MODE_AFFECTS_ALARM:Ljava/lang/String; = "com.android.media.audio.ringer_mode_affects_alarm"

.field public static final FLAG_RING_MY_CAR:Ljava/lang/String; = "com.android.media.audio.ring_my_car"

.field public static final FLAG_SET_STREAM_VOLUME_ORDER:Ljava/lang/String; = "com.android.media.audio.set_stream_volume_order"

.field public static final FLAG_SPATIALIZER_OFFLOAD:Ljava/lang/String; = "com.android.media.audio.spatializer_offload"

.field public static final FLAG_SPATIALIZER_UPMIX:Ljava/lang/String; = "com.android.media.audio.spatializer_upmix"

.field public static final FLAG_STEREO_SPATIALIZATION:Ljava/lang/String; = "com.android.media.audio.stereo_spatialization"

.field public static final FLAG_VGS_VSS_SYNC_MUTE_ORDER:Ljava/lang/String; = "com.android.media.audio.vgs_vss_sync_mute_order"

.field public static final FLAG_VOLUME_REFACTORING:Ljava/lang/String; = "com.android.media.audio.volume_refactoring"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 242
    new-instance v0, Lcom/android/media/audio/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/media/audio/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/media/audio/Flags;->FEATURE_FLAGS:Lcom/android/media/audio/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absVolumeIndexFix()Z
    .locals 1

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public static alarmMinVolumeZero()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static asDeviceConnectionFailure()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public static audioEraserEffect()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public static audioserverPermissions()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public static bluetoothMacAddressAnonymization()Z
    .locals 1

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public static deferWearPermissionUpdates()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public static disablePrescaleAbsoluteVolume()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public static dsaOverBtLeAudio()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public static equalScoLeaVcIndexRange()Z
    .locals 1

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public static hardeningImpl()Z
    .locals 1

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public static hardeningPartial()Z
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public static hardeningPartialVolume()Z
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public static hardeningStrict()Z
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public static musicFxEdgeToEdge()Z
    .locals 1

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public static optimizeBtDeviceSwitch()Z
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public static portToPiidSimplification()Z
    .locals 1

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public static replaceStreamBtSco()Z
    .locals 1

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public static ringMyCar()Z
    .locals 1

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public static ringerModeAffectsAlarm()Z
    .locals 1

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public static setStreamVolumeOrder()Z
    .locals 1

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public static spatializerOffload()Z
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public static spatializerUpmix()Z
    .locals 1

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public static stereoSpatialization()Z
    .locals 1

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public static vgsVssSyncMuteOrder()Z
    .locals 1

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public static volumeRefactoring()Z
    .locals 1

    .line 239
    const/4 v0, 0x0

    return v0
.end method
