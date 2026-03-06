.class Lcom/android/server/notification/NotificationManagerService$11;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/GroupHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$OX5ioLFuOBbDLaaVANlyLDNqkuA(III)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$11;->lambda$removeNotificationFromCanceledGroup$0(III)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_K091Ww5X4_ngsPxFGjkEBBzLoY(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smwasChildOfForceRegroupedGroupChecker(Lcom/android/server/notification/NotificationRecord;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

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

    .line 3205
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$removeNotificationFromCanceledGroup$0(III)Z
    .locals 3
    .param p0, "cancelReason"    # I
    .param p1, "mustNotHaveFlags"    # I
    .param p2, "flags"    # I

    .line 3282
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_0

    if-eq p0, v2, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 3285
    :cond_0
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_1

    .line 3286
    return v1

    .line 3289
    :cond_1
    and-int v0, p2, p1

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method public addAutoGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "requestSort"    # Z

    .line 3208
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3209
    nop

    .line 3210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->convertSummaryToNotificationLocked(Ljava/lang/String;)Z

    .line 3211
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->addAutogroupKeyLocked(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3215
    monitor-exit v0

    .line 3216
    return-void

    .line 3215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;
    .param p4, "groupName"    # Ljava/lang/String;
    .param p5, "summaryId"    # I
    .param p6, "summaryAttr"    # Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 3228
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .end local p1    # "userId":I
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "triggeringKey":Ljava/lang/String;
    .end local p4    # "groupName":Ljava/lang/String;
    .end local p5    # "summaryId":I
    .end local p6    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .local v1, "userId":I
    .local v2, "pkg":Ljava/lang/String;
    .local v3, "triggeringKey":Ljava/lang/String;
    .local v4, "groupName":Ljava/lang/String;
    .local v5, "summaryId":I
    .local v6, "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/notification/GroupHelper$NotificationAttributes;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p1

    .line 3230
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "triggeringKey":Ljava/lang/String;
    .end local v4    # "groupName":Ljava/lang/String;
    .end local v5    # "summaryId":I
    .end local v6    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .local p1, "r":Lcom/android/server/notification/NotificationRecord;
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p3    # "triggeringKey":Ljava/lang/String;
    .restart local p4    # "groupName":Ljava/lang/String;
    .restart local p5    # "summaryId":I
    .restart local p6    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    if-eqz p1, :cond_1

    .line 3231
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    .line 3232
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3233
    .local v5, "isAppForeground":Z
    :goto_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move v3, v1

    .end local v1    # "userId":I
    .local v3, "userId":I
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    move-result-object v4

    .line 3235
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v7

    const/4 v6, 0x0

    move-object v4, p1

    .end local p1    # "r":Lcom/android/server/notification/NotificationRecord;
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 3233
    move-object p1, v1

    move v1, v3

    .end local v3    # "userId":I
    .restart local v1    # "userId":I
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 3230
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "isAppForeground":Z
    .restart local p1    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object v4, p1

    .line 3237
    .end local p1    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    return-void
.end method

.method public removeAppProvidedSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 3259
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAppSummaryLocked(Ljava/lang/String;)V

    .line 3261
    monitor-exit v0

    .line 3262
    return-void

    .line 3261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAppProvidedSummaryOnClassification(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 2
    .param p1, "triggeringKey"    # Ljava/lang/String;
    .param p2, "oldGroupKey"    # Ljava/lang/String;

    .line 3303
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeAppProvidedSummaryOnClassificationLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAutoGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 3220
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->removeAutogroupKeyLocked(Ljava/lang/String;)V

    .line 3222
    monitor-exit v0

    .line 3223
    return-void

    .line 3222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;

    .line 3241
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 3243
    monitor-exit v0

    .line 3244
    return-void

    .line 3243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNotificationFromCanceledGroup(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;
    .param p4, "cancelReason"    # I

    .line 3272
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3274
    nop

    .line 3276
    const v0, 0x18040

    .line 3281
    .local v0, "mustNotHaveFlags":I
    :try_start_0
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v4, p4

    :try_start_1
    invoke-direct {v3, v4, v0}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda0;-><init>(II)V

    move-object v12, v3

    .line 3291
    .local v12, "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 3292
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda1;

    invoke-direct {v13}, Lcom/android/server/notification/NotificationManagerService$11$$ExternalSyntheticLambda1;-><init>()V

    .line 3295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 3291
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v15, 0x8

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v14, p3

    invoke-static/range {v5 .. v17}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelGroupChildrenLocked(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;Lcom/android/server/notification/NotificationManagerService$GroupChildChecker;Ljava/lang/String;IJ)V

    .line 3296
    .end local v0    # "mustNotHaveFlags":I
    .end local v12    # "childrenFlagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    monitor-exit v2

    .line 3297
    return-void

    .line 3296
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v4, p4

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendAppProvidedSummaryDeleteIntent(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "deleteIntent"    # Landroid/app/PendingIntent;

    .line 3266
    invoke-static {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smsendDeleteIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 3267
    return-void
.end method

.method public updateAutogroupSummary(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;
    .param p4, "summaryAttr"    # Lcom/android/server/notification/GroupHelper$NotificationAttributes;

    .line 3249
    nop

    nop

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    .line 3250
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 3251
    .local v6, "isAppForeground":Z
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "userId":I
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "groupKey":Ljava/lang/String;
    .end local p4    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .local v2, "userId":I
    .local v3, "pkg":Ljava/lang/String;
    .local v4, "groupKey":Ljava/lang/String;
    .local v5, "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->updateAutobundledSummaryLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;Z)V

    .line 3254
    monitor-exit v7

    .line 3255
    return-void

    .line 3254
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v2    # "userId":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "groupKey":Ljava/lang/String;
    .end local v5    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .restart local p1    # "userId":I
    .restart local p2    # "pkg":Ljava/lang/String;
    .restart local p3    # "groupKey":Ljava/lang/String;
    .restart local p4    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :catchall_1
    move-exception v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object p1, v0

    .end local p1    # "userId":I
    .end local p2    # "pkg":Ljava/lang/String;
    .end local p3    # "groupKey":Ljava/lang/String;
    .end local p4    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    .restart local v2    # "userId":I
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "groupKey":Ljava/lang/String;
    .restart local v5    # "summaryAttr":Lcom/android/server/notification/GroupHelper$NotificationAttributes;
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
