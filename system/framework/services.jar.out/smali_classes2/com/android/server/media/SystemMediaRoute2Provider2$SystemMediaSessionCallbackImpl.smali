.class Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;
.super Ljava/lang/Object;
.source "SystemMediaRoute2Provider2.java"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemMediaSessionCallbackImpl"
.end annotation


# instance fields
.field private final mClientPackageName:Ljava/lang/String;

.field private final mProviderId:Ljava/lang/String;

.field private final mRequestId:J

.field private mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;


# direct methods
.method public static synthetic $r8$lambda$RiFURMZHTPqWUfAAtF9ZRzZvqKQ(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->lambda$onSessionUpdate$0(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$briXX4VJSkP5cSMFhRjqJtdIij8(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;JI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->lambda$onRequestFailed$1(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$wLWyvuDh2eSGULi4izl3P6D9WZU(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->lambda$onSessionReleased$2()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p2, "providerId"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .param p5, "clientPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 626
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mProviderId:Ljava/lang/String;

    .line 628
    iput-wide p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mRequestId:J

    .line 629
    iput-object p5, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mClientPackageName:Ljava/lang/String;

    .line 630
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;JLjava/lang/String;Lcom/android/server/media/SystemMediaRoute2Provider2-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onRequestFailed$1(JI)V
    .locals 4
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->onRequestFailed(JI)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmPendingSessionCreations(Lcom/android/server/media/SystemMediaRoute2Provider2;)Landroid/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 666
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 668
    return-void

    .line 666
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$onSessionReleased$2()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->onSessionReleased()V

    .line 681
    return-void

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private synthetic lambda$onSessionUpdate$0(Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 636
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->onSessionUpdate(Landroid/media/RoutingSessionInfo;)V

    goto :goto_0

    .line 639
    :cond_0
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mProviderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;Landroid/media/RoutingSessionInfo;)V

    .line 642
    .local v0, "systemMediaSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, v1, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mSessionRecord:Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    .line 644
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmSessionOriginalIdToSessionRecord(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$fgetmOriginalId(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmPackageNameToSessionRecord(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mClientPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmPendingSessionCreations(Lcom/android/server/media/SystemMediaRoute2Provider2;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->mRequestId:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 650
    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$fgetmTranslatedSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 651
    .local v2, "translatedSession":Landroid/media/RoutingSessionInfo;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$monSessionOverrideUpdated(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/RoutingSessionInfo;)V

    .line 654
    .end local v0    # "systemMediaSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v2    # "translatedSession":Landroid/media/RoutingSessionInfo;
    :goto_0
    return-void

    .line 651
    .restart local v0    # "systemMediaSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public onRequestFailed(JI)V
    .locals 2
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 659
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 669
    return-void
.end method

.method public onSessionReleased()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    return-void
.end method

.method public onSessionUpdate(Landroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 634
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    return-void
.end method
