.class Lcom/android/server/memory/ZramMaintenance$1;
.super Ljava/lang/Thread;
.source "ZramMaintenance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/memory/ZramMaintenance;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/memory/ZramMaintenance;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/android/server/memory/ZramMaintenance;Ljava/lang/String;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/memory/ZramMaintenance;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iput-object p3, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 84
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "mmd"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 85
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/IMmd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMmd;

    move-result-object v2

    .line 86
    .local v2, "mmd":Landroid/os/IMmd;
    iget-object v3, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iget-object v4, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v3, v4, v2}, Lcom/android/server/memory/ZramMaintenance;->startJob(Landroid/content/Context;Landroid/app/job/JobParameters;Landroid/os/IMmd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "mmd":Landroid/os/IMmd;
    iget-object v1, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iget-object v2, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 89
    nop

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/memory/ZramMaintenance$1;->this$0:Lcom/android/server/memory/ZramMaintenance;

    iget-object v3, p0, Lcom/android/server/memory/ZramMaintenance$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v2, v3, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 89
    throw v1
.end method
