.class Lcom/android/server/job/JobConcurrencyManager$Injector;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createJobServiceContext(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)Lcom/android/server/job/JobServiceContext;
    .locals 7
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "concurrencyManager"    # Lcom/android/server/job/JobConcurrencyManager;
    .param p3, "notificationCoordinator"    # Lcom/android/server/job/JobNotificationCoordinator;
    .param p4, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p5, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 3009
    new-instance v0, Lcom/android/server/job/JobServiceContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "service":Lcom/android/server/job/JobSchedulerService;
    .end local p2    # "concurrencyManager":Lcom/android/server/job/JobConcurrencyManager;
    .end local p3    # "notificationCoordinator":Lcom/android/server/job/JobNotificationCoordinator;
    .end local p4    # "batteryStats":Lcom/android/internal/app/IBatteryStats;
    .end local p5    # "tracker":Lcom/android/server/job/JobPackageTracker;
    .end local p6    # "looper":Landroid/os/Looper;
    .local v1, "service":Lcom/android/server/job/JobSchedulerService;
    .local v2, "concurrencyManager":Lcom/android/server/job/JobConcurrencyManager;
    .local v3, "notificationCoordinator":Lcom/android/server/job/JobNotificationCoordinator;
    .local v4, "batteryStats":Lcom/android/internal/app/IBatteryStats;
    .local v5, "tracker":Lcom/android/server/job/JobPackageTracker;
    .local v6, "looper":Landroid/os/Looper;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    return-object v0
.end method
