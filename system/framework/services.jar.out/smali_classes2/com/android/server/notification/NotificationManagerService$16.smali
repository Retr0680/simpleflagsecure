.class Lcom/android/server/notification/NotificationManagerService$16;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V
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

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$BDn_OcdQo9vwfG5SuRuUE_RdIpc(III)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$16;->lambda$run$0(III)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;IIIILjava/lang/String;J)V
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11418
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustHaveFlags:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$mustNotHaveFlags:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    iput-object p9, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$channelId:Ljava/lang/String;

    iput-wide p10, p0, Lcom/android/server/notification/NotificationManagerService$16;->val$cancellationElapsedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$run$0(III)Z
    .locals 2
    .param p0, "mustHaveFlags"    # I
    .param p1, "mustNotHaveFlags"    # I
    .param p2, "flags"    # I

    .line 11427
    and-int v0, p2, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    .line 11428
    return v1

    .line 11430
    :cond_0
    and-int v0, p2, p1

    if-eqz v0, :cond_1

    .line 11431
    return v1

    .line 11433
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 19

    .line 11421
    move-object/from16 v1, p0

    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$callingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$mustHaveFlags:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$mustNotHaveFlags:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 11425
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 11426
    :try_start_0
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$mustHaveFlags:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$mustNotHaveFlags:I

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v3}, Lcom/android/server/notification/NotificationManagerService$16$$ExternalSyntheticLambda0;-><init>(II)V

    move-object v10, v4

    .line 11435
    .local v10, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$channelId:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    iget-wide v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$cancellationElapsedTimeMs:J

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-wide/from16 v17, v3

    invoke-static/range {v5 .. v18}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11440
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$channelId:Ljava/lang/String;

    iget v12, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$reason:I

    iget-wide v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$cancellationElapsedTimeMs:J

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v17, v3

    invoke-static/range {v5 .. v18}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11445
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$16;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$userId:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$16;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)Z

    .line 11446
    nop

    .end local v10    # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    monitor-exit v2

    .line 11447
    return-void

    .line 11446
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
