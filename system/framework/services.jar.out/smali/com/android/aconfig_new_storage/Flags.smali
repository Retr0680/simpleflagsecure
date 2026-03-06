.class public final Lcom/android/aconfig_new_storage/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/aconfig_new_storage/FeatureFlags; = null

.field public static final FLAG_BLUETOOTH_FLAG_VALUE_BUG_FIX:Ljava/lang/String; = "com.android.aconfig_new_storage.bluetooth_flag_value_bug_fix"

.field public static final FLAG_ENABLE_ACONFIGD_FROM_MAINLINE:Ljava/lang/String; = "com.android.aconfig_new_storage.enable_aconfigd_from_mainline"

.field public static final FLAG_ENABLE_ACONFIG_STORAGE_DAEMON:Ljava/lang/String; = "com.android.aconfig_new_storage.enable_aconfig_storage_daemon"

.field public static final FLAG_ENABLE_FULL_RUST_SYSTEM_ACONFIGD:Ljava/lang/String; = "com.android.aconfig_new_storage.enable_full_rust_system_aconfigd"

.field public static final FLAG_SUPPORT_CLEAR_LOCAL_OVERRIDES_IMMEDIATELY:Ljava/lang/String; = "com.android.aconfig_new_storage.support_clear_local_overrides_immediately"

.field public static final FLAG_SUPPORT_IMMEDIATE_LOCAL_OVERRIDES:Ljava/lang/String; = "com.android.aconfig_new_storage.support_immediate_local_overrides"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/aconfig_new_storage/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/aconfig_new_storage/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/aconfig_new_storage/Flags;->FEATURE_FLAGS:Lcom/android/aconfig_new_storage/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bluetoothFlagValueBugFix()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public static enableAconfigStorageDaemon()Z
    .locals 1

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public static enableAconfigdFromMainline()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public static enableFullRustSystemAconfigd()Z
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public static supportClearLocalOverridesImmediately()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public static supportImmediateLocalOverrides()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method
