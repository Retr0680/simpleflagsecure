.class public final Lcom/android/server/stats/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/stats/FeatureFlags; = null

.field public static final FLAG_ACCUMULATE_NETWORK_STATS_SINCE_BOOT:Ljava/lang/String; = "com.android.server.stats.accumulate_network_stats_since_boot"

.field public static final FLAG_ADD_MOBILE_BYTES_TRANSFER_BY_PROC_STATE_PULLER:Ljava/lang/String; = "com.android.server.stats.add_mobile_bytes_transfer_by_proc_state_puller"

.field public static final FLAG_ADD_PRESSURE_STALL_INFORMATION_PULLER:Ljava/lang/String; = "com.android.server.stats.add_pressure_stall_information_puller"

.field public static final FLAG_APPLY_NETWORK_STATS_POLL_RATE_LIMIT:Ljava/lang/String; = "com.android.server.stats.apply_network_stats_poll_rate_limit"

.field public static final FLAG_NETSTATS_USE_ADD_ENTRIES:Ljava/lang/String; = "com.android.server.stats.netstats_use_add_entries"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/android/server/stats/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/stats/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/stats/Flags;->FEATURE_FLAGS:Lcom/android/server/stats/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accumulateNetworkStatsSinceBoot()Z
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public static addMobileBytesTransferByProcStatePuller()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public static addPressureStallInformationPuller()Z
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public static applyNetworkStatsPollRateLimit()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public static netstatsUseAddEntries()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method
