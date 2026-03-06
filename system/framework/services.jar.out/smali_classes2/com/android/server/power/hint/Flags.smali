.class public final Lcom/android/server/power/hint/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/power/hint/FeatureFlags; = null

.field public static final FLAG_ADPF_SESSION_TAG:Ljava/lang/String; = "com.android.server.power.hint.adpf_session_tag"

.field public static final FLAG_CPU_HEADROOM_AFFINITY_CHECK:Ljava/lang/String; = "com.android.server.power.hint.cpu_headroom_affinity_check"

.field public static final FLAG_POWERHINT_THREAD_CLEANUP:Ljava/lang/String; = "com.android.server.power.hint.powerhint_thread_cleanup"

.field public static final FLAG_RESET_ON_FORK_ENABLED:Ljava/lang/String; = "com.android.server.power.hint.reset_on_fork_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/android/server/power/hint/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/power/hint/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/power/hint/Flags;->FEATURE_FLAGS:Lcom/android/server/power/hint/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adpfSessionTag()Z
    .locals 1

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public static cpuHeadroomAffinityCheck()Z
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public static powerhintThreadCleanup()Z
    .locals 1

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public static resetOnForkEnabled()Z
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method
