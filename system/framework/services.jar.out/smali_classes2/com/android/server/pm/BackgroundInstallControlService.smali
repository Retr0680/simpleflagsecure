.class public Lcom/android/server/pm/BackgroundInstallControlService;
.super Lcom/android/server/SystemService;
.source "BackgroundInstallControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;,
        Lcom/android/server/pm/BackgroundInstallControlService$Injector;,
        Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;,
        Lcom/android/server/pm/BackgroundInstallControlService$BinderService;,
        Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;,
        Lcom/android/server/pm/BackgroundInstallControlService$InstallEventType;
    }
.end annotation


# static fields
.field private static final DISK_DIR_NAME:Ljava/lang/String; = "bic"

.field private static final DISK_FILE_NAME:Ljava/lang/String; = "states"

.field private static final ENFORCE_PERMISSION_ERROR_MSG:Ljava/lang/String; = "User is not permitted to call service: "

.field public static final INSTALL_EVENT_TYPE_INSTALL:I = 0x1

.field public static final INSTALL_EVENT_TYPE_UNINSTALL:I = 0x2

.field public static final INSTALL_EVENT_TYPE_UNKNOWN:I = 0x0

.field private static final MAX_FOREGROUND_TIME_FRAMES_SIZE:I = 0xa

.field private static final MSG_PACKAGE_ADDED:I = 0x1

.field private static final MSG_PACKAGE_REMOVED:I = 0x2

.field private static final MSG_USAGE_EVENT_RECEIVED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackgroundInstallControlService"


# instance fields
.field private mBackgroundInstalledPackages:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

.field private final mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

.field private final mContext:Landroid/content/Context;

