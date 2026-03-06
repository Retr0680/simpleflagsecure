.class public Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/GroupHelper$NotificationSectioner;,
        Lcom/android/server/notification/GroupHelper$Callback;,
        Lcom/android/server/notification/GroupHelper$NotificationAttributes;,
        Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;,
        Lcom/android/server/notification/GroupHelper$NotificationMoveOp;,
        Lcom/android/server/notification/GroupHelper$CachedSummary;,
        Lcom/android/server/notification/GroupHelper$RegroupingReason;
    }
.end annotation


# static fields
.field protected static final AGGREGATE_GROUP_KEY:Ljava/lang/String; = "Aggregate_"

.field private static final ALL_CHILDREN_FLAG:I = 0x10

.field private static final ANY_CHILDREN_FLAGS:I = 0x22

.field protected static final AUTOGROUP_KEY:Ljava/lang/String; = "ranker_group"

.field protected static final BASE_FLAGS:I = 0x700

.field static final DEBUG:Z

.field protected static final FLAG_INVALID:I = -0x1

.field private static final MIN_CHILD_COUNT_TO_AVOID_FORCE_GROUPING:I = 0x3

.field private static NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ">;"
        }
    .end annotation
.end field

.field private static NOTIFICATION_SHADE_SECTIONS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ">;"
        }
    .end annotation
.end field

.field static final REGROUP_REASON_BUNDLE:I = 0x1

.field static final REGROUP_REASON_CHANNEL_UPDATE:I = 0x0

.field static final REGROUP_REASON_UNBUNDLE:I = 0x2

.field static final REGROUP_REASON_UNBUNDLE_ORIGINAL_GROUP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GroupHelper"


# instance fields
.field private final mAggregatedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAutoGroupAtCount:I

.field private final mAutogroupSparseGroupsAtCount:I

.field private final mCallback:Lcom/android/server/notification/GroupHelper$Callback;

