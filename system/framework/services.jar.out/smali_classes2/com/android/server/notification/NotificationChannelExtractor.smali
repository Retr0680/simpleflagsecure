.class public Lcom/android/server/notification/NotificationChannelExtractor;
.super Ljava/lang/Object;
.source "NotificationChannelExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field static final RESTRICT_AUDIO_ATTRIBUTES:J = 0x13c6c3bbL

.field private static final TAG:Ljava/lang/String; = "ChannelExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;

.field private mContext:Landroid/content/Context;

.field private mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reportAudioAttributesChanged(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 121
    .local v0, "id":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v3, 0x13c6c3bb

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    goto :goto_1

    .line 125
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 122
    :catch_0
    move-exception v2

    nop

    .line 123
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "ChannelExtractor"

    const-string v4, "Unexpected exception while reporting to changecompat"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 127
    :goto_1
    return-void

    .line 125
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    throw v2
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 55
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 64
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    goto/16 :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_2

    .line 71
    return-object v0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    .line 73
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/android/server/notification/RankingConfig;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 77
    .local v1, "updatedChannel":Landroid/app/NotificationChannel;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 79
    nop

    .line 81
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 82
    .local v2, "attributes":Landroid/media/AudioAttributes;
    if-nez v2, :cond_3

    .line 84
    return-object v0

    .line 87
    :cond_3
    const/4 v3, 0x0

    .line 88
    .local v3, "updateAttributes":Z
    nop

    .line 89
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    const-class v5, Landroid/app/Notification$CallStyle;

    invoke-virtual {v4, v5}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 90
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 91
    const/4 v3, 0x1

    .line 93
    :cond_4
    nop

    .line 94
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v5, "alarm"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 95
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 96
    const/4 v3, 0x1

    .line 99
    :cond_5
    nop

    .line 100
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 102
    :cond_6
    const/4 v3, 0x1

    .line 105
    :cond_7
    if-eqz v3, :cond_8

    .line 106
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationChannelExtractor;->reportAudioAttributesChanged(I)V

    .line 107
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object v4

    .line 108
    .local v4, "clone":Landroid/app/NotificationChannel;
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 109
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 110
    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 108
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 111
    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 115
    .end local v2    # "attributes":Landroid/media/AudioAttributes;
    .end local v3    # "updateAttributes":Z
    .end local v4    # "clone":Landroid/app/NotificationChannel;
    :cond_8
    return-object v0

    .line 66
    .end local v1    # "updatedChannel":Landroid/app/NotificationChannel;
    :goto_0
    return-object v0
.end method

.method public setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0
    .param p1, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 60
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 61
    return-void
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 131
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 132
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 137
    return-void
.end method
