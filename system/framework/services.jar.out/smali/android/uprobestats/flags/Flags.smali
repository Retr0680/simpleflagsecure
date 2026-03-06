.class public final Landroid/uprobestats/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/uprobestats/flags/FeatureFlags; = null

.field public static final FLAG_ENABLE_UPROBESTATS:Ljava/lang/String; = "android.uprobestats.flags.enable_uprobestats"

.field public static final FLAG_EXECUTABLE_METHOD_FILE_OFFSETS:Ljava/lang/String; = "android.uprobestats.flags.executable_method_file_offsets"

.field public static final FLAG_UPROBESTATS_SUPPORT_UPDATE_DEVICE_IDLE_TEMP_ALLOWLIST:Ljava/lang/String; = "android.uprobestats.flags.uprobestats_support_update_device_idle_temp_allowlist"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/uprobestats/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/uprobestats/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/uprobestats/flags/Flags;->FEATURE_FLAGS:Landroid/uprobestats/flags/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableUprobestats()Z
    .locals 1

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public static executableMethodFileOffsets()Z
    .locals 1

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public static uprobestatsSupportUpdateDeviceIdleTempAllowlist()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method
