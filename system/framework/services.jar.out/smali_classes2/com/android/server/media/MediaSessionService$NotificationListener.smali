.class final Lcom/android/server/media/MediaSessionService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3276
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$NotificationListener;-><init>(Lcom/android/server/media/MediaSessionService;)V

    return-void
.end method

.method private getAnyMediaSessionRecordForNotification(IILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 7
    .param p1, "uid"    # I
    .param p2, "userId"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .line 3357
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetFullUserRecordLocked(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 3359
    .local v1, "userRecord":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3360
    monitor-exit v0

    return-object v2

    .line 3370
    .end local v1    # "userRecord":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3362
    .restart local v1    # "userRecord":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_0
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->-$$Nest$fgetmPriorityStack(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    .line 3363
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/List;

    move-result-object v3

    .line 3364
    .local v3, "allUserSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 3365
    .local v5, "mediaSessionRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 3366
    invoke-virtual {v5, p3}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3367
    monitor-exit v0

    return-object v5

    .line 3369
    .end local v5    # "mediaSessionRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_1
    goto :goto_0

    .line 3370
    .end local v1    # "userRecord":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v3    # "allUserSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    :cond_2
    monitor-exit v0

    .line 3371
    return-object v2

    .line 3370
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserEngagedMediaSessionRecordForNotification(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 3344
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmUserEngagedSessionsForFgs(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 3347
    .local v2, "mediaSessionRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    invoke-virtual {v2, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3348
    monitor-exit v0

    return-object v2

    .line 3351
    .end local v2    # "mediaSessionRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3347
    .restart local v2    # "mediaSessionRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_0
    nop

    .line 3350
    .end local v2    # "mediaSessionRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    goto :goto_0

    .line 3351
    :cond_1
    monitor-exit v0

    .line 3352
    const/4 v0, 0x0

    return-object v0

    .line 3351
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 3279
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 3280
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 3281
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3282
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 3283
    .local v2, "postedNotification":Landroid/app/Notification;
    invoke-virtual {v2}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3284
    return-void

    .line 3286
    :cond_0
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_1

    .line 3288
    return-void

    .line 3290
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3291
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 3292
    .local v4, "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    if-nez v4, :cond_2

    .line 3293
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    .line 3294
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3312
    .end local v4    # "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 3296
    .restart local v4    # "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 3297
    .local v5, "previousSbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v5, :cond_3

    .line 3299
    monitor-exit v3

    return-void

    .line 3301
    :cond_3
    nop

    .line 3302
    invoke-direct {p0, v0, v2}, Lcom/android/server/media/MediaSessionService$NotificationListener;->getUserEngagedMediaSessionRecordForNotification(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v6

    .line 3303
    .local v6, "userEngagedRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    if-eqz v6, :cond_4

    .line 3304
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v6, p1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$msetFgsActiveLocked(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;Landroid/service/notification/StatusBarNotification;)V

    .line 3305
    monitor-exit v3

    return-void

    .line 3307
    :cond_4
    nop

    .line 3308
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/media/MediaSessionService$NotificationListener;->getAnyMediaSessionRecordForNotification(IILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v7

    .line 3309
    .local v7, "notificationRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    if-eqz v7, :cond_5

    .line 3310
    iget-object v8, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v8, v7}, Lcom/android/server/media/MediaSessionService;->-$$Nest$msetFgsInactiveIfNoSessionIsLinkedToNotification(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 3312
    .end local v4    # "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "previousSbn":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "userEngagedRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    .end local v7    # "notificationRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    :cond_5
    monitor-exit v3

    .line 3313
    return-void

    .line 3312
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 3317
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 3318
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3319
    .local v0, "removedNotification":Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 3320
    .local v1, "uid":I
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3321
    return-void

    .line 3323
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3324
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 3325
    .local v3, "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v3, :cond_1

    .line 3326
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3328
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmMediaNotifications(Lcom/android/server/media/MediaSessionService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3339
    .end local v3    # "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 3332
    .restart local v3    # "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    :cond_1
    :goto_0
    nop

    .line 3333
    invoke-direct {p0, v1, v0}, Lcom/android/server/media/MediaSessionService$NotificationListener;->getUserEngagedMediaSessionRecordForNotification(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v4

    .line 3335
    .local v4, "notificationRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    if-nez v4, :cond_2

    .line 3336
    monitor-exit v2

    return-void

    .line 3338
    :cond_2
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->-$$Nest$msetFgsInactiveIfNoSessionIsLinkedToNotification(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 3339
    .end local v3    # "notifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    .end local v4    # "notificationRecord":Lcom/android/server/media/MediaSessionRecordImpl;
    monitor-exit v2

    .line 3340
    return-void

    .line 3339
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
