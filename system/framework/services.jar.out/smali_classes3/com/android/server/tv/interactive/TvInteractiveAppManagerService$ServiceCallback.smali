.class final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .locals 0
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3747
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;-><init>()V

    .line 3748
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 3749
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    .line 3750
    return-void
.end method


# virtual methods
.method public onStateChanged(III)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "error"    # I

    .line 3754
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3756
    .local v1, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3757
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v0, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    move-result-object v0

    .line 3758
    .local v0, "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->-$$Nest$fgetmIAppServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 3759
    .local v7, "iAppServiceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v6

    .line 3760
    .local v6, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v8, p1

    move v9, p2

    move v10, p3

    .end local p1    # "type":I
    .end local p2    # "state":I
    .end local p3    # "error":I
    .local v8, "type":I
    .local v9, "state":I
    .local v10, "error":I
    :try_start_2
    invoke-static/range {v5 .. v10}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mnotifyStateChangedLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;Ljava/lang/String;III)V

    .line 3761
    .end local v0    # "serviceState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .end local v6    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v7    # "iAppServiceId":Ljava/lang/String;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3763
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3764
    nop

    .line 3765
    return-void

    .line 3761
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v8    # "type":I
    .end local v9    # "state":I
    .end local v10    # "error":I
    .restart local p1    # "type":I
    .restart local p2    # "state":I
    .restart local p3    # "error":I
    :catchall_1
    move-exception v0

    move v8, p1

    move v9, p2

    move v10, p3

    move-object p1, v0

    .end local p1    # "type":I
    .end local p2    # "state":I
    .end local p3    # "error":I
    .restart local v8    # "type":I
    .restart local v9    # "state":I
    .restart local v10    # "error":I
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "identity":J
    .end local v8    # "type":I
    .end local v9    # "state":I
    .end local v10    # "error":I
    .end local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3763
    .restart local v1    # "identity":J
    .restart local v8    # "type":I
    .restart local v9    # "state":I
    .restart local v10    # "error":I
    .restart local p0    # "this":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v8    # "type":I
    .end local v9    # "state":I
    .end local v10    # "error":I
    .restart local p1    # "type":I
    .restart local p2    # "state":I
    .restart local p3    # "error":I
    :catchall_3
    move-exception v0

    move v8, p1

    move v9, p2

    move v10, p3

    move-object p1, v0

    .end local p1    # "type":I
    .end local p2    # "state":I
    .end local p3    # "error":I
    .restart local v8    # "type":I
    .restart local v9    # "state":I
    .restart local v10    # "error":I
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3764
    throw p1
.end method
