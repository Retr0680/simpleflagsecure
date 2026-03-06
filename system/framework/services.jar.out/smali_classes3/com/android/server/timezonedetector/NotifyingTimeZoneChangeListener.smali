.class public Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
.super Ljava/lang/Object;
.source "NotifyingTimeZoneChangeListener.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;,
        Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$SignalType;,
        Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeStatus;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_DELETED:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

.field static final AUTO_REVERT_THRESHOLD:J

.field private static final MAX_EVENTS_TO_TRACK:I = 0xa

.field private static final NOTIFICATION_INTENT_EXTRA_CHANGE_ID:Ljava/lang/String; = "change_id"

.field private static final NOTIFICATION_INTENT_EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "TimeZoneDetector"

.field static final SIGNAL_TYPE_HEURISTIC:I = 0x3

.field static final SIGNAL_TYPE_NONE:I = 0x1

.field static final SIGNAL_TYPE_NOTIFICATION:I = 0x2

.field static final SIGNAL_TYPE_UNKNOWN:I = 0x0

.field static final STATUS_ACCEPTED:I = 0x3

.field static final STATUS_REJECTED:I = 0x2

.field static final STATUS_SUPERSEDED:I = 0x4

.field static final STATUS_UNKNOWN:I = 0x0

.field static final STATUS_UNTRACKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeZoneChangeTracker"

.field private static final TZ_CHANGE_NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private mAcceptedLocationChanges:I

.field private mAcceptedManualChanges:I

.field private mAcceptedTelephonyChanges:I

.field private mAcceptedUnknownChanges:I

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field private final mConfigurationLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mEnvironment:Lcom/android/server/timezonedetector/Environment;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRegistered:Z

.field private final mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mRejectedLocationChanges:I

.field private mRejectedTelephonyChanges:I

.field private mRejectedUnknownChanges:I

.field private final mRes:Landroid/content/res/Resources;

