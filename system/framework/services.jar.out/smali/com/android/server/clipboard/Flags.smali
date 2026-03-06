.class public final Lcom/android/server/clipboard/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/clipboard/FeatureFlags; = null

.field public static final FLAG_CLIPBOARD_GET_EVENT_LOGGING:Ljava/lang/String; = "com.android.server.clipboard.clipboard_get_event_logging"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/server/clipboard/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/clipboard/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/clipboard/Flags;->FEATURE_FLAGS:Lcom/android/server/clipboard/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipboardGetEventLogging()Z
    .locals 1

    .line 14
    const/4 v0, 0x0

    return v0
.end method
