.class public interface abstract Lcom/android/server/notification/NotificationSignalExtractor;
.super Ljava/lang/Object;
.source "NotificationSignalExtractor.java"


# virtual methods
.method public abstract initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end method

.method public abstract process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end method

.method public setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0
    .param p1, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 57
    return-void
.end method

.method public abstract setConfig(Lcom/android/server/notification/RankingConfig;)V
.end method

.method public setGroupHelper(Lcom/android/server/notification/GroupHelper;)V
    .locals 0
    .param p1, "groupHelper"    # Lcom/android/server/notification/GroupHelper;

    .line 62
    return-void
.end method

.method public abstract setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
.end method
