.class final Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/selinux/SelinuxAuditLogsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecurityPropertyMonitor"
.end annotation


# instance fields
.field private final mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;


# direct methods
.method private constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3
    .param p1, "changedProperties"    # Landroid/provider/DeviceConfig$Properties;

    .line 204
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 206
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "selinux_audit_job_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    nop

    .line 208
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForSdkSandbox()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 212
    .local v2, "enabled":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->cancel()V

    .line 218
    .end local v2    # "enabled":Z
    :cond_3
    :goto_0
    return-void
.end method
