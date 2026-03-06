.class public final Lcom/android/server/powerstats/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/powerstats/FeatureFlags; = null

.field public static final FLAG_ALARM_BASED_POWERSTATS_LOGGING:Ljava/lang/String; = "com.android.server.powerstats.alarm_based_powerstats_logging"

.field public static final FLAG_VERIFY_NON_NULL_ARGUMENTS:Ljava/lang/String; = "com.android.server.powerstats.verify_non_null_arguments"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/server/powerstats/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/powerstats/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/powerstats/Flags;->FEATURE_FLAGS:Lcom/android/server/powerstats/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alarmBasedPowerstatsLogging()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public static verifyNonNullArguments()Z
    .locals 1

    .line 23
    const/4 v0, 0x1

    return v0
.end method