.field private final mDiskFile:Ljava/io/File;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field protected final mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method public static synthetic $r8$lambda$Ii6fFjkYscgJbLxp4fiuTNLoT7c(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->lambda$getBackgroundInstalledPackages$1(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hszxYcBNn367LxTqmV-LFsN7dNI(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/BackgroundInstallControlService;->lambda$getLatestInstallSession$2(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r3_D5ZCfbKAc8o--pXGNM2kXs6w(Lcom/android/server/pm/BackgroundInstallControlService;ILandroid/app/usage/UsageEvents$Event;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->lambda$new$0(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackHelper(Lcom/android/server/pm/BackgroundInstallControlService;)Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/BackgroundInstallControlService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 144
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BackgroundInstallControlService$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V

    .line 145
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService$Injector;)V
    .locals 2
    .param p1, "injector"    # Lcom/android/server/pm/BackgroundInstallControlService$Injector;

    .line 149
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 122
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 125
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/BackgroundInstallControlService$1;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 150
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 151
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 152
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getPermissionManager()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 153
    new-instance v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;-><init>(Landroid/os/Looper;Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getDiskFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    .line 155
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    .line 156
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getBackgroundInstallControlCallbackHelper()Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 157
    nop

    .line 158
    invoke-interface {p1}, Lcom/android/server/pm/BackgroundInstallControlService$Injector;->getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v0

    .line 159
    .local v0, "usageStatsManagerInternal":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    invoke-virtual {v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 163
    new-instance v1, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-direct {v1, p0}, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;-><init>(Lcom/android/server/pm/BackgroundInstallControlService;)V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    .line 164
    return-void
.end method

.method private getLatestInstallSession(Ljava/lang/String;I)Ljava/util/Optional;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Optional<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 388
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getHistoricalSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "historicalSessions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda1;-><init>()V

    .line 390
    invoke-static {v2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    .line 389
    return-object v1
.end method

.method private installedByAdb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "initiatingPackageName"    # Ljava/lang/String;

    .line 395
    const-string v0, "debug.gts.transparency.bg-install-apps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "BackgroundInstallControlService"

    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v0, "handlePackageAdd: is GTS tests, skipping ADB check"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    const-string/jumbo v0, "handlePackageAdd: is installed by ADB, skipping"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isInstaller(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 584
    return v1

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v2, "android.permission.INSTALL_PACKAGES"

    const-string v3, "default:0"

    invoke-interface {v0, p1, v2, v3, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$getBackgroundInstalledPackages$1(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "installingUserId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "userId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, ", name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    return-void
.end method

.method private static synthetic lambda$getLatestInstallSession$2(Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 389
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$new$0(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 161
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method private retrieveInstallStartTimestamp(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)J
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 366
    const-string v0, "BackgroundInstallControlService"

    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 369
    .local v1, "installStartTimestamp":J
    nop

    .line 370
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->getLatestInstallSession(Ljava/lang/String;I)Ljava/util/Optional;

    move-result-object v3

    .line 371
    .local v3, "latestInstallSession":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    invoke-virtual {v3}, Ljava/util/Optional;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package\'s historical install session not found, falling back to appInfo.createTimestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .end local v3    # "latestInstallSession":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :catch_0
    move-exception v3

    goto :goto_1

    .line 375
    .restart local v3    # "latestInstallSession":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getCreatedMillis()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v4

    .line 381
    .end local v3    # "latestInstallSession":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    :goto_0
    goto :goto_2

    .line 377
    :goto_1
    nop

    .line 378
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Retrieval of install time from historical session failed, falling back to appInfo.createTimestamp"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-wide v1
.end method

.method private wasForegroundInstallation(Ljava/lang/String;IJ)Z
    .locals 8
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "installTimestamp"    # J

    .line 406
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 407
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 410
    .local v0, "foregroundTimeFrames":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 411
    return v1

    .line 414
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 417
    .local v3, "foregroundTimeFrame":Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;
    iget-wide v4, v3, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    cmp-long v4, v4, p3

    if-lez v4, :cond_1

    .line 418
    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->isDone()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 424
    return v5

    .line 429
    :cond_2
    iget-wide v6, v3, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    cmp-long v4, p3, v6

    if-gtz v4, :cond_3

    .line 430
    return v5

    .line 429
    :cond_3
    nop

    .line 432
    .end local v3    # "foregroundTimeFrame":Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;
    goto :goto_0

    .line 436
    :cond_4
    return v1
.end method


# virtual methods
.method enforceCallerPermissions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    const-string v2, "User is not permitted to call service: android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 9
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 215
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 216
    invoke-static {p1, p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 215
    invoke-virtual {v2, v3, p3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v2

    .line 218
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 219
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "BackgroundInstallControlService"

    if-eqz v3, :cond_1

    .line 220
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Tracked background installed package size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 222
    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 223
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v6}, Landroid/util/SparseSetArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 225
    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    .line 226
    .local v6, "installingUserId":I
    iget-object v7, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda3;

    invoke-direct {v8, v3, v6}, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 224
    .end local v6    # "installingUserId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 224
    .restart local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "i":I
    :cond_0
    nop

    .line 230
    .end local v5    # "i":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tracked background installed package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 234
    .local v3, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/pm/PackageInfo;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 236
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v6, p3, v5}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 237
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_2

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not tracked, removing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 242
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 244
    :cond_4
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return-object v4

    .line 246
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/content/pm/PackageInfo;>;"
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    throw v2
.end method

.method getBackgroundInstalledPackages()Landroid/util/SparseSetArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    return-object v0
.end method

.method getInstallerForegroundTimeFrames()Landroid/util/SparseArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;",
            ">;>;"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method getMockBackgroundInstalledPackages(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .param p1, "propertyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 256
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "mockPackageNames":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v1, "mockPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 260
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 262
    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v6

    .line 261
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 263
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    nop

    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 264
    :catch_0
    move-exception v5

    .line 265
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package\'s PackageInfo not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BackgroundInstallControlService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    nop

    .line 258
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method handlePackageAdd(Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 301
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "BackgroundInstallControlService"

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePackageAdd: checking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    const/4 v0, 0x0

    .line 306
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 308
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    .line 307
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    .line 319
    .local v0, "installInfo":Landroid/content/pm/InstallSourceInfo;
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "installerPackageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .end local v0    # "installInfo":Landroid/content/pm/InstallSourceInfo;
    .local v4, "initiatingPackageName":Ljava/lang/String;
    nop

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    const-string v6, "default:0"

    invoke-interface {v0, v3, v5, v6, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "handlePackageAdd "

    if-eqz v0, :cond_2

    .line 334
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": installer ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") doesn\'t have INSTALL_PACKAGES permission, skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    return-void

    .line 344
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 345
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/BackgroundInstallControlService;->retrieveInstallStartTimestamp(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 347
    .local v6, "installTimestamp":J
    invoke-direct {p0, v4}, Lcom/android/server/pm/BackgroundInstallControlService;->installedByAdb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    invoke-direct {p0, v3, p2, v6, v7}, Lcom/android/server/pm/BackgroundInstallControlService;->wasForegroundInstallation(Ljava/lang/String;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 356
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handlePackageAdd: adding "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and notifying callbacks"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->notifyAllCallbacks(ILjava/lang/String;I)V

    .line 361
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    .line 362
    return-void

    .line 349
    :cond_4
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": is installed by ADB or was foreground installation, skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_5
    return-void

    .line 321
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    .end local v6    # "installTimestamp":J
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package\'s installer not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 309
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package\'s appInfo not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method handlePackageRemove(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 440
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 441
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->notifyAllCallbacks(ILjava/lang/String;I)V

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePackageRemove: removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundInstallControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 446
    invoke-virtual {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    .line 447
    return-void
.end method

.method handleUsageEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .locals 4
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .line 450
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v2, 0x17

    if-eq v0, v2, :cond_0

    .line 453
    return-void

    .line 456
    :cond_0
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/BackgroundInstallControlService;->isInstaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, p2, v2, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 465
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 467
    .local v0, "foregroundTimeFrames":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;>;"
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->isDone()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 469
    :cond_3
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v2, v1, :cond_4

    .line 470
    return-void

    .line 472
    :cond_4
    new-instance v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_5
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 477
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_6

    .line 478
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 480
    :cond_6
    return-void
.end method

.method initBackgroundInstalledPackages()V
    .locals 12

    .line 517
    const-string v0, "BackgroundInstallControlService"

    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    if-eqz v1, :cond_0

    .line 518
    return-void

    .line 521
    :cond_0
    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 523
    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    return-void

    .line 527
    :cond_1
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 528
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v3, v2}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 531
    .local v3, "protoInputStream":Landroid/util/proto/ProtoInputStream;
    :goto_0
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 532
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 534
    goto :goto_0

    .line 536
    :cond_2
    nop

    .line 537
    const-wide v7, 0x20b00000001L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 538
    .local v7, "token":J
    const/4 v4, 0x0

    .line 539
    .local v4, "packageName":Ljava/lang/String;
    const/16 v9, -0x2710

    .line 540
    .local v9, "userId":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v10

    if-eq v10, v5, :cond_3

    .line 541
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 554
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Undefined field in proto: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 554
    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 528
    .end local v3    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "token":J
    .end local v9    # "userId":I
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 548
    .restart local v3    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v7    # "token":J
    .restart local v9    # "userId":I
    :pswitch_0
    nop

    .line 549
    const-wide v10, 0x10500000002L

    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    .line 552
    goto :goto_1

    .line 543
    :pswitch_1
    nop

    .line 544
    const-wide v10, 0x10900000001L

    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 546
    goto :goto_1

    .line 560
    :cond_3
    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 561
    if-eqz v4, :cond_4

    const/16 v5, -0x2710

    if-eq v9, v5, :cond_4

    .line 562
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v9, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_2

    .line 564
    :cond_4
    const-string v5, "Fails to get packageName or UserId from proto file"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "token":J
    .end local v9    # "userId":I
    :goto_2
    goto :goto_0

    .line 531
    :cond_5
    nop

    .line 567
    .end local v3    # "protoInputStream":Landroid/util/proto/ProtoInputStream;
    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    goto :goto_6

    .line 569
    :cond_6
    :goto_3
    goto :goto_7

    .line 528
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_7

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    nop

    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/server/pm/BackgroundInstallControlService;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 567
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/server/pm/BackgroundInstallControlService;
    :goto_6
    nop

    .line 568
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error reading state from the disk"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;->onStart(Z)V

    .line 597
    return-void
.end method

.method onStart(Z)V
    .locals 2
    .param p1, "isForTesting"    # Z

    .line 601
    if-nez p1, :cond_0

    .line 602
    const-string v0, "background_install_control"

    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBinderService:Lcom/android/server/pm/BackgroundInstallControlService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageObserver:Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 606
    return-void
.end method

.method writeBackgroundInstalledPackagesToDisk()V
    .locals 13

    .line 484
    const-string v0, "BackgroundInstallControlService"

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mDiskFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 487
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    nop

    .line 494
    :try_start_1
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 495
    .local v3, "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 496
    iget-object v5, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v5

    .line 497
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 498
    .local v7, "packageName":Ljava/lang/String;
    nop

    .line 499
    const-wide v8, 0x20b00000001L

    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 501
    .local v8, "token":J
    const-wide v10, 0x10900000001L

    invoke-virtual {v3, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 503
    add-int/lit8 v10, v5, 0x1

    const-wide v11, 0x10500000002L

    invoke-virtual {v3, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 504
    invoke-virtual {v3, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 505
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "token":J
    goto :goto_1

    .line 509
    .end local v3    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .end local v4    # "i":I
    .end local v5    # "userId":I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 497
    .restart local v3    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "userId":I
    :cond_0
    nop

    .line 495
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 507
    .end local v4    # "i":I
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 508
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    .end local v3    # "protoOutputStream":Landroid/util/proto/ProtoOutputStream;
    goto :goto_3

    .line 509
    :goto_2
    nop

    .line 510
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed to finish write to states protobuf."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 513
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 488
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 489
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Failed to start write to states protobuf."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    return-void
.end method