.field private final mCanceledSummaries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Lcom/android/server/notification/GroupHelper$CachedSummary;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsTestHarnessExempted:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUngroupedAbuseNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUngroupedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5GuZJuBrqC7Uv5BlklHQ1ANK7Ww(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->lambda$getNotificationShadeSections$3(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Jb-alKhUHC8ZHo9uONB6z9BQH8c(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->lambda$getNotificationShadeSections$1(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JdYLtF53zID3brZQfa8kkolVAnU(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->lambda$getNotificationShadeSections$2(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$K83IKWLoiP7DqU6rpnWA1TZSGYo(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->lambda$getNotificationShadeSections$7(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NegTJpaY8GjhZifLja121BHRtBU(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->lambda$getNotificationShadeSections$0(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SF_u8Ke9E7EQKKb2n2VmK1AfF4M(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->lambda$getNotificationShadeSections$8(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    .line 150
    invoke-static {}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;IILcom/android/server/notification/GroupHelper$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "autoGroupAtCount"    # I
    .param p4, "autoGroupSparseGroupsAtCount"    # I
    .param p5, "callback"    # Lcom/android/server/notification/GroupHelper$Callback;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    .line 129
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    .line 145
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 206
    iput p3, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 207
    iput-object p5, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 208
    iput-object p1, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 210
    iput p4, p0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    .line 211
    invoke-static {}, Lcom/android/server/notification/GroupHelper;->getNotificationShadeSections()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    .line 212
    return-void
.end method

.method private addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V
    .locals 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "fullAggregateGroupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .param p3, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 867
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 868
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/ArrayMap;

    .line 870
    .local v4, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 871
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v6

    .line 872
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    .line 873
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v8, v1, Landroid/app/Notification;->color:I

    .line 874
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v9, v1, Landroid/app/Notification;->visibility:I

    .line 875
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v10

    .line 876
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 870
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 881
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 882
    .local v5, "hasSummary":Z
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v0, v1, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_2

    .line 883
    :goto_0
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 884
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    const-string v2, "GroupHelper"

    if-lt v0, v1, :cond_2

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found >="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ungrouped notifications => force grouping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 888
    :cond_2
    const-string v0, "Found aggregate summary => force grouping"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v6, p3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    move-object v1, p0

    move-object v2, p2

    .end local p2    # "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .local v2, "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V

    .line 894
    :goto_2
    return-void
.end method

.method private aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V
    .locals 6
    .param p1, "fullAggregateGroupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .param p2, "triggeringNotifKey"    # Ljava/lang/String;
    .param p4, "hasSummary"    # Z
    .param p5, "summaryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;ZI)V"
        }
    .end annotation

    .line 1640
    .local p3, "ungrouped":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1641
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1642
    .local v0, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 1643
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1649
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1650
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v2, v4, v5}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1651
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1654
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    return-void
.end method

.method private cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V
    .locals 8
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1823
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 1824
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1825
    .local v0, "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1826
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 1827
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 1828
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5

    .line 1829
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1830
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper$CachedSummary;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1825
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    return-void
.end method

.method private generatePackageKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;)I"
        }
    .end annotation

    .line 226
    .local p0, "childrenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 227
    .local v0, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 228
    .local v1, "allChildrenHasFlag":Z
    :goto_0
    const/4 v3, 0x0

    .line 229
    .local v3, "anyChildFlagSet":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 230
    .local v5, "childAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget v7, v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    invoke-static {v7, v6}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    const/4 v1, 0x0

    .line 233
    :cond_1
    iget v6, v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    const/16 v7, 0x22

    invoke-static {v6, v7}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    iget v6, v5, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    .line 236
    .end local v5    # "childAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :cond_2
    goto :goto_1

    .line 237
    :cond_3
    if-eqz v1, :cond_4

    move v2, v6

    :cond_4
    or-int/lit16 v2, v2, 0x700

    or-int/2addr v2, v3

    return v2
.end method

.method private getAutogroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationMoveOp;",
            ">;"
        }
    .end annotation

    .line 1316
    .local p3, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v0, "notificationsToMove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/GroupHelper$NotificationMoveOp;>;"
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 1318
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1320
    .local v1, "oldGroups":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1322
    .local v3, "oldFullAggKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-static {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 1323
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    .line 1324
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1325
    .local v4, "notificationsInAggGroup":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    if-nez v4, :cond_0

    .line 1326
    goto :goto_0

    .line 1329
    :cond_0
    const/4 v5, 0x0

    .line 1330
    .local v5, "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1331
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1333
    invoke-virtual {p3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    invoke-static {v8}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v8

    .line 1334
    .local v8, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v8, :cond_1

    .line 1335
    goto :goto_1

    .line 1337
    :cond_1
    new-instance v9, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v9, p1, p2, v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1339
    .end local v5    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .local v9, "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-virtual {v3, v9}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1340
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Change section on channel update: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "GroupHelper"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_2
    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    .line 1344
    invoke-virtual {p3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    const/4 v11, 0x0

    invoke-direct {v5, v10, v3, v9, v11}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    .line 1343
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    invoke-virtual {p3, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    :cond_3
    move-object v5, v9

    .end local v9    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .restart local v5    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :cond_4
    goto :goto_1

    .line 1351
    .end local v3    # "oldFullAggKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v4    # "notificationsInAggGroup":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v5    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :cond_5
    goto/16 :goto_0

    .line 1352
    :cond_6
    return-object v0
.end method

.method static getFullAggregateGroupKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 4
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1541
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1542
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    return-object v0
.end method

.method static getFullAggregateGroupKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1532
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationShadeSections()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "sectionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/GroupHelper$NotificationSectioner;>;"
    nop

    .line 157
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v2, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "PromotionsSection"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v3, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda1;-><init>()V

    const-string v6, "SocialSection"

    invoke-direct {v2, v6, v4, v3, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v3, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v6, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda2;-><init>()V

    const-string v7, "NewsSection"

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v6, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v7, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda3;-><init>()V

    const-string v8, "RecsSection"

    invoke-direct {v6, v8, v4, v7, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-static {v1, v2, v3, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    .line 175
    nop

    .line 196
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v2, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "AlertingSection"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    new-instance v2, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    new-instance v3, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/server/notification/GroupHelper$$ExternalSyntheticLambda5;-><init>()V

    const-string v4, "SilentSection"

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v3, v5}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;-><init>(Ljava/lang/String;ILjava/util/function/Predicate;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 201
    return-object v0
.end method

.method private static getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p0, "groupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)I"
        }
    .end annotation

    .line 1588
    .local p1, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    const/4 v0, 0x0

    .line 1590
    .local v0, "numChildren":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1591
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1592
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1593
    add-int/lit8 v0, v0, 0x1

    .line 1595
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    goto :goto_0

    .line 1597
    :cond_1
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumChildrenForGroup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " numChild: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GroupHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_2
    return v0
.end method

.method private getNumChildrenForGroupWithSection(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)I
    .locals 6
    .param p1, "groupKey"    # Ljava/lang/String;
    .param p3, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ")I"
        }
    .end annotation

    .line 1797
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    const/4 v0, 0x0

    .line 1798
    .local v0, "numChildren":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "GroupHelper"

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1799
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1800
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v4

    .line 1801
    .local v4, "childSection":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-eqz v4, :cond_0

    if-eq v4, p3, :cond_1

    :cond_0
    goto :goto_1

    .line 1809
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1802
    :goto_1
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumChildrenForGroupWithSection skip because invalid section: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " r: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_2
    const/4 v1, -0x1

    return v1

    .line 1812
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "childSection":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    :cond_3
    :goto_2
    goto :goto_0

    .line 1814
    :cond_4
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumChildrenForGroupWithSection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " numChild: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_5
    return v0
.end method

.method private getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1020
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1021
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "recordKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1025
    .local v3, "ungroupedSection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1026
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object v2

    .line 1036
    .end local v1    # "recordKey":Ljava/lang/String;
    .end local v3    # "ungroupedSection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1025
    .restart local v1    # "recordKey":Ljava/lang/String;
    .restart local v3    # "ungroupedSection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;>;"
    :cond_0
    nop

    .line 1028
    .end local v3    # "ungroupedSection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;>;"
    goto :goto_0

    .line 1031
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1032
    .local v3, "aggregatedSection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1033
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    monitor-exit v0

    return-object v2

    .line 1032
    :cond_2
    nop

    .line 1035
    .end local v3    # "aggregatedSection":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;>;"
    goto :goto_1

    .line 1036
    .end local v1    # "recordKey":Ljava/lang/String;
    :cond_3
    monitor-exit v0

    .line 1037
    const/4 v0, 0x0

    return-object v0

    .line 1036
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getReclassifiedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationMoveOp;",
            ">;"
        }
    .end annotation

    .line 1275
    .local p3, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    .local v0, "notificationsToMove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/GroupHelper$NotificationMoveOp;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1277
    .local v2, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2}, Lcom/android/server/notification/GroupHelper;->isChildOfValidAppGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1279
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v3

    .line 1280
    .local v3, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-eqz v3, :cond_1

    sget-object v4, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1281
    new-instance v4, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v4, p1, p2, v3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1283
    .local v4, "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Regroup after classification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GroupHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    new-instance v5, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v4, v6}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    .end local v2    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .end local v4    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :cond_1
    goto :goto_0

    .line 1292
    :cond_2
    return-object v0
.end method

.method static getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .locals 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1937
    sget-object v0, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_SHADE_SECTIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 1938
    .local v1, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    invoke-virtual {v1, p0}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1939
    return-object v1

    .line 1938
    :cond_0
    nop

    .line 1941
    .end local v1    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    goto :goto_0

    .line 1942
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1003
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v0

    .line 1004
    .local v0, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-eqz v0, :cond_0

    .line 1005
    invoke-static {p1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    return-object v1

    .line 1007
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    return-object v1
.end method

.method private getSummaryAttributes(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;)",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;"
        }
    .end annotation

    .line 535
    .local p2, "childrenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-static {p2}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    move-result v1

    .line 536
    .local v1, "flags":I
    nop

    .line 537
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 536
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v7

    .line 538
    .local v7, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    new-instance v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v2, v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v3, v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v4, v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v5, v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    iget-object v6, v7, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v0
.end method

.method private getUngroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationMoveOp;",
            ">;"
        }
    .end annotation

    .line 1358
    .local p3, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    .local v4, "notificationsToMove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/GroupHelper$NotificationMoveOp;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1362
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 1363
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1364
    .local v5, "oldUngroupedSectionKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1366
    .local v7, "oldFullAggKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-static {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v8

    if-ne v1, v8, :cond_6

    .line 1367
    iget-object v8, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    .line 1368
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1369
    .local v8, "ungroupedOld":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    if-nez v8, :cond_0

    .line 1370
    goto :goto_0

    .line 1373
    :cond_0
    const/4 v9, 0x0

    .line 1374
    .local v9, "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    new-instance v10, Ljava/util/HashSet;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1375
    .local v10, "ungroupedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1376
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 1377
    .local v13, "record":Lcom/android/server/notification/NotificationRecord;
    if-eqz v13, :cond_4

    .line 1379
    invoke-static {v13}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v14

    .line 1380
    .local v14, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v14, :cond_1

    .line 1381
    goto :goto_1

    .line 1383
    :cond_1
    new-instance v15, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v15, v1, v2, v14}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1385
    .end local v9    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .local v15, "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-virtual {v7, v15}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1386
    sget-boolean v9, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 1387
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change ungrouped section: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "GroupHelper"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_2
    new-instance v1, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    const/4 v9, 0x0

    invoke-direct {v1, v13, v7, v15, v9}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper-IA;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v14    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    :cond_3
    move-object v9, v15

    .end local v15    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .restart local v9    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :cond_4
    move/from16 v1, p1

    goto :goto_1

    .line 1398
    :cond_5
    iget-object v1, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .end local v7    # "oldFullAggKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v8    # "ungroupedOld":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v9    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v10    # "ungroupedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    move/from16 v1, p1

    goto/16 :goto_0

    .line 1402
    .end local v5    # "oldUngroupedSectionKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;>;"
    :cond_7
    return-object v4
.end method

.method private groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 21
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p4, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .param p5, "fullAggregateGroupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            ")V"
        }
    .end annotation

    .line 1690
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local p3, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/notification/GroupHelper;->getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 1692
    .local v5, "sparseGroupSummaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    iget v7, v0, Lcom/android/server/notification/GroupHelper;->mAutogroupSparseGroupsAtCount:I

    if-lt v6, v7, :cond_b

    .line 1693
    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    const-string v7, "GroupHelper"

    if-eqz v6, :cond_0

    .line 1694
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aggregate sparse groups for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Section: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1694
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_0
    iget-object v6, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1700
    invoke-virtual {v6, v2, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 1702
    .local v6, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    iget-object v8, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 1703
    invoke-virtual {v8, v2, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1704
    .local v8, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    const/4 v10, 0x1

    xor-int/2addr v9, v10

    .line 1705
    .local v9, "hasSummary":Z
    const/4 v11, 0x0

    .line 1706
    .local v11, "triggeringKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v12

    if-nez v12, :cond_1

    .line 1708
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 1710
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 1712
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1714
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1715
    sget-boolean v14, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 1716
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Aggregate notification (sparse group): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_2
    iget-object v14, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v15, v3, v10}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1719
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 1720
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v15

    .line 1721
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v16

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->color:I

    .line 1722
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->visibility:I

    .line 1723
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v19

    .line 1724
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v20

    move/from16 v18, v4

    move/from16 v17, v10

    invoke-direct/range {v14 .. v20}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1719
    invoke-virtual {v8, v3, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    if-nez v11, :cond_3

    .line 1728
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    const/4 v14, 0x1

    .end local v11    # "triggeringKey":Ljava/lang/String;
    .local v3, "triggeringKey":Ljava/lang/String;
    goto/16 :goto_1

    .line 1727
    .end local v3    # "triggeringKey":Ljava/lang/String;
    .restart local v11    # "triggeringKey":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1730
    :cond_4
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1732
    sget-boolean v3, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove app summary (sparse group): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_5
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/notification/GroupHelper$Callback;->removeAppProvidedSummary(Ljava/lang/String;)V

    .line 1736
    invoke-direct {v0, v13}, Lcom/android/server/notification/GroupHelper;->cacheCanceledSummary(Lcom/android/server/notification/NotificationRecord;)V

    const/4 v14, 0x1

    goto :goto_1

    .line 1730
    :cond_6
    const/4 v14, 0x1

    goto :goto_1

    .line 1740
    :cond_7
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1741
    sget-boolean v3, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 1742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aggregate ungrouped (sparse group): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_8
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-interface {v3, v4, v10, v14}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1745
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual {v8, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1740
    :cond_9
    const/4 v14, 0x1

    .line 1748
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v10, v14

    goto/16 :goto_0

    .line 1750
    :cond_a
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget v3, v1, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-direct {v0, v2, v11, v9, v3}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 1756
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    .end local v6    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v8    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v9    # "hasSummary":Z
    .end local v11    # "triggeringKey":Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private static hasAnyFlag(II)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "mask"    # I

    .line 241
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected static isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1546
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isChildOfValidAppGroup(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1557
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1558
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1559
    return v2

    .line 1562
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupChild()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1563
    return v2

    .line 1566
    :cond_1
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v1, :cond_2

    .line 1567
    return v2

    .line 1570
    :cond_2
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v1

    .line 1571
    .local v1, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v1, :cond_4

    .line 1572
    sget-boolean v3, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping autogrouping for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " no valid section found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GroupHelper"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_3
    return v2

    .line 1578
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/android/server/notification/GroupHelper;->isNotificationAggregatedInSection(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1579
    return v2

    .line 1582
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private static isGroupChildBundled(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z
    .locals 4
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    .line 898
    .local p1, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 899
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 902
    return v3

    .line 905
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 906
    return v3

    .line 909
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 910
    .local v2, "summary":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_2

    .line 911
    return v3

    .line 914
    :cond_2
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    return v3
.end method

.method private static isGroupChildWithoutSummary(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z
    .locals 4
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1618
    .local p1, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1619
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 1621
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1622
    return v3

    .line 1625
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1626
    return v3

    .line 1629
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1630
    return v3

    .line 1633
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private static isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z
    .locals 4
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1605
    .local p1, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1606
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v1

    .line 1609
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_0

    .line 1613
    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroup(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 1610
    :goto_0
    return v3
.end method

.method private static isInBundleSection(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 918
    invoke-static {p0}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v0

    .line 919
    .local v0, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/notification/GroupHelper;->NOTIFICATION_BUNDLE_SECTIONS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isNotificationAggregatedInSection(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    .line 1551
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    .line 1553
    .local v0, "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isOriginalGroupSummaryPresent(Lcom/android/server/notification/NotificationRecord;Landroid/util/ArrayMap;)Z
    .locals 4
    .param p0, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1303
    .local p1, "summaryByGroupKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    nop

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getOriginalGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    .line 1304
    invoke-static {v0, v2, v3}, Lcom/android/server/notification/GroupHelper;->getFullAggregateGroupKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "oldGroupKey":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1308
    .local v2, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper;->isAggregatedGroup(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1310
    .end local v0    # "oldGroupKey":Ljava/lang/String;
    .end local v2    # "groupSummary":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    return v1
.end method

.method private static synthetic lambda$getNotificationShadeSections$0(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.promotions"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$1(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.social"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$2(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 165
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.news"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$3(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.recs"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$4(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$5(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 187
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$6(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 191
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$7(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 198
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$getNotificationShadeSections$8(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "groupName"    # Ljava/lang/String;
    .param p5, "sendSummaryDelete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 1837
    .local p4, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1839
    .local v0, "findKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1841
    .local v1, "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    if-eqz v1, :cond_3

    .line 1842
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try removing cached summary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_0
    const/4 v2, 0x0

    .line 1847
    .local v2, "stillHasChildren":Z
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 1848
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1849
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 1850
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1851
    const/4 v2, 0x1

    .line 1852
    goto :goto_1

    .line 1854
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    goto :goto_0

    .line 1855
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1856
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/GroupHelper;->removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V

    .line 1857
    if-eqz p5, :cond_3

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1858
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetdeleteIntent(Lcom/android/server/notification/GroupHelper$CachedSummary;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/android/server/notification/GroupHelper$Callback;->sendAppProvidedSummaryDeleteIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 1862
    .end local v2    # "stillHasChildren":Z
    :cond_3
    return-void
.end method

.method private maybeGroup(Landroid/service/notification/StatusBarNotification;Z)Z
    .locals 24
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "autogroupSummaryExists"    # Z

    .line 308
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 309
    .local v2, "flags":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 310
    .local v3, "notificationsToGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 312
    .local v4, "childrenAttr":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    const/4 v5, 0x0

    .line 313
    .local v5, "sbnToBeAutogrouped":Z
    iget-object v6, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 314
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "packageKey":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 316
    invoke-virtual {v7, v0, v8}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 317
    .local v7, "children":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    new-instance v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->flags:I

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->color:I

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget v12, v12, Landroid/app/Notification;->visibility:I

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x2

    invoke-direct/range {v8 .. v14}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 321
    .local v8, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v9, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    iget v10, v1, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v9, v10, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v11, v2

    goto :goto_1

    .line 325
    :goto_0
    invoke-static {v7}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    move-result v9

    move v2, v9

    .line 326
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v11, v2

    .line 329
    .end local v0    # "packageKey":Ljava/lang/String;
    .end local v2    # "flags":I
    .end local v7    # "children":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v8    # "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .local v11, "flags":I
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 331
    if-eqz p2, :cond_2

    .line 332
    new-instance v10, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v13, v0, Landroid/app/Notification;->color:I

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-direct/range {v10 .. v16}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 336
    .local v10, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    nop

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v10}, Lcom/android/server/notification/GroupHelper;->updateAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v0

    .line 341
    .end local v10    # "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .local v0, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget-object v2, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ranker_group"

    invoke-interface {v2, v6, v7, v8, v0}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    .line 343
    .end local v0    # "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    goto :goto_2

    .line 344
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 345
    .local v0, "summaryIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->color:I

    .line 346
    .local v2, "summaryIconColor":I
    const/4 v6, 0x0

    .line 347
    .local v6, "summaryVisibility":I
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v7

    .line 348
    .local v7, "summaryChannelId":Ljava/lang/String;
    nop

    .line 350
    nop

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 350
    invoke-virtual {v1, v8, v4}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v8

    .line 352
    .local v8, "iconAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget-object v12, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 353
    .end local v0    # "summaryIcon":Landroid/graphics/drawable/Icon;
    .local v12, "summaryIcon":Landroid/graphics/drawable/Icon;
    iget v13, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 354
    .end local v2    # "summaryIconColor":I
    .local v13, "summaryIconColor":I
    iget v14, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    .line 355
    .end local v6    # "summaryVisibility":I
    .local v14, "summaryVisibility":I
    iget-object v0, v8, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 358
    .end local v7    # "summaryChannelId":Ljava/lang/String;
    .end local v8    # "iconAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .local v0, "summaryChannelId":Ljava/lang/String;
    new-instance v10, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    const/4 v15, 0x2

    move-object/from16 v16, v0

    .end local v0    # "summaryChannelId":Ljava/lang/String;
    .local v16, "summaryChannelId":Ljava/lang/String;
    invoke-direct/range {v10 .. v16}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    move-object/from16 v23, v10

    .line 361
    .local v23, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget-object v0, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "ranker_group"

    const v22, 0x7fffffff

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v23}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    .line 364
    .end local v12    # "summaryIcon":Landroid/graphics/drawable/Icon;
    .end local v13    # "summaryIconColor":I
    .end local v14    # "summaryVisibility":I
    .end local v16    # "summaryChannelId":Ljava/lang/String;
    .end local v23    # "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    .local v2, "keyToGroup":Ljava/lang/String;
    nop

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 368
    const/4 v5, 0x1

    goto :goto_4

    .line 370
    :cond_3
    iget-object v6, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    const-string/jumbo v7, "ranker_group"

    const/4 v8, 0x1

    invoke-interface {v6, v2, v7, v8}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    .end local v2    # "keyToGroup":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .line 377
    :cond_4
    return v5

    .line 329
    :catchall_0
    move-exception v0

    move v2, v11

    goto :goto_5

    .end local v11    # "flags":I
    .local v2, "flags":I
    :catchall_1
    move-exception v0

    :goto_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z
    .locals 19
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "autogroupSummaryExists"    # Z

    .line 587
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 588
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    const/4 v5, 0x0

    .line 589
    .local v5, "sbnToBeAutogrouped":Z
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    .line 590
    .local v6, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    const/4 v0, 0x0

    if-nez v6, :cond_1

    .line 591
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnNonGroupableUpdate(Lcom/android/server/notification/NotificationRecord;)V

    .line 592
    sget-boolean v7, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 593
    const-string v7, "GroupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping autogrouping for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " no valid section found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    return v0

    .line 598
    :cond_1
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 599
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v8, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 600
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    invoke-direct {v8, v9, v7, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 603
    .local v8, "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v9

    .line 604
    .local v9, "prevSectionKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    if-eqz v9, :cond_3

    invoke-virtual {v8, v9}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 605
    sget-boolean v10, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 606
    const-string v10, "GroupHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Section changed for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    invoke-direct {v1, v2, v9}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnSectionChanged(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 612
    :cond_3
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 613
    return v0

    .line 615
    :cond_4
    iget-object v10, v1, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 616
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 617
    invoke-virtual {v0, v8, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 618
    .local v0, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 619
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v13

    .line 620
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v14

    .line 621
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v15, v15, Landroid/app/Notification;->color:I

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->visibility:I

    .line 623
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v17

    .line 624
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v18

    move/from16 v16, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 618
    invoke-virtual {v0, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v2, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    iget v11, v1, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v2, v11, :cond_5

    if-eqz v3, :cond_a

    .line 629
    :cond_5
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 630
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    iget v11, v1, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-lt v2, v11, :cond_6

    .line 631
    const-string v2, "GroupHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found >="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " ungrouped notifications => force grouping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    .end local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 635
    .restart local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_6
    const-string v2, "GroupHelper"

    const-string v11, "Found aggregate summary => force grouping"

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_7
    :goto_0
    iget-object v2, v1, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 640
    invoke-virtual {v2, v8, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 641
    .local v2, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 642
    iget-object v11, v1, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    iget v12, v6, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-direct {v1, v8, v11, v3, v12}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 649
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 650
    .local v12, "keyToGroup":Ljava/lang/String;
    nop

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 653
    const/4 v5, 0x1

    goto :goto_2

    .line 655
    :cond_8
    iget-object v13, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v12, v14, v15}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 661
    .end local v12    # "keyToGroup":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 664
    :cond_9
    iget-object v11, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    .end local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v2    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_a
    monitor-exit v10

    .line 668
    return v5

    .line 666
    :goto_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    .locals 16
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "notificationGone"    # Z
    .param p3, "userId"    # I

    .line 390
    move-object/from16 v1, p0

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 391
    .local v3, "removeSummary":Z
    const/4 v4, -0x1

    .line 392
    .local v4, "summaryFlags":I
    const/4 v5, 0x0

    .line 393
    .local v5, "updateSummaryFlags":Z
    const/4 v6, 0x0

    .line 394
    .local v6, "removeAutogroupOverlay":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 395
    .local v7, "childrenAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    iget-object v8, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 396
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "key":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Landroid/util/ArrayMap;

    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 398
    invoke-virtual {v9, v0, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 399
    .local v9, "children":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 400
    monitor-exit v8

    return-void

    .line 426
    .end local v0    # "key":Ljava/lang/String;
    .end local v9    # "children":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 404
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v9    # "children":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget v10, v10, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    .line 409
    .local v10, "flags":I
    const/16 v11, 0x22

    invoke-static {v10, v11}, Lcom/android/server/notification/GroupHelper;->hasAnyFlag(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 410
    const/4 v5, 0x1

    .line 411
    invoke-static {v9}, Lcom/android/server/notification/GroupHelper;->getAutogroupSummaryFlags(Landroid/util/ArrayMap;)I

    move-result v11

    move v4, v11

    .line 415
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 416
    const/4 v6, 0x1

    .line 420
    :cond_2
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 421
    const/4 v3, 0x1

    move v10, v4

    goto :goto_0

    .line 423
    :cond_3
    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v4

    goto :goto_0

    .line 404
    .end local v10    # "flags":I
    :cond_4
    move v10, v4

    .line 426
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "summaryFlags":I
    .end local v9    # "children":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .local v10, "summaryFlags":I
    :goto_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    if-eqz v3, :cond_5

    .line 429
    iget-object v0, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "ranker_group"

    invoke-interface {v0, v2, v4, v8}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_5
    new-instance v9, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v12, v0, Landroid/app/Notification;->color:I

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-direct/range {v9 .. v15}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 435
    .local v9, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    const/4 v0, 0x0

    .line 436
    .local v0, "attributesUpdated":Z
    nop

    .line 437
    nop

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {v1, v4, v7, v9}, Lcom/android/server/notification/GroupHelper;->updateAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v4

    .line 439
    .local v4, "newAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    invoke-virtual {v4, v9}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 440
    const/4 v0, 0x1

    .line 441
    move-object v9, v4

    .line 445
    .end local v4    # "newAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :cond_6
    if-nez v5, :cond_7

    if-eqz v0, :cond_8

    .line 446
    :cond_7
    iget-object v4, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "ranker_group"

    invoke-interface {v4, v2, v8, v11, v9}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    .line 449
    .end local v0    # "attributesUpdated":Z
    .end local v9    # "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :cond_8
    :goto_1
    if-eqz v6, :cond_9

    .line 450
    iget-object v0, v1, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 452
    :cond_9
    return-void

    .line 426
    :catchall_1
    move-exception v0

    move v4, v10

    .end local v10    # "summaryFlags":I
    .local v4, "summaryFlags":I
    :goto_2
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 695
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper;->getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    .line 698
    .local v0, "currentSectionKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v1

    .line 699
    .local v1, "prevSectionKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 700
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section changed for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GroupHelper"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    move-object v0, v1

    .line 706
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 707
    return-void
.end method

.method private maybeUngroupOnNonGroupableUpdate(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper;->getPreviousValidSectionKey(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 677
    return-void
.end method

.method private maybeUngroupOnSectionChanged(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "prevSectionKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 685
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V

    .line 686
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 689
    :cond_0
    return-void
.end method

.method private maybeUngroupWithSections(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "fullAggregateGroupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 724
    if-nez p2, :cond_1

    .line 725
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "GroupHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping maybeUngroupWithSections for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no valid section found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 734
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    .line 736
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 739
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 740
    invoke-virtual {v4, p2, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 741
    .local v4, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 745
    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 747
    .local v5, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 748
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 752
    const-string v6, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maybeUngroup removeAutoGroup: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    .end local v4    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v5    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 755
    .restart local v4    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .restart local v5    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 758
    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 759
    const-string v6, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aggregate group is empty: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 762
    invoke-virtual {p2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v7

    .line 761
    invoke-interface {v6, v2, v1, v7}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v6, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 765
    :cond_4
    sget-boolean v6, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 766
    const-string v6, "GroupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aggregate group not empty, updating: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_5
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p2, v6, v7, v8}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 772
    .end local v4    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v5    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_6
    :goto_1
    monitor-exit v3

    .line 773
    return-void

    .line 772
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 21
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationMoveOp;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1412
    .local p3, "notificationsToMove":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/GroupHelper$NotificationMoveOp;>;"
    .local p4, "regroupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v6, v1

    .line 1416
    .local v6, "groupsToUpdate":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v1

    .line 1418
    .local v7, "originalGroupsOfBundledNotifications":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;

    .line 1419
    .local v2, "moveOp":Lcom/android/server/notification/GroupHelper$NotificationMoveOp;
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    .line 1420
    .local v3, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetoldGroup(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v4

    .line 1421
    .local v4, "oldFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$NotificationMoveOp;->-$$Nest$fgetnewGroup(Lcom/android/server/notification/GroupHelper$NotificationMoveOp;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v5

    .line 1423
    .local v5, "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    sget-boolean v8, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 1424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveNotificationToNewSection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " regroupingReason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "GroupHelper"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1423
    :cond_0
    move-object/from16 v9, p4

    .line 1431
    :goto_1
    const/4 v8, 0x1

    if-eqz v4, :cond_2

    .line 1432
    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 1433
    invoke-virtual {v10, v4, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 1435
    .local v10, "oldAggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    iget-object v11, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1441
    new-instance v11, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v11, v4, v3, v8}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v6, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    .end local v10    # "oldAggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_1
    goto :goto_2

    .line 1445
    :cond_2
    nop

    .line 1455
    :goto_2
    if-eqz v5, :cond_3

    .line 1456
    nop

    .line 1463
    iget-object v10, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 1464
    invoke-virtual {v10, v5, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 1466
    .local v10, "newAggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v11

    xor-int/2addr v8, v11

    .line 1467
    .local v8, "hasSummary":Z
    iget-object v11, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 1468
    invoke-virtual {v11, v5, v12}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 1470
    .local v11, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 1471
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v14

    .line 1472
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    .line 1473
    move-object/from16 v20, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    .line 1474
    move/from16 v16, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    .line 1475
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v18

    .line 1476
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v19

    move/from16 v17, v1

    invoke-direct/range {v13 .. v19}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    .line 1470
    invoke-virtual {v11, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    iget-object v1, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1483
    new-instance v1, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-direct {v1, v5, v3, v8}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;-><init>(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/NotificationRecord;Z)V

    invoke-virtual {v6, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1455
    .end local v8    # "hasSummary":Z
    .end local v10    # "newAggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v11    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_3
    move-object/from16 v20, v1

    .line 1488
    .end local v2    # "moveOp":Lcom/android/server/notification/GroupHelper$NotificationMoveOp;
    .end local v3    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "oldFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v5    # "newFullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :cond_4
    :goto_3
    move-object/from16 v1, v20

    goto/16 :goto_0

    .line 1491
    :cond_5
    move-object/from16 v9, p4

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1492
    .local v1, "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1493
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/util/ArrayMap;

    .line 1494
    .local v10, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1495
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/util/ArrayMap;

    .line 1497
    .local v3, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->-$$Nest$fgetrecord(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v11

    .line 1498
    .local v11, "triggeringNotification":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;->-$$Nest$fgethasSummary(Lcom/android/server/notification/GroupHelper$1GroupUpdateOp;)Z

    move-result v4

    .line 1500
    .local v4, "hasSummary":Z
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    iget v5, v0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v2, v5, :cond_8

    if-eqz v4, :cond_6

    .line 1501
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_5

    .line 1510
    :cond_6
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    .line 1511
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v12, p1

    move-object/from16 v13, p2

    invoke-interface {v2, v12, v13, v5}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1510
    :cond_7
    move/from16 v12, p1

    move-object/from16 v13, p2

    goto :goto_6

    .line 1500
    :cond_8
    move/from16 v12, p1

    move-object/from16 v13, p2

    .line 1502
    :goto_5
    invoke-static {v11}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v14

    .line 1503
    .local v14, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v14, :cond_9

    .line 1504
    goto :goto_4

    .line 1506
    :cond_9
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    iget v5, v14, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->mSummaryId:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/GroupHelper;->aggregateUngroupedNotifications(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;Ljava/util/Map;ZI)V

    .line 1508
    .end local v14    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    nop

    .line 1515
    .end local v1    # "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v3    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v4    # "hasSummary":Z
    .end local v10    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v11    # "triggeringNotification":Lcom/android/server/notification/NotificationRecord;
    :goto_6
    move-object/from16 v0, p0

    goto/16 :goto_4

    .line 1517
    :cond_a
    move/from16 v12, p1

    move-object/from16 v13, p2

    .line 1528
    return-void
.end method

.method private regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1248
    .local p3, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local p4, "regroupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v0, "notificationsToMove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/GroupHelper$NotificationMoveOp;>;"
    nop

    .line 1253
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getAutogroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v1

    .line 1252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1258
    nop

    .line 1259
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/GroupHelper;->getUngroupedNotificationsMoveOps(ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v1

    .line 1258
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1262
    nop

    .line 1268
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/server/notification/GroupHelper;->moveNotificationsToNewSection(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 1271
    :cond_0
    return-void
.end method

.method private removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "summary"    # Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1894
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-static {p3}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1896
    .local v0, "key":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    return-void
.end method

.method private updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V
    .locals 16
    .param p1, "fullAggregateGroupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .param p2, "triggeringNotifKey"    # Ljava/lang/String;
    .param p3, "hasSummary"    # Z
    .param p4, "summaryId"    # I

    .line 1660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1661
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 1662
    .local v2, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/android/server/notification/GroupHelper;->getSummaryAttributes(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v3

    .line 1664
    .local v3, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    if-eqz p3, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    move-object/from16 v8, p2

    goto :goto_0

    .line 1665
    :cond_0
    move-object/from16 v8, p2

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v4, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    :goto_0
    move-object v15, v4

    .line 1666
    .local v15, "channelId":Ljava/lang/String;
    new-instance v11, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget v10, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    move-object v9, v11

    iget-object v11, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    iget v12, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    iget v13, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v14, v3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-direct/range {v9 .. v15}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    move-object v11, v9

    .line 1669
    .local v11, "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    const-string v4, "GroupHelper"

    if-nez p3, :cond_2

    .line 1670
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1671
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create aggregate summary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_1
    iget-object v5, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v6

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v7

    .line 1674
    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1673
    move/from16 v10, p4

    invoke-interface/range {v5 .. v11}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    goto :goto_1

    .line 1676
    :cond_2
    sget-boolean v5, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update aggregate summary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_3
    iget-object v4, v0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v5

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v6

    .line 1680
    invoke-virtual {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1679
    invoke-interface {v4, v5, v6, v7, v11}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V

    .line 1682
    :goto_1
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1963
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1964
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Ungrouped notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1966
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1967
    .local v2, "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1968
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1969
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1970
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1971
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1970
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1972
    .local v4, "notifKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    .end local v4    # "notifKey":Ljava/lang/String;
    goto :goto_1

    .line 2001
    .end local v2    # "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 1975
    :cond_0
    goto :goto_0

    .line 1976
    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Autogrouped notifications:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1982
    .restart local v2    # "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 1983
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1985
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1986
    .restart local v4    # "notifKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1987
    .end local v4    # "notifKey":Ljava/lang/String;
    goto :goto_3

    .line 1989
    .end local v2    # "groupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    :cond_3
    goto :goto_2

    .line 1990
    :cond_4
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    :cond_5
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Cached canceled summaries:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1995
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1996
    .local v2, "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    .end local v2    # "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    goto :goto_4

    .line 1999
    :cond_6
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    :cond_7
    monitor-exit v0

    .line 2002
    return-void

    .line 2001
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .line 1867
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1868
    .local v1, "key":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v2

    if-ne p4, v2, :cond_0

    .line 1869
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1870
    .local v2, "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I

    move-result v3

    if-ne v3, p3, :cond_0

    invoke-static {v2}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1871
    return-object v2

    .line 1874
    .end local v1    # "key":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v2    # "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    :cond_0
    goto :goto_0

    .line 1875
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "groupName"    # Ljava/lang/String;

    .line 1882
    new-instance v0, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    invoke-direct {v0, p4, p1, p5}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1884
    .local v0, "findKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCanceledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/GroupHelper$CachedSummary;

    .line 1885
    .local v1, "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetid(Lcom/android/server/notification/GroupHelper$CachedSummary;)I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgettag(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1886
    return-object v1

    .line 1888
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;)",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;"
        }
    .end annotation

    .line 456
    .local p2, "childrenAttr":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    const/4 v0, 0x0

    .line 457
    .local v0, "newIcon":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x1

    .line 458
    .local v1, "childrenHaveSameIcon":Z
    const/4 v2, 0x1

    .line 459
    .local v2, "newColor":I
    const/4 v3, 0x1

    .line 460
    .local v3, "childrenHaveSameColor":Z
    const/4 v4, 0x0

    .line 466
    .local v4, "newVisibility":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v10, v4

    .end local v4    # "newVisibility":I
    .local v10, "newVisibility":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 468
    .local v4, "state":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    if-nez v0, :cond_0

    .line 469
    iget-object v0, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    goto :goto_1

    .line 471
    :cond_0
    iget-object v7, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 472
    const/4 v1, 0x0

    .line 476
    :cond_1
    :goto_1
    if-ne v2, v6, :cond_2

    .line 477
    iget v2, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    goto :goto_2

    .line 479
    :cond_2
    iget v7, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    if-eq v2, v7, :cond_3

    .line 480
    const/4 v3, 0x0

    .line 484
    :cond_3
    :goto_2
    iget v7, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    if-ne v7, v6, :cond_4

    .line 485
    const/4 v6, 0x1

    move v10, v6

    .line 487
    .end local v4    # "state":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :cond_4
    goto :goto_0

    .line 488
    :cond_5
    if-nez v1, :cond_6

    .line 489
    invoke-virtual {p0, p1}, Lcom/android/server/notification/GroupHelper;->getMonochromeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v8, v0

    goto :goto_3

    .line 488
    :cond_6
    move-object v8, v0

    .line 491
    .end local v0    # "newIcon":Landroid/graphics/drawable/Icon;
    .local v8, "newIcon":Landroid/graphics/drawable/Icon;
    :goto_3
    if-nez v3, :cond_7

    .line 492
    const/4 v2, 0x0

    move v9, v2

    goto :goto_4

    .line 491
    :cond_7
    move v9, v2

    .line 497
    .end local v2    # "newColor":I
    .local v9, "newColor":I
    :goto_4
    const/4 v0, 0x1

    .line 498
    .local v0, "newGroupAlertBehavior":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 499
    .local v4, "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget v5, v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    if-eq v5, v6, :cond_8

    .line 500
    const/4 v0, 0x2

    .line 501
    move v11, v0

    goto :goto_6

    .line 499
    :cond_8
    nop

    .line 503
    .end local v4    # "attr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    goto :goto_5

    .line 498
    :cond_9
    move v11, v0

    .line 505
    .end local v0    # "newGroupAlertBehavior":I
    .local v11, "newGroupAlertBehavior":I
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget-object v0, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    :goto_7
    move-object v12, v0

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    .line 507
    .local v12, "channelId":Ljava/lang/String;
    :goto_8
    new-instance v6, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    const/4 v7, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v6
.end method

.method getMonochromeAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "monochromeIcon":Landroid/graphics/drawable/Icon;
    const v1, 0x108058e

    .line 554
    .local v1, "fallbackIconResId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 555
    .local v2, "appIcon":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_0

    .line 556
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 557
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 558
    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v3

    .line 559
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v4

    const/high16 v5, -0x40000000    # -2.0f

    mul-float/2addr v4, v5

    .line 557
    const/4 v5, 0x1

    invoke-static {p1, v3, v5, v4}, Landroid/graphics/drawable/Icon;->createWithResourceAdaptiveDrawable(Ljava/lang/String;IZF)Landroid/graphics/drawable/Icon;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 562
    .end local v2    # "appIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 564
    :cond_0
    :goto_0
    goto :goto_2

    .line 562
    :goto_1
    nop

    .line 563
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GroupHelper"

    const-string v4, "Failed to getApplicationIcon() in getMonochromeAppIcon()"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    if-eqz v0, :cond_1

    .line 566
    return-object v0

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mContext:Landroid/content/Context;

    const v3, 0x108058e

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2
.end method

.method protected getSparseGroups(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Landroid/util/ArrayMap;
    .locals 5
    .param p1, "fullAggregateGroupKey"    # Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .param p4, "sectioner"    # Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationSectioner;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 1766
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local p3, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1767
    .local v0, "sparseGroups":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 1768
    .local v2, "summary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v2, :cond_0

    invoke-virtual {p4, v2}, Lcom/android/server/notification/GroupHelper$NotificationSectioner;->isInSection(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1769
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetpkg(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1770
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    invoke-static {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->-$$Nest$fgetuserId(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1771
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1772
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1773
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, p4}, Lcom/android/server/notification/GroupHelper;->getNumChildrenForGroupWithSection(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)I

    move-result v3

    .line 1775
    .local v3, "numChildren":I
    if-lez v3, :cond_0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 1776
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    .end local v2    # "summary":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "numChildren":I
    :cond_0
    goto :goto_0

    .line 1781
    :cond_1
    return-object v0
.end method

.method protected isUpdateForCanceledSummary(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1900
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1901
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1902
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1903
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    .line 1904
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v8

    .line 1902
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object v0

    .line 1905
    .local v0, "cachedSummary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v1

    return v2

    .line 1908
    .end local v0    # "cachedSummary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1907
    :cond_1
    monitor-exit v1

    return v2

    .line 1908
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public maybeCancelGroupChildrenForCanceledSummary(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .param p5, "cancelReason"    # I

    .line 1923
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1924
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/GroupHelper;->findCanceledSummary(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/GroupHelper$CachedSummary;

    move-result-object v1

    .line 1925
    .local v1, "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    if-eqz v1, :cond_1

    .line 1926
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1927
    const-string v2, "GroupHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found cached summary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetkey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1933
    .end local v1    # "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1929
    .restart local v1    # "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-static {v1}, Lcom/android/server/notification/GroupHelper$CachedSummary;->-$$Nest$fgetoriginalGroupKey(Lcom/android/server/notification/GroupHelper$CachedSummary;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p4, p1, v3, p5}, Lcom/android/server/notification/GroupHelper$Callback;->removeNotificationFromCanceledGroup(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1931
    invoke-direct {p0, p1, p4, v1}, Lcom/android/server/notification/GroupHelper;->removeCachedSummary(Ljava/lang/String;ILcom/android/server/notification/GroupHelper$CachedSummary;)V

    .line 1933
    .end local v1    # "summary":Lcom/android/server/notification/GroupHelper$CachedSummary;
    :cond_1
    monitor-exit v0

    .line 1934
    return-void

    .line 1933
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChannelUpdated(ILjava/lang/String;Landroid/app/NotificationChannel;Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 1167
    .local p4, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local p5, "summaryByGroupKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1168
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1169
    .local v1, "regroupingReasonMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1170
    .local v2, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1176
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1177
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1178
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    goto :goto_1

    .line 1199
    .end local v1    # "regroupingReasonMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1192
    .restart local v1    # "regroupingReasonMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 1194
    :cond_0
    :goto_1
    goto :goto_3

    .line 1192
    :goto_2
    nop

    .line 1193
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "GroupHelper"

    const-string/jumbo v7, "onChannelUpdated Exception."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_0

    .line 1198
    :cond_1
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1199
    .end local v1    # "regroupingReasonMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    monitor-exit v0

    .line 1200
    return-void

    .line 1199
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onChannelUpdated(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1212
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1213
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1214
    .local v1, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1216
    .local v2, "regroupReasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1219
    .end local v1    # "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2    # "regroupReasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 1220
    return-void

    .line 1219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onGroupSummaryAdded(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)V
    .locals 8
    .param p1, "summaryRecord"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 1117
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1119
    :try_start_0
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v2

    .line 1120
    .local v2, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v2, :cond_0

    .line 1121
    const-string v3, "GroupHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGroupSummaryAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": no valid section found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    monitor-exit v1

    return-void

    .line 1147
    .end local v2    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1125
    .restart local v2    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    :cond_0
    invoke-static {p1, v2}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->forRecord(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v3

    .line 1127
    .local v3, "aggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 1128
    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1130
    .local v4, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1133
    monitor-exit v1

    return-void

    .line 1139
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 1140
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1141
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1142
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1143
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    goto :goto_0

    .line 1146
    :cond_3
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    nop

    .end local v2    # "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    .end local v3    # "aggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    .end local v4    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    monitor-exit v1

    .line 1148
    return-void

    .line 1147
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onGroupedNotificationRemovedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .param p1, "summaryRecord"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 1055
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local p3, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 1056
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    return-void

    .line 1060
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v0, :cond_1

    .line 1061
    return-void

    .line 1064
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v0, :cond_2

    .line 1065
    return-void

    .line 1068
    :cond_2
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    .line 1069
    .local v6, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v6, :cond_4

    .line 1070
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1071
    const-string v0, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping autogrouping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no valid section found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_3
    return-void

    .line 1077
    :cond_4
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1078
    .local v8, "pkgName":Ljava/lang/String;
    new-instance v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 1079
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    invoke-direct {v7, v0, v8, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1082
    .local v7, "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1083
    return-void

    .line 1086
    :cond_5
    iget-object v9, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 1087
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_7

    .line 1088
    :try_start_1
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1089
    const-string v0, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGroupSummaryWithoutChild "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_2

    .line 1091
    :cond_6
    :goto_0
    invoke-direct {p0, p1, v7, v6}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 1092
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 1096
    :cond_7
    nop

    .line 1098
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local v3, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v4, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local v5, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1102
    goto :goto_1

    .line 1100
    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 1101
    .local p1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string p2, "GroupHelper"

    const-string p3, "Failed to group sparse groups"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v9

    .line 1105
    return-void

    .line 1104
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v3    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local p1, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :catchall_3
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v3    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v4    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v5    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :goto_2
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public onNotificationPosted(Lcom/android/server/notification/NotificationRecord;Z)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "autogroupSummaryExists"    # Z

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "sbnToBeAutogrouped":Z
    nop

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 256
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->maybeGroupWithSections(Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 269
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 259
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper;->maybeUngroupOnAppGrouped(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_0
    nop

    .line 271
    goto :goto_2

    .line 269
    :goto_1
    nop

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GroupHelper"

    const-string v3, "Failure processing new notification"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method protected onNotificationPostedWithDelay(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;)V
    .locals 10
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 794
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local p3, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 795
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    return-void

    .line 799
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v0, :cond_1

    .line 800
    return-void

    .line 803
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    if-eqz v0, :cond_2

    .line 804
    return-void

    .line 807
    :cond_2
    invoke-static {p1}, Lcom/android/server/notification/GroupHelper;->getSection(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$NotificationSectioner;

    move-result-object v6

    .line 808
    .local v6, "sectioner":Lcom/android/server/notification/GroupHelper$NotificationSectioner;
    if-nez v6, :cond_4

    .line 809
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 810
    const-string v0, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping autogrouping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " no valid section found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_3
    return-void

    .line 815
    :cond_4
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 816
    .local v8, "pkgName":Ljava/lang/String;
    new-instance v7, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    .line 817
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    invoke-direct {v7, v0, v8, v6}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;-><init>(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 820
    .local v7, "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 821
    return-void

    .line 824
    :cond_5
    iget-object v9, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 827
    :try_start_0
    invoke-static {p1, p3}, Lcom/android/server/notification/GroupHelper;->isGroupChildWithoutSummary(Lcom/android/server/notification/NotificationRecord;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 828
    invoke-static {p1, p2}, Lcom/android/server/notification/GroupHelper;->isGroupSummaryWithoutChildren(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    .line 839
    :cond_6
    nop

    .line 853
    nop

    .line 855
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local v3, "record":Lcom/android/server/notification/NotificationRecord;
    .local v4, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local v5, "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->groupSparseGroups(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Ljava/util/Map;Lcom/android/server/notification/GroupHelper$NotificationSectioner;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    goto :goto_0

    .line 857
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 858
    .local p1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string p2, "GroupHelper"

    const-string p3, "Failed to group sparse groups"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local p1    # "e":Ljava/lang/Throwable;
    :goto_0
    monitor-exit v9

    .line 862
    return-void

    .line 861
    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .end local v3    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local p1, "record":Lcom/android/server/notification/NotificationRecord;
    .restart local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :catchall_2
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object p1, v0

    .end local p1    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v3    # "record":Lcom/android/server/notification/NotificationRecord;
    .restart local v4    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v5    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    goto :goto_2

    .line 827
    .end local v3    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .restart local p1    # "record":Lcom/android/server/notification/NotificationRecord;
    .restart local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :cond_7
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 829
    .end local p1    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v3    # "record":Lcom/android/server/notification/NotificationRecord;
    .restart local v4    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v5    # "summaryByGroupKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    :goto_1
    sget-boolean p1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz p1, :cond_8

    .line 830
    const-string p1, "GroupHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "isGroupChildWithoutSummary OR isGroupSummaryWithoutChild"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_8
    invoke-direct {p0, v3, v7, v6}, Lcom/android/server/notification/GroupHelper;->addToUngroupedAndMaybeAggregate(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Lcom/android/server/notification/GroupHelper$NotificationSectioner;)V

    .line 834
    monitor-exit v9

    return-void

    .line 861
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 283
    const-string v0, "GroupHelper"

    .line 284
    :try_start_0
    const-string v1, "This overload of onNotificationRemoved() should not be called if notification_force_grouping is enabled!"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "call stack"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/notification/GroupHelper;->onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error processing canceled notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected onNotificationRemoved(Lcom/android/server/notification/NotificationRecord;Ljava/util/List;Z)V
    .locals 11
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "sendingDelete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/NotificationRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;Z)V"
        }
    .end annotation

    .line 942
    .local p2, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 943
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    .line 946
    .local v4, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/notification/GroupHelper;->getSectionGroupKeyWithFallback(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;

    move-result-object v8

    .line 947
    .local v8, "fullAggregateGroupKey":Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;
    if-nez v8, :cond_1

    .line 948
    sget-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 949
    const-string v0, "GroupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping autogroup cleanup for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " no valid section found."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_0
    return-void

    .line 955
    :cond_1
    iget-object v9, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 957
    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 958
    .local v0, "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedAbuseNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 962
    invoke-virtual {v2, v8, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move-object v10, v2

    .line 964
    .local v10, "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_3

    .line 965
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v6, p2

    move v7, p3

    goto/16 :goto_2

    .line 992
    .end local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v10    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :catchall_0
    move-exception v0

    move-object v6, p2

    move v7, p3

    goto/16 :goto_3

    .line 966
    .restart local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .restart local v10    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_5

    .line 970
    :try_start_3
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 971
    const-string v2, "GroupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregate group is empty: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 974
    invoke-virtual {v8}, Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;->toString()Ljava/lang/String;

    move-result-object v5

    .line 973
    invoke-interface {v2, v4, v3, v5}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 977
    :cond_5
    :try_start_4
    sget-boolean v2, Lcom/android/server/notification/GroupHelper;->DEBUG:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_6

    .line 978
    :try_start_5
    const-string v2, "GroupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregate group not empty, updating: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 981
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v8, v2, v5, v6}, Lcom/android/server/notification/GroupHelper;->updateAggregateAppGroup(Lcom/android/server/notification/GroupHelper$FullyQualifiedGroupKey;Ljava/lang/String;ZI)V

    .line 987
    :goto_1
    iget-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-eqz v2, :cond_7

    .line 988
    nop

    .line 989
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 988
    move-object v2, p0

    move-object v6, p2

    move v7, p3

    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "sendingDelete":Z
    .local v6, "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local v7, "sendingDelete":Z
    :try_start_7
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/GroupHelper;->maybeClearCanceledSummariesCache(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Z)V

    goto :goto_2

    .line 992
    .end local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v10    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v6    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v7    # "sendingDelete":Z
    .restart local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local p3    # "sendingDelete":Z
    :catchall_2
    move-exception v0

    move-object v6, p2

    move v7, p3

    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "sendingDelete":Z
    .restart local v6    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v7    # "sendingDelete":Z
    goto :goto_3

    .line 987
    .end local v6    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v7    # "sendingDelete":Z
    .restart local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .restart local v10    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .restart local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local p3    # "sendingDelete":Z
    :cond_7
    move-object v6, p2

    move v7, p3

    .line 992
    .end local v0    # "ungrouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local v10    # "aggregatedNotificationsAttrs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    .end local p2    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local p3    # "sendingDelete":Z
    .restart local v6    # "notificationList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v7    # "sendingDelete":Z
    :goto_2
    monitor-exit v9

    .line 993
    return-void

    .line 992
    :goto_3
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public onNotificationUnbundled(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "originalSummaryExists"    # Z

    .line 1233
    iget-object v0, p0, Lcom/android/server/notification/GroupHelper;->mAggregatedNotifications:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1234
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1235
    .local v1, "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1237
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1238
    if-eqz p2, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    .line 1239
    :cond_0
    const/4 v5, 0x2

    .line 1238
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1237
    invoke-static {v4, v5}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 1236
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/notification/GroupHelper;->regroupNotifications(ILjava/lang/String;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 1240
    .end local v1    # "notificationsToCheck":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    monitor-exit v0

    .line 1241
    return-void

    .line 1240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setTestHarnessExempted(Z)V
    .locals 1
    .param p1, "isExempted"    # Z

    .line 216
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/GroupHelper;->mIsTestHarnessExempted:Z

    .line 217
    return-void
.end method

.method updateAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "oldAttr"    # Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ">;",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;",
            ")",
            "Lcom/android/server/notification/GroupHelper$NotificationAttributes;"
        }
    .end annotation

    .line 514
    .local p2, "childrenAttr":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/GroupHelper$NotificationAttributes;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->getAutobundledSummaryAttributes(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    move-result-object v0

    .line 516
    .local v0, "newAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    iget-object v1, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    .line 517
    .local v1, "newIcon":Landroid/graphics/drawable/Icon;
    iget v2, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    .line 518
    .local v2, "newColor":I
    iget-object v3, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    .line 519
    .local v3, "newChannelId":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    if-nez v4, :cond_0

    .line 520
    iget-object v1, p3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->icon:Landroid/graphics/drawable/Icon;

    move-object v6, v1

    goto :goto_0

    .line 519
    :cond_0
    move-object v6, v1

    .line 522
    .end local v1    # "newIcon":Landroid/graphics/drawable/Icon;
    .local v6, "newIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    iget v1, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 523
    iget v2, p3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->iconColor:I

    move v7, v2

    goto :goto_1

    .line 522
    :cond_1
    move v7, v2

    .line 525
    .end local v2    # "newColor":I
    .local v7, "newColor":I
    :goto_1
    iget-object v1, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 526
    iget-object v3, p3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->channelId:Ljava/lang/String;

    move-object v10, v3

    goto :goto_2

    .line 525
    :cond_2
    move-object v10, v3

    .line 529
    .end local v3    # "newChannelId":Ljava/lang/String;
    .local v10, "newChannelId":Ljava/lang/String;
    :goto_2
    new-instance v4, Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    iget v5, p3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->flags:I

    iget v8, v0, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->visibility:I

    iget v9, p3, Lcom/android/server/notification/GroupHelper$NotificationAttributes;->groupAlertBehavior:I

    invoke-direct/range {v4 .. v10}, Lcom/android/server/notification/GroupHelper$NotificationAttributes;-><init>(ILandroid/graphics/drawable/Icon;IIILjava/lang/String;)V

    return-object v4
.end method
