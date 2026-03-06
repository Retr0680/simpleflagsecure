.class public final Landroid/mmd/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Landroid/mmd/flags/FeatureFlags; = null

.field public static final FLAG_MMD_ENABLED:Ljava/lang/String; = "android.mmd.flags.mmd_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Landroid/mmd/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Landroid/mmd/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Landroid/mmd/flags/Flags;->FEATURE_FLAGS:Landroid/mmd/flags/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mmdEnabled()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method
