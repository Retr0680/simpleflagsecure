.class final Lcom/android/server/om/IdmapDaemon$Connection;
.super Ljava/lang/Object;
.source "IdmapDaemon.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/IdmapDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mIdmap2:Landroid/os/IIdmap2;

.field private mOpened:Z

.field final synthetic this$0:Lcom/android/server/om/IdmapDaemon;


# direct methods
.method public static synthetic $r8$lambda$rOBH-D7dR5i5A5y99m9wut-LaKQ(Lcom/android/server/om/IdmapDaemon$Connection;Landroid/os/IIdmap2;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/om/IdmapDaemon$Connection;->lambda$close$0(Landroid/os/IIdmap2;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/om/IdmapDaemon;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 84
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 85
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V
    .locals 3
    .param p2, "idmap2"    # Landroid/os/IIdmap2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 89
    iput-object p2, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 90
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p1, v2}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmOpenedCount(Lcom/android/server/om/IdmapDaemon;I)V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;Lcom/android/server/om/IdmapDaemon-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/IdmapDaemon-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/om/IdmapDaemon$Connection;-><init>(Lcom/android/server/om/IdmapDaemon;)V

    return-void
.end method

.method private synthetic lambda$close$0(Landroid/os/IIdmap2;)V
    .locals 3
    .param p1, "service"    # Landroid/os/IIdmap2;

    .line 111
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$smstopIdmapServiceLocked()V

    .line 119
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmService(Lcom/android/server/om/IdmapDaemon;Landroid/os/IIdmap2;)V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 115
    :goto_0
    monitor-exit v0

    return-void

    .line 120
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v0}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    if-nez v1, :cond_0

    .line 99
    monitor-exit v0

    return-void

    .line 122
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 102
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mOpened:Z

    .line 103
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmOpenedCount(Lcom/android/server/om/IdmapDaemon;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fputmOpenedCount(Lcom/android/server/om/IdmapDaemon;I)V

    if-eqz v2, :cond_1

    .line 106
    monitor-exit v0

    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v1}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmService(Lcom/android/server/om/IdmapDaemon;)Landroid/os/IIdmap2;

    move-result-object v1

    .line 110
    .local v1, "service":Landroid/os/IIdmap2;
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/server/om/IdmapDaemon$Connection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/IdmapDaemon$Connection;Landroid/os/IIdmap2;)V

    iget-object v4, p0, Lcom/android/server/om/IdmapDaemon$Connection;->this$0:Lcom/android/server/om/IdmapDaemon;

    invoke-static {v4}, Lcom/android/server/om/IdmapDaemon;->-$$Nest$fgetmIdmapToken(Lcom/android/server/om/IdmapDaemon;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 122
    nop

    .end local v1    # "service":Landroid/os/IIdmap2;
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdmap2()Landroid/os/IIdmap2;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    return-object v0
.end method
