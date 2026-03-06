.class public Lcom/android/server/memory/ZramMaintenance;
.super Landroid/app/job/JobService;
.source "ZramMaintenance.java"


# static fields
.field private static final DEFAULT_FIRST_DELAY_SECONDS:J = 0xe10L

.field private static final DEFAULT_PERIODIC_DELAY_SECONDS:J = 0xe10L

.field private static final DEFAULT_REQUIRE_BATTERY_NOT_LOW:Z = true

.field private static final DEFAULT_REQUIRE_DEVICE_IDLE:Z = true

.field private static final FIRST_DELAY_SECONDS_PROP:Ljava/lang/String; = "zram.maintenance.first_delay_seconds"

.field public static final JOB_ID:I = 0x1660a518

.field public static final KEY_CHECK_STATUS:Ljava/lang/String; = "check_status"

.field private static final PERIODIC_DELAY_SECONDS_PROP:Ljava/lang/String; = "zram.maintenance.periodic_delay_seconds"

.field private static final REQUIRE_BATTERY_NOT_LOW_PROP:Ljava/lang/String; = "zram.maintenance.require_battery_not_low"

.field private static final REQUIRE_DEVICE_IDLE_PROP:Ljava/lang/String; = "zram.maintenance.require_device_idle"

.field private static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "mm."

.field private static final TAG:Ljava/lang/String;

.field private static final sZramMaintenance:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Lcom/android/server/memory/ZramMaintenance;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/memory/ZramMaintenance;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/memory/ZramMaintenance;->sZramMaintenance:Landroid/content/ComponentName;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    const-string/jumbo v1, "mm"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getLongProperty(Ljava/lang/String;J)J
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 164
    const-string/jumbo v2, "mm"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static scheduleZramMaintenance(Landroid/content/Context;Ljava/time/Duration;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "delay"    # Ljava/time/Duration;
    .param p2, "checkStatus"    # Z

    .line 145
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 147
    .local v0, "js":Landroid/app/job/JobScheduler;
    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 149
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "check_status"

    invoke-virtual {v1, v2, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x1660a518

    sget-object v4, Lcom/android/server/memory/ZramMaintenance;->sZramMaintenance:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 151
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 153
    const-string/jumbo v3, "zram.maintenance.require_device_idle"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/memory/ZramMaintenance;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 152
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 156
    const-string/jumbo v3, "zram.maintenance.require_battery_not_low"

    invoke-static {v3, v4}, Lcom/android/server/memory/ZramMaintenance;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 155
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 161
    .end local v1    # "bundle":Landroid/os/PersistableBundle;
    :cond_0
    return-void
.end method

.method public static startJob(Landroid/content/Context;Landroid/app/job/JobParameters;Landroid/os/IMmd;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/app/job/JobParameters;
    .param p2, "mmd"    # Landroid/os/IMmd;

    .line 112
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "check_status"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, "checkStatus":Z
    if-eqz p2, :cond_1

    .line 115
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p2}, Landroid/os/IMmd;->isZramMaintenanceSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "zram maintenance is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 123
    :catch_0
    move-exception v1

    goto :goto_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 122
    invoke-interface {p2}, Landroid/os/IMmd;->doZramMaintenanceAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    goto :goto_2

    .line 123
    :goto_1
    nop

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    const-string v3, "Failed to binder call to mmd"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 127
    :cond_1
    sget-object v1, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    const-string v2, "binder not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_2
    const-string/jumbo v1, "zram.maintenance.periodic_delay_seconds"

    const-wide/16 v2, 0xe10

    invoke-static {v1, v2, v3}, Lcom/android/server/memory/ZramMaintenance;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    .line 131
    .local v1, "delay":Ljava/time/Duration;
    invoke-static {p0, v1, v0}, Lcom/android/server/memory/ZramMaintenance;->scheduleZramMaintenance(Landroid/content/Context;Ljava/time/Duration;Z)V

    .line 132
    return-void
.end method

.method public static startZramMaintenance(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 138
    nop

    .line 139
    const-string/jumbo v0, "zram.maintenance.first_delay_seconds"

    const-wide/16 v1, 0xe10

    invoke-static {v0, v1, v2}, Lcom/android/server/memory/ZramMaintenance;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    .line 138
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    .line 140
    .local v0, "delay":Ljava/time/Duration;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/server/memory/ZramMaintenance;->scheduleZramMaintenance(Landroid/content/Context;Ljava/time/Duration;Z)V

    .line 141
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 80
    new-instance v0, Lcom/android/server/memory/ZramMaintenance$1;

    const-string v1, "ZramMaintenance"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/memory/ZramMaintenance$1;-><init>(Lcom/android/server/memory/ZramMaintenance;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 97
    const/4 v0, 0x0

    return v0
.end method