.field private final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field private final mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$450zpqDjNp-HS3a6OQROBI1EvAI(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->lambda$scheduleChangeAcceptedHeuristicCallback$0(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOoFxBwY36rVGc24HJInvungJio(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotificationSwipedAway(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->notificationSwipedAway(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 112
    const-wide/16 v0, 0xf

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .param p4, "notificationManager"    # Landroid/app/NotificationManager;
    .param p5, "environment"    # Lcom/android/server/timezonedetector/Environment;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRes:Landroid/content/res/Resources;

    .line 135
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 139
    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    .line 196
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 198
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    new-instance v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 200
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 201
    iput-object p4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 202
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 203
    return-void
.end method

.method private areNotificationsEnabled()Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getNotificationsEnabledBehavior()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private changeAcceptedTimeHeuristicCallback(I)V
    .locals 2
    .param p1, "changeEventId"    # I

    .line 463
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isManualChangeTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 465
    .local v0, "currentUserId":I
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsAccepted(III)V

    .line 467
    .end local v0    # "currentUserId":I
    :cond_0
    return-void
.end method

.method private clearNotificationForUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 470
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 471
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 470
    const-string v2, "TimeZoneDetector"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 472
    return-void
.end method

.method public static create(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;)Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .param p3, "environment"    # Lcom/android/server/timezonedetector/Environment;

    .line 178
    new-instance v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    const-class v1, Landroid/app/NotificationManager;

    .line 182
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/NotificationManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .end local p0    # "handler":Landroid/os/Handler;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "serviceConfigAccessor":Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .end local p3    # "environment":Lcom/android/server/timezonedetector/Environment;
    .local v1, "handler":Landroid/os/Handler;
    .local v2, "context":Landroid/content/Context;
    .local v3, "serviceConfigAccessor":Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .local v5, "environment":Lcom/android/server/timezonedetector/Environment;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Landroid/app/NotificationManager;Lcom/android/server/timezonedetector/Environment;)V

    .line 186
    .local v0, "changeTracker":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;
    invoke-direct {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->handleConfigurationUpdate()V

    .line 188
    return-object v0
.end method

.method private fixPotentialHistoryCorruption(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V
    .locals 14
    .param p1, "changeEvent"    # Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    .line 420
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 422
    .local v0, "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v1

    .line 426
    .local v1, "lastChangeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOldZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getNewZoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 428
    .local v2, "changeEventId":I
    new-instance v3, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    iget-object v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 429
    invoke-interface {v4}, Lcom/android/server/timezonedetector/Environment;->elapsedRealtimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v6}, Lcom/android/server/timezonedetector/Environment;->currentTimeMillis()J

    move-result-wide v6

    .line 430
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getNewZoneId()Ljava/lang/String;

    move-result-object v10

    .line 431
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOldZoneId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "Synthetic"

    const/4 v8, 0x0

    const/16 v9, -0x2710

    invoke-direct/range {v3 .. v13}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;-><init>(JJIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 432
    .local v3, "syntheticChangeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    new-instance v4, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    invoke-direct {v4, v2, v3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;-><init>(ILcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    .line 434
    .local v4, "syntheticTrackedChangeEvent":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 436
    iget-object v7, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v7, v4}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v7

    if-nez v7, :cond_0

    .line 441
    invoke-virtual {v0, v5, v6}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 445
    .end local v1    # "lastChangeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    .end local v2    # "changeEventId":I
    .end local v3    # "syntheticChangeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    .end local v4    # "syntheticTrackedChangeEvent":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    :cond_0
    return-void
.end method

.method private static formatInZone(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 1
    .param p0, "timeFormat"    # Landroid/icu/text/DateFormat;
    .param p1, "timeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "unixEpochTimeMillis"    # J

    .line 548
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 549
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationBody(Landroid/icu/util/TimeZone;J)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "newTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "unixEpochTimeMillis"    # J

    .line 537
    const-string v0, "zzzz"

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 538
    .local v0, "timeFormat":Landroid/icu/text/DateFormat;
    const-string v1, "ZZZZ"

    invoke-static {v1}, Landroid/icu/text/SimpleDateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object v1

    .line 540
    .local v1, "offsetFormat":Landroid/icu/text/DateFormat;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->formatInZone(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "newTime":Ljava/lang/String;
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->formatInZone(Landroid/icu/text/DateFormat;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v3

    .line 543
    .local v3, "newOffset":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRes:Landroid/content/res/Resources;

    const v5, 0x1040a4c

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private handleConfigurationUpdate()V
    .locals 11

    .line 207
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 209
    .local v0, "oldConfigurationInternal":Lcom/android/server/timezonedetector/ConfigurationInternal;
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 211
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isNotificationTrackingSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-nez v2, :cond_1

    .line 213
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v2

    .line 214
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {v7, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 217
    iput-boolean v4, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    .line 218
    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_0

    .line 233
    .end local v0    # "oldConfigurationInternal":Lcom/android/server/timezonedetector/ConfigurationInternal;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 219
    .restart local v0    # "oldConfigurationInternal":Lcom/android/server/timezonedetector/ConfigurationInternal;
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iput-boolean v3, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mIsRegistered:Z

    .line 224
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 225
    nop

    .line 226
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v5

    if-eq v2, v5, :cond_2

    move v3, v4

    .line 228
    .local v3, "userChanged":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_4

    .line 230
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->clearNotificationForUser(I)V

    .line 233
    .end local v0    # "oldConfigurationInternal":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v3    # "userChanged":Z
    :cond_4
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isManualChangeTrackingSupported()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isManualChangeTrackingSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isNotificationTrackingSupported()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isNotificationTrackingSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isUserIdCurrentUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 306
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$scheduleChangeAcceptedHeuristicCallback$0(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V
    .locals 1
    .param p1, "trackedChangeEvent"    # Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 459
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->changeAcceptedTimeHeuristicCallback(I)V

    return-void
.end method

.method private markChangeAsAccepted(III)V
    .locals 3
    .param p1, "changeEventId"    # I
    .param p2, "userId"    # I
    .param p3, "signalType"    # I

    .line 270
    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isUserIdCurrentUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 276
    .local v1, "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    if-eqz v1, :cond_3

    .line 277
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 279
    monitor-exit v0

    return-void

    .line 302
    .end local v1    # "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 281
    .restart local v1    # "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    monitor-exit v0

    return-void

    .line 285
    :cond_2
    invoke-virtual {v1, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setAccepted(I)V

    .line 287
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 298
    iget v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    goto :goto_0

    .line 295
    :pswitch_0
    iget v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    .line 296
    goto :goto_0

    .line 292
    :pswitch_1
    iget v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    .line 293
    goto :goto_0

    .line 289
    :pswitch_2
    iget v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    .line 290
    nop

    .line 302
    .end local v1    # "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private markChangeAsRejected(III)V
    .locals 2
    .param p1, "changeEventId"    # I
    .param p2, "userId"    # I
    .param p3, "signalType"    # I

    .line 321
    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isUserIdCurrentUser(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 326
    .local v0, "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 329
    return-void

    .line 331
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    return-void

    .line 335
    :cond_2
    invoke-virtual {v0, p3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setRejected(I)V

    .line 337
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 345
    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedUnknownChanges:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedUnknownChanges:I

    goto :goto_0

    .line 342
    :pswitch_0
    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedLocationChanges:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedLocationChanges:I

    .line 343
    goto :goto_0

    .line 339
    :pswitch_1
    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedTelephonyChanges:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedTelephonyChanges:I

    .line 340
    nop

    .line 349
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notificationSwipedAway(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "changeEventId"    # I

    .line 238
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isNotificationTrackingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x2

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsAccepted(III)V

    .line 241
    :cond_0
    return-void
.end method

.method private notifyOfTimeZoneChange(ILcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "trackedChangeEvent"    # Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 476
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v0

    .line 478
    .local v0, "changeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    nop

    .line 479
    return-void
.end method

.method private scheduleChangeAcceptedHeuristicCallback(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;J)V
    .locals 2
    .param p1, "trackedChangeEvent"    # Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .param p2, "delayMillis"    # J

    .line 458
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    return-void
.end method

.method private static shouldRejectChangeEvent(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)Z
    .locals 6
    .param p0, "changeEvent"    # Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    .param p1, "lastChangeEvent"    # Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    .line 449
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 451
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getElapsedRealtimeMillis()J

    move-result-wide v2

    .line 452
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 449
    :goto_0
    return v1
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 554
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationsEnabledBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 557
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getNotificationsEnabledBehavior()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationTrackingSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 559
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isNotificationTrackingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualChangeTrackingSupported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 561
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isManualChangeTrackingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedLocationChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedLocationChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedManualChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedManualChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedTelephonyChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedTelephonyChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptedUnknownChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mAcceptedUnknownChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRejectedLocationChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedLocationChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRejectedTelephonyChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedTelephonyChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRejectedUnknownChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mRejectedUnknownChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNextChangeEventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v0, "mTimeZoneChangeRecord:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 575
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v1

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 577
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 579
    return-void

    .line 577
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 562
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method getLastTimeZoneChangeRecord()Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    monitor-exit v0

    return-object v1

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public process(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V
    .locals 8
    .param p1, "changeEvent"    # Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    .line 355
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    monitor-enter v0

    .line 356
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->fixPotentialHistoryCorruption(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    .line 358
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    .line 359
    .local v1, "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    iget-object v2, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mNextChangeEventId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 360
    .local v2, "changeEventId":I
    new-instance v3, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;

    invoke-direct {v3, v2, p1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;-><init>(ILcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    .line 362
    .local v3, "trackedChangeEvent":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->isManualChangeTrackingSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getEvent()Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    move-result-object v4

    .line 369
    .local v4, "lastChangeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    invoke-static {p1, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->shouldRejectChangeEvent(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 370
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getId()I

    move-result v5

    .line 371
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getUserId()I

    move-result v6

    .line 370
    const/4 v7, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->markChangeAsRejected(III)V

    goto :goto_0

    .line 390
    .end local v1    # "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .end local v2    # "changeEventId":I
    .end local v3    # "trackedChangeEvent":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .end local v4    # "lastChangeEvent":Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 377
    .restart local v1    # "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .restart local v2    # "changeEventId":I
    .restart local v3    # "trackedChangeEvent":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    :cond_0
    :goto_0
    sget-wide v4, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->AUTO_REVERT_THRESHOLD:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->scheduleChangeAcceptedHeuristicCallback(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;J)V

    .line 380
    :cond_1
    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 381
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->getStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 382
    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 385
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 386
    invoke-virtual {v3, v4, v4}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;->setStatus(II)V

    .line 389
    :cond_3
    iget-object v5, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mTimeZoneChangeRecord:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v5, v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    nop

    .end local v1    # "lastTimeZoneChangeRecord":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    .end local v2    # "changeEventId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    invoke-direct {p0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->mConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    .line 396
    .local v1, "currentUserId":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;->getOrigin()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 400
    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->clearNotificationForUser(I)V

    goto :goto_1

    .line 402
    :cond_4
    invoke-direct {p0, v1, v3}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->notifyOfTimeZoneChange(ILcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;)V

    goto :goto_1

    .line 396
    .end local v1    # "currentUserId":I
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 405
    :cond_5
    :goto_1
    return-void

    .line 390
    .end local v3    # "trackedChangeEvent":Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$TimeZoneChangeRecord;
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
