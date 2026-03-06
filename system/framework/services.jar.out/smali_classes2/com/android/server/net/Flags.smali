.class public final Lcom/android/server/net/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/net/FeatureFlags; = null

.field public static final FLAG_NEVER_APPLY_RULES_TO_CORE_UIDS:Ljava/lang/String; = "com.android.server.net.never_apply_rules_to_core_uids"

.field public static final FLAG_USE_DIFFERENT_DELAYS_FOR_BACKGROUND_CHAIN:Ljava/lang/String; = "com.android.server.net.use_different_delays_for_background_chain"

.field public static final FLAG_USE_METERED_FIREWALL_CHAINS:Ljava/lang/String; = "com.android.server.net.use_metered_firewall_chains"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/server/net/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/net/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/net/Flags;->FEATURE_FLAGS:Lcom/android/server/net/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static neverApplyRulesToCoreUids()Z
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public static useDifferentDelaysForBackgroundChain()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public static useMeteredFirewallChains()Z
    .locals 1

    .line 32
    const/4 v0, 0x1

    return v0
.end method
