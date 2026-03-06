.class public Lcom/android/server/devicepolicy/DevicePolicyStatsLog;
.super Ljava/lang/Object;
.source "DevicePolicyStatsLog.java"


# static fields
.field public static final ANNOTATION_ID_DEFAULT_STATE:B = 0x6t

.field public static final ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final DEVICE_POLICY_MANAGEMENT_MODE:I = 0x27e8

.field public static final DEVICE_POLICY_MANAGEMENT_MODE__MANAGEMENT_MODE__COPE:I = 0x3

.field public static final DEVICE_POLICY_MANAGEMENT_MODE__MANAGEMENT_MODE__DEVICE_OWNER:I = 0x1

.field public static final DEVICE_POLICY_MANAGEMENT_MODE__MANAGEMENT_MODE__DEVICE_OWNER_FINANCED:I = 0x4

.field public static final DEVICE_POLICY_MANAGEMENT_MODE__MANAGEMENT_MODE__MANAGEMENT_MODE_UNSPECIFIED:I = 0x0

.field public static final DEVICE_POLICY_MANAGEMENT_MODE__MANAGEMENT_MODE__PROFILE_OWNER:I = 0x2

.field public static final DEVICE_POLICY_STATE:I = 0x27e9

.field public static final DEVICE_POLICY_STATE__MANAGEMENT_MODE__COPE:I = 0x3

.field public static final DEVICE_POLICY_STATE__MANAGEMENT_MODE__DEVICE_OWNER:I = 0x1

.field public static final DEVICE_POLICY_STATE__MANAGEMENT_MODE__DEVICE_OWNER_FINANCED:I = 0x4

.field public static final DEVICE_POLICY_STATE__MANAGEMENT_MODE__MANAGEMENT_MODE_UNSPECIFIED:I = 0x0

.field public static final DEVICE_POLICY_STATE__MANAGEMENT_MODE__PROFILE_OWNER:I = 0x2

.field public static final DEVICE_POLICY_STATE__PASSWORD_COMPLEXITY__COMPLEXITY_HIGH:I = 0x5

.field public static final DEVICE_POLICY_STATE__PASSWORD_COMPLEXITY__COMPLEXITY_LEGACY:I = 0x2

.field public static final DEVICE_POLICY_STATE__PASSWORD_COMPLEXITY__COMPLEXITY_LOW:I = 0x3

.field public static final DEVICE_POLICY_STATE__PASSWORD_COMPLEXITY__COMPLEXITY_MEDIUM:I = 0x4

.field public static final DEVICE_POLICY_STATE__PASSWORD_COMPLEXITY__COMPLEXITY_NONE:I = 0x1

.field public static final DEVICE_POLICY_STATE__PASSWORD_COMPLEXITY__COMPLEXITY_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildStatsEvent(II)Landroid/util/StatsEvent;
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I

    .line 82
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 83
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 84
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    return-object v1
.end method

.method public static buildStatsEvent(III)Landroid/util/StatsEvent;
    .locals 2
    .param p0, "code"    # I
    .param p1, "arg1"    # I
    .param p2, "arg2"    # I

    .line 90
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 91
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 92
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 93
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v1

    return-object v1
.end method
