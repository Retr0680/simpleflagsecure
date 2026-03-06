.class public final Lcom/android/server/print/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/print/FeatureFlags; = null

.field public static final FLAG_DO_NOT_INCLUDE_CAPABILITIES:Ljava/lang/String; = "com.android.server.print.do_not_include_capabilities"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/server/print/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/print/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/print/Flags;->FEATURE_FLAGS:Lcom/android/server/print/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNotIncludeCapabilities()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method
