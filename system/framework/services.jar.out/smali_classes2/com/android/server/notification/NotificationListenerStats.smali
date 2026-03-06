.class Lcom/android/server/notification/NotificationListenerStats;
.super Ljava/lang/Object;
.source "NotificationListenerStats.java"


# static fields
.field private static final ATT_OWNED_CHANNEL_COUNT:Ljava/lang/String; = "channelCount"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final MAX_CHANNELS:I = 0x1388

.field private static final TAG_NLS:Ljava/lang/String; = "nls"

.field private static final TAG_STATS:Ljava/lang/String; = "nlsStats"


# instance fields
.field private final mChannelsCreated:Landroid/util/SparseIntArray;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxChannelsAllowed:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationListenerStats;-><init>(I)V

    .line 58
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "maxChannelsAllowed"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    .line 62
    iput p1, p0, Lcom/android/server/notification/NotificationListenerStats;->mMaxChannelsAllowed:I

    .line 63
    return-void
.end method

.method static isXmlTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "nlsStats"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NLS with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  created channel count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 128
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 132
    .end local v1    # "i":I
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isAllowedToCreateChannel(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 3
    .param p1, "nls"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 66
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 68
    .local v1, "numCreated":I
    iget v2, p0, Lcom/android/server/notification/NotificationListenerStats;->mMaxChannelsAllowed:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 69
    .end local v1    # "numCreated":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method logCreatedChannels(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 5
    .param p1, "nls"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "increase"    # I

    .line 73
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 75
    .local v1, "prevCreated":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    add-int v4, v1, p2

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    .end local v1    # "prevCreated":I
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onPackageRemoved(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 83
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method readXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    .line 105
    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v3, "nlsStats"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    move v0, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 111
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 112
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    const-string/jumbo v4, "nlsStats"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 115
    :cond_3
    if-ne v0, v1, :cond_2

    .line 116
    const-string/jumbo v4, "nls"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p1, v6, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 118
    .local v4, "uid":I
    const-string v7, "channelCount"

    invoke-interface {p1, v6, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 119
    .local v5, "channelCount":I
    iget-object v6, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    .end local v4    # "uid":I
    .end local v5    # "channelCount":I
    goto :goto_0

    .line 123
    :cond_4
    :goto_1
    monitor-exit v3

    .line 124
    return-void

    .line 123
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    const-string/jumbo v0, "nlsStats"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    iget-object v0, p0, Lcom/android/server/notification/NotificationListenerStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 94
    const-string/jumbo v3, "nls"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string/jumbo v3, "uid"

    iget-object v4, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string v3, "channelCount"

    iget-object v4, p0, Lcom/android/server/notification/NotificationListenerStats;->mChannelsCreated:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string/jumbo v3, "nls"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 93
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 99
    .end local v2    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const-string/jumbo v0, "nlsStats"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    return-void

    .line 99
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
