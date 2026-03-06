.class public Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationReported"
.end annotation


# instance fields
.field final age_in_minutes:I

.field final alerting:I

.field final assistant_hash:I

.field final assistant_ranking_score:F

.field final category:Ljava/lang/String;

.field final channel_id_hash:I

.field final event_id:I

.field final fsi_state:I

.field final group_id_hash:I

.field final group_instance_id:I

.field final has_promotable_characteristics:Z

.field final importance:I

.field final importance_asst:I

.field final importance_initial:I

.field final importance_initial_source:I

.field final importance_source:I

.field final instance_id:I

.field final is_foreground_service:Z

.field final is_group_summary:Z

.field final is_locked:Z

.field final is_non_dismissible:Z

.field final is_ongoing:Z

.field final is_promoted_ongoing:Z

.field final notification_id_hash:I

.field final num_people:I

.field final package_name:Ljava/lang/String;

.field final position:I

.field post_duration_millis:J

.field final style:I

.field final timeout_millis:J

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .locals 7
    .param p1, "p"    # Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;
    .param p2, "eventType"    # Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;
    .param p3, "position"    # I
    .param p4, "buzzBeepBlink"    # I
    .param p5, "groupId"    # Lcom/android/internal/logging/InstanceId;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 525
    .local v0, "notification":Landroid/app/Notification;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    .line 526
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    .line 527
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getInstanceId()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    .line 529
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNotificationIdHash()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    .line 530
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getChannelIdHash()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    .line 531
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getGroupIdHash()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    .line 532
    const/4 v1, 0x0

    if-nez p5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    .line 533
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    .line 534
    iget-object v2, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    .line 536
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    .line 537
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    .line 538
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v2}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    .line 539
    iput p4, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    .line 540
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanationCode()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    .line 541
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getInitialImportance()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    .line 542
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getInitialImportanceExplanationCode()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    .line 543
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getAssistantImportance()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    .line 544
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getAssistantHash()I

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    .line 545
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v2

    iput v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    .line 546
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    .line 547
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v2}, Lcom/android/server/notification/NotificationRecordLogger;->isForegroundService(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    .line 548
    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    .line 549
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v2}, Lcom/android/server/notification/NotificationRecordLogger;->isNonDismissible(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    .line 550
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 551
    .local v2, "hasFullScreenIntent":Z
    :goto_1
    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_2

    move v1, v3

    .line 553
    .local v1, "hasFsiRequestedButDeniedFlag":Z
    :cond_2
    invoke-static {v2, v1, p2}, Lcom/android/server/notification/NotificationRecordLogger;->getFsiState(ZZLcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;)I

    move-result v3

    iput v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    .line 555
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->isLocked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    .line 556
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 557
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v5

    .line 556
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/notification/NotificationRecordLogger;->getAgeInMinutes(JJ)I

    move-result v3

    iput v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    .line 558
    invoke-virtual {v0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_promoted_ongoing:Z

    .line 559
    invoke-virtual {v0}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->has_promotable_characteristics:Z

    .line 560
    return-void
.end method
