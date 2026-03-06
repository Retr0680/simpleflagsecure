.class public final Lcom/android/server/os/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/os/FeatureFlags; = null

.field public static final FLAG_ASYNC_START_BUGREPORT:Ljava/lang/String; = "com.android.server.os.async_start_bugreport"

.field public static final FLAG_PROTO_TOMBSTONE:Ljava/lang/String; = "com.android.server.os.proto_tombstone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/server/os/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/os/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/os/Flags;->FEATURE_FLAGS:Lcom/android/server/os/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncStartBugreport()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public static protoTombstone()Z
    .locals 1

    .line 23
    const/4 v0, 0x0

    return v0
.end method
