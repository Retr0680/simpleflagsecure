.class public final Lcom/android/server/alarm/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static FEATURE_FLAGS:Lcom/android/server/alarm/FeatureFlags; = null

.field public static final FLAG_ACQUIRE_WAKELOCK_BEFORE_SEND:Ljava/lang/String; = "com.android.server.alarm.acquire_wakelock_before_send"

.field public static final FLAG_START_USER_BEFORE_SCHEDULED_ALARMS:Ljava/lang/String; = "com.android.server.alarm.start_user_before_scheduled_alarms"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/server/alarm/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/alarm/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/alarm/Flags;->FEATURE_FLAGS:Lcom/android/server/alarm/FeatureFlags;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireWakelockBeforeSend()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public static startUserBeforeScheduledAlarms()Z
    .locals 1

    .line 23
    const/4 v0, 0x1

    return v0
.end method
