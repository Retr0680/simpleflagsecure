.class Lcom/android/server/notification/NotificationManagerService$17;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$cancellationElapsedTimeMs:J

.field final synthetic val$includeCurrentProfiles:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$7xcXDOw4oRqp0sGOkb6DeyNjqYA(III)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$17;->lambda$run$0(III)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11617
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$mustNotHaveFlags:I

    iput-boolean p8, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    iput-wide p9, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$cancellationElapsedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(III)Z
    .locals 2
    .param p0, "mustNotHaveFlags"    # I
    .param p1, "reason"    # I
    .param p2, "flags"    # I

    .line 11627
    move v0, p0

    .line 11628
    .local v0, "flagsToCheck":I
    const/16 v1, 0xb

    if-eq v1, p1, :cond_0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 11630
    :cond_0
    or-int/lit16 v0, v0, 0x1000

    .line 11632
    :cond_1
    and-int v1, p2, v0

    if-eqz v1, :cond_2

    .line 11633
    const/4 v1, 0x0

    return v1

    .line 11635
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 11620
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 11622
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v13, v0

    .line 11623
    .local v13, "listenerName":Ljava/lang/String;
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v13

    .end local v13    # "listenerName":Ljava/lang/String;
    .local v10, "listenerName":Ljava/lang/String;
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 11626
    .end local v10    # "listenerName":Ljava/lang/String;
    .restart local v13    # "listenerName":Ljava/lang/String;
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$mustNotHaveFlags:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v3}, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11638
    .local v8, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-boolean v9, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iget-wide v5, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$cancellationElapsedTimeMs:J

    move-wide v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11642
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-boolean v9, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iget-wide v5, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$cancellationElapsedTimeMs:J

    move-wide v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11646
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)V

    .line 11647
    .end local v8    # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .end local v13    # "listenerName":Ljava/lang/String;
    monitor-exit v2

    .line 11648
    return-void

    .line 11647
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
