.class public Lcom/android/server/notification/NotificationAdjustmentExtractor;
.super Ljava/lang/Object;
.source "NotificationAdjustmentExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AdjustmentExtractor"


# instance fields
.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationAdjustmentExtractor;)Lcom/android/server/notification/GroupHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 35
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 38
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v1, "key_type"

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->hasAdjustment(Ljava/lang/String;)Z

    move-result v1

    .line 44
    .local v1, "hasAdjustedClassification":Z
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    .line 46
    nop

    .line 47
    nop

    .line 49
    iget-object v2, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 50
    new-instance v0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;-><init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;J)V

    return-object v0

    .line 63
    :cond_2
    return-object v0

    .line 40
    .end local v1    # "hasAdjustedClassification":Z
    :goto_0
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 69
    return-void
.end method

.method public setGroupHelper(Lcom/android/server/notification/GroupHelper;)V
    .locals 0
    .param p1, "groupHelper"    # Lcom/android/server/notification/GroupHelper;

    .line 78
    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 79
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 74
    return-void
.end method
