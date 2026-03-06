.class Lcom/android/server/notification/NotificationManagerService$2;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerPrivate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2048
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2052
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    monitor-exit v0

    return-object v1

    .line 2054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public timeoutNotification(Ljava/lang/String;)V
    .locals 23
    .param p1, "key"    # Ljava/lang/String;

    .line 2060
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 2061
    .local v2, "foundNotification":Z
    const/4 v3, 0x0

    .line 2062
    .local v3, "uid":I
    const/4 v4, 0x0

    .line 2063
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 2064
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2065
    .local v6, "tag":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2066
    .local v7, "id":I
    const/4 v8, 0x0

    .line 2068
    .local v8, "userId":I
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2069
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v10, p1

    :try_start_1
    invoke-static {v0, v10}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindNotificationByKeyLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 2070
    .local v0, "record":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_0

    .line 2071
    const/4 v2, 0x1

    .line 2072
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v11

    move v3, v11

    .line 2073
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v11

    move v4, v11

    .line 2074
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 2075
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 2076
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    move v7, v11

    .line 2077
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v11

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v20, v8

    goto :goto_0

    .line 2079
    .end local v0    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2070
    .restart local v0    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v20, v8

    .line 2079
    .end local v0    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "uid":I
    .end local v4    # "pid":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "id":I
    .end local v8    # "userId":I
    .local v12, "uid":I
    .local v13, "pid":I
    .local v14, "packageName":Ljava/lang/String;
    .local v15, "tag":Ljava/lang/String;
    .local v16, "id":I
    .local v20, "userId":I
    :goto_0
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2080
    if-eqz v2, :cond_1

    .line 2081
    nop

    .line 2082
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/16 v21, 0x13

    const/16 v22, 0x0

    const/16 v17, 0x0

    const v18, 0x18040

    const/16 v19, 0x1

    invoke-virtual/range {v11 .. v22}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2092
    :cond_1
    return-void

    .line 2079
    :catchall_1
    move-exception v0

    move v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v20

    goto :goto_1

    .end local v12    # "uid":I
    .end local v13    # "pid":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "id":I
    .end local v20    # "userId":I
    .restart local v3    # "uid":I
    .restart local v4    # "pid":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "id":I
    .restart local v8    # "userId":I
    :catchall_2
    move-exception v0

    move-object/from16 v10, p1

    :goto_1
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
