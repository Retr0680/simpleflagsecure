.class Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;
.super Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
.source "NotificationAttentionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationAttentionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyAvalanche"
.end annotation


# static fields
.field private static final COMMON_KEY:Ljava/lang/String; = "cross_app_common_key"


# instance fields
.field private final mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

.field private mLastAvalancheTriggerTimestamp:J

.field private mLastNotificationTimestamp:J

.field private final mTimeoutAvalanche:I


# direct methods
.method constructor <init>(IIIIILcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V
    .locals 6
    .param p1, "timeoutPolite"    # I
    .param p2, "timeoutMuted"    # I
    .param p3, "volumePolite"    # I
    .param p4, "volumeMuted"    # I
    .param p5, "timeoutAvalanche"    # I
    .param p6, "appStrategy"    # Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;
    .param p7, "exemptionProvider"    # Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    .line 1584
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    .end local p1    # "timeoutPolite":I
    .end local p2    # "timeoutMuted":I
    .end local p3    # "volumePolite":I
    .end local p4    # "volumeMuted":I
    .end local p7    # "exemptionProvider":Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;
    .local v1, "timeoutPolite":I
    .local v2, "timeoutMuted":I
    .local v3, "volumePolite":I
    .local v4, "volumeMuted":I
    .local v5, "exemptionProvider":Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;-><init>(IIIILcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;)V

    .line 1576
    const-wide/16 p1, 0x0

    iput-wide p1, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastNotificationTimestamp:J

    .line 1579
    iput-wide p1, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    .line 1586
    iput p5, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mTimeoutAvalanche:I

    .line 1587
    iput-object p6, v0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    .line 1589
    sget-boolean p1, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 1590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StrategyAvalanche: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotifAttentionHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_0
    return-void
.end method

.method private isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1762
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExemptedFullVolume(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1763
    return v1

    .line 1767
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isConversationMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1768
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 1769
    return v1

    .line 1772
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 1773
    return v1

    .line 1776
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1777
    return v1

    .line 1780
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isAvalancheExemptedFullVolume(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1742
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    return v1

    .line 1747
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v2, Landroid/app/Notification$CallStyle;

    invoke-virtual {v0, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1748
    return v1

    .line 1752
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 1753
    .local v0, "category":Ljava/lang/String;
    const-string/jumbo v2, "reminder"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-nez v2, :cond_3

    .line 1754
    const-string v2, "event"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1758
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mExemptionProvider:Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;

    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationAttentionHelper$ExemptionProvider;->isExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    return v1

    .line 1755
    :cond_3
    :goto_0
    return v1
.end method

.method private isConversationMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1785
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo v1, "msg"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1786
    return v1

    .line 1788
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1789
    return v1

    .line 1791
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 1792
    .local v0, "shortcut":Landroid/content/pm/ShortcutInfo;
    if-nez v0, :cond_2

    .line 1793
    return v1

    .line 1795
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    nop

    .line 1663
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1667
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cross_app_common_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1680
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1700
    nop

    .line 1702
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J

    move-result-wide v0

    return-wide v0

    .line 1705
    :cond_0
    iget-wide v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastNotificationTimestamp:J

    return-wide v0
.end method

.method getNextState(IJLcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p1, "currState"    # I
    .param p2, "timeSinceLastNotif"    # J
    .param p4, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1626
    invoke-direct {p0, p4}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1627
    const/4 v0, 0x2

    return v0

    .line 1629
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExemptedFullVolume(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1630
    const/4 v0, 0x0

    return v0

    .line 1632
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getNextState(IJ)I

    move-result v0

    return v0
.end method

.method public getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method public getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1645
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1646
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result v0

    return v0

    .line 1648
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->getSoundVolume(Lcom/android/server/notification/NotificationRecord;)F

    move-result v0

    return v0
.end method

.method isActive()Z
    .locals 1

    .line 1733
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    return v0
.end method

.method isAvalancheActive()Z
    .locals 4

    .line 1723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mTimeoutAvalanche:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    .line 1725
    sget-boolean v0, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrategyAvalanche: active "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifAttentionHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mIsActive:Z

    return v0
.end method

.method onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1597
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1601
    .local v0, "timeSinceLastNotif":J
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getChannelKey(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v2

    .line 1602
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getPolitenessState(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 1604
    .local v3, "currState":I
    nop

    .line 1605
    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->getNextState(IJLcom/android/server/notification/NotificationRecord;)I

    move-result v4

    .line 1610
    .local v4, "nextState":I
    sget-boolean v5, Lcom/android/server/notification/NotificationAttentionHelper;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StrategyAvalanche onNotificationPosted time delta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " vol state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotifAttentionHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->mVolumeStates:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    .end local v0    # "timeSinceLastNotif":J
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "currState":I
    .end local v4    # "nextState":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onNotificationPosted(Lcom/android/server/notification/NotificationRecord;)V

    .line 1621
    return-void
.end method

.method public onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 1654
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1655
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->onUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1656
    return-void
.end method

.method setApplyCooldownPerPackage(Z)V
    .locals 1
    .param p1, "applyPerPackage"    # Z

    .line 1718
    invoke-super {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V

    .line 1719
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setApplyCooldownPerPackage(Z)V

    .line 1720
    return-void
.end method

.method public setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "timestampMillis"    # J

    .line 1687
    nop

    .line 1689
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->isAvalancheExempted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    .line 1695
    :cond_0
    iput-wide p2, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastNotificationTimestamp:J

    .line 1696
    iget-object v0, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mAppStrategy:Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationAttentionHelper$PolitenessStrategy;->setLastNotificationUpdateTimeMs(Lcom/android/server/notification/NotificationRecord;J)V

    .line 1697
    return-void
.end method

.method setTriggerTimeMs(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 1737
    iput-wide p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$StrategyAvalanche;->mLastAvalancheTriggerTimestamp:J

    .line 1738
    return-void
.end method
