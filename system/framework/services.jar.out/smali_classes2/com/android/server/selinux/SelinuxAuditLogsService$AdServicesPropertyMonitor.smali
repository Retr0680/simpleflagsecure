.class final Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;
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
    name = "AdServicesPropertyMonitor"
.end annotation


# instance fields
.field private final mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;


# direct methods
.method private constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4
    .param p1, "changedProperties"    # Landroid/provider/DeviceConfig$Properties;

    .line 168
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 170
    .local v0, "keyset":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "selinux_audit_cap"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->-$$Nest$sfgetQUOTA_LIMITER()Lcom/android/server/selinux/QuotaLimiter;

    move-result-object v2

    .line 172
    const v3, 0xc350

    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 171
    invoke-virtual {v2, v1}, Lcom/android/server/selinux/QuotaLimiter;->setMaxPermits(I)V

    .line 176
    :cond_0
    const-string/jumbo v1, "selinux_enable_audit_job"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    nop

    .line 178
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForAllDomains()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 181
    .local v2, "enabled":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->cancel()V

    .line 186
    .end local v2    # "enabled":Z
    :cond_4
    :goto_0
    goto :goto_1

    :cond_5
    const-string/jumbo v1, "selinux_audit_job_frequency_hours"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    .line 190
    :goto_1
    return-void
.end method
