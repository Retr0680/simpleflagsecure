.class public final Lcom/android/server/connectivity/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/connectivity/FeatureFlags; = null

.field public static final FLAG_REPLACE_VPN_PROFILE_STORE:Ljava/lang/String; = "com.android.server.connectivity.replace_vpn_profile_store"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/server/connectivity/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/connectivity/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/Flags;->FEATURE_FLAGS:Lcom/android/server/connectivity/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static replaceVpnProfileStore()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method
