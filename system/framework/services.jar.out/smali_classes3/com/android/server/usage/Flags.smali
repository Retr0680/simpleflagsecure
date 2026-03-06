.class public final Lcom/android/server/usage/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/usage/FeatureFlags; = null

.field public static final FLAG_ADJUST_DEFAULT_BUCKET_ELEVATION_PARAMS:Ljava/lang/String; = "com.android.server.usage.adjust_default_bucket_elevation_params"

.field public static final FLAG_AVOID_IDLE_CHECK:Ljava/lang/String; = "com.android.server.usage.avoid_idle_check"

.field public static final FLAG_PERSIST_RESTORE_TO_RARE_APPS_LIST:Ljava/lang/String; = "com.android.server.usage.persist_restore_to_rare_apps_list"

.field public static final FLAG_SCREEN_TIME_BYPASS:Ljava/lang/String; = "com.android.server.usage.screen_time_bypass"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/android/server/usage/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/usage/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/usage/Flags;->FEATURE_FLAGS:Lcom/android/server/usage/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultBucketElevationParams()Z
    .locals 1

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public static avoidIdleCheck()Z
    .locals 1

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public static persistRestoreToRareAppsList()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public static screenTimeBypass()Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method
