.class public Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakefulnessSessionObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WakefulnessSessionFrameworkStatsLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger$UserActivityEvent;
    }
.end annotation


# static fields
.field private static final USER_ACTIVITY_ACCESSIBILITY:I = 0x3

.field private static final USER_ACTIVITY_ATTENTION:I = 0x4

.field private static final USER_ACTIVITY_BUTTON:I = 0x1

.field private static final USER_ACTIVITY_DEVICE_STATE:I = 0x6

.field private static final USER_ACTIVITY_FACE_DOWN:I = 0x5

.field private static final USER_ACTIVITY_OTHER:I = 0x0

.field private static final USER_ACTIVITY_TOUCH:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertToLogUserActivityEvent(I)I
    .locals 1
    .param p1, "userActivity"    # I

    .line 817
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 833
    return v0

    .line 831
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 829
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 827
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 825
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 823
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 821
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 819
    :pswitch_6
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public logDimEvent(IIIIII)V
    .locals 7
    .param p1, "physicalDisplayPortId"    # I
    .param p2, "policyReason"    # I
    .param p3, "userActivityEvent"    # I
    .param p4, "lastUserActivityEventDurationMs"    # I
    .param p5, "dimDurationMs"    # I
    .param p6, "defaultTimeoutMs"    # I

    .line 769
    invoke-direct {p0, p3}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->convertToLogUserActivityEvent(I)I

    move-result v3

    .line 770
    .local v3, "logUserActivityEvent":I
    const/16 v0, 0x363

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "physicalDisplayPortId":I
    .end local p2    # "policyReason":I
    .end local p4    # "lastUserActivityEventDurationMs":I
    .end local p5    # "dimDurationMs":I
    .end local p6    # "defaultTimeoutMs":I
    .local v1, "physicalDisplayPortId":I
    .local v2, "policyReason":I
    .local v4, "lastUserActivityEventDurationMs":I
    .local v5, "dimDurationMs":I
    .local v6, "defaultTimeoutMs":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIII)V

    .line 778
    return-void
.end method

.method public logSessionEvent(IIJIJI)V
    .locals 12
    .param p1, "powerGroupId"    # I
    .param p2, "interactiveStateOffReason"    # I
    .param p3, "interactiveStateOnDurationMs"    # J
    .param p5, "userActivityEvent"    # I
    .param p6, "lastUserActivityEventDurationMs"    # J
    .param p8, "reducedInteractiveStateOnDurationMs"    # I

    .line 738
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;->convertToLogUserActivityEvent(I)I

    move-result v6

    .line 739
    .local v6, "logUserActivityEvent":I
    const/16 v1, 0x345

    move/from16 v11, p8

    int-to-long v9, v11

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v7, p6

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIJJ)V

    .line 747
    return-void
.end method

.method public logTimeoutOverrideEvent(IIII)V
    .locals 7
    .param p1, "powerGroupId"    # I
    .param p2, "overrideOutcome"    # I
    .param p3, "overrideTimeoutMs"    # I
    .param p4, "defaultTimeoutMs"    # I

    .line 754
    int-to-long v3, p3

    int-to-long v5, p4

    const/16 v0, 0x344

    move v1, p1

    move v2, p2

    .end local p1    # "powerGroupId":I
    .end local p2    # "overrideOutcome":I
    .local v1, "powerGroupId":I
    .local v2, "overrideOutcome":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJJ)V

    .line 760
    return-void
.end method
