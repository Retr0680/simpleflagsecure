.class public final Lcom/android/server/usb/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/usb/flags/FeatureFlags; = null

.field public static final FLAG_ALLOW_RESTRICTION_OF_OVERLAY_ACTIVITIES:Ljava/lang/String; = "com.android.server.usb.flags.allow_restriction_of_overlay_activities"

.field public static final FLAG_CHECK_USER_ACTION_UNLOCKED:Ljava/lang/String; = "com.android.server.usb.flags.check_user_action_unlocked"

.field public static final FLAG_ENABLE_BIND_TO_MTP_SERVICE:Ljava/lang/String; = "com.android.server.usb.flags.enable_bind_to_mtp_service"

.field public static final FLAG_MAXIMIZE_USB_AUDIO_VOLUME_WHEN_CONNECTING:Ljava/lang/String; = "com.android.server.usb.flags.maximize_usb_audio_volume_when_connecting"

.field public static final FLAG_WAIT_FOR_ALSA_SCAN_RESULTS_IF_HAS_AUDIO_INTERFACE:Ljava/lang/String; = "com.android.server.usb.flags.wait_for_alsa_scan_results_if_has_audio_interface"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/server/usb/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/usb/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/usb/flags/Flags;->FEATURE_FLAGS:Lcom/android/server/usb/flags/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowRestrictionOfOverlayActivities()Z
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public static checkUserActionUnlocked()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public static enableBindToMtpService()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public static maximizeUsbAudioVolumeWhenConnecting()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public static waitForAlsaScanResultsIfHasAudioInterface()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method
