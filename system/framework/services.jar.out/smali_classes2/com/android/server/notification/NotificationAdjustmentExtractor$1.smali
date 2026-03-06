.class Lcom/android/server/notification/NotificationAdjustmentExtractor$1;
.super Lcom/android/server/notification/RankingReconsideration;
.source "NotificationAdjustmentExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationAdjustmentExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationAdjustmentExtractor;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationAdjustmentExtractor;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "delay"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 57
    iget-object v0, p0, Lcom/android/server/notification/NotificationAdjustmentExtractor$1;->this$0:Lcom/android/server/notification/NotificationAdjustmentExtractor;

    invoke-static {v0}, Lcom/android/server/notification/NotificationAdjustmentExtractor;->-$$Nest$fgetmGroupHelper(Lcom/android/server/notification/NotificationAdjustmentExtractor;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/GroupHelper;->onChannelUpdated(Lcom/android/server/notification/NotificationRecord;)V

    .line 58
    return-void
.end method

.method public work()V
    .locals 0

    .line 53
    return-void
.end method
