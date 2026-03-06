.class public Lcom/android/server/locales/LocaleManagerService;
.super Lcom/android/server/SystemService;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;,
        Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final DEBUG:Z = false

.field private static final LOCALE_CONFIGS:Ljava/lang/String; = "locale_configs"

.field private static final PROP_ALLOW_IME_QUERY_APP_LOCALE:Ljava/lang/String; = "i18n.feature.allow_ime_query_app_locale"

.field private static final PROP_DYNAMIC_LOCALES_CHANGE:Ljava/lang/String; = "i18n.feature.dynamic_locales_change"

.field private static final SUFFIX_FILE_NAME:Ljava/lang/String; = ".xml"

.field private static final TAG:Ljava/lang/String; = "LocaleManagerService"


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field private final mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

.field final mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mWriteLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinderService(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 111
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 113
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 114
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 115
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocaleManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 119
    .local v0, "broadcastHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v1, Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-direct {v1, p0}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    .line 123
    .local v1, "systemAppUpdateTracker":Lcom/android/server/locales/SystemAppUpdateTracker;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/locales/LocaleManagerService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/locales/LocaleManagerService$1;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/SystemAppUpdateTracker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 130
    new-instance v2, Lcom/android/server/locales/LocaleManagerBackupHelper;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 132
    new-instance v2, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;

    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {v2, v3, v1, p0}, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/SystemAppUpdateTracker;Lcom/android/server/locales/LocaleManagerService;)V

    iput-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 134
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 137
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Landroid/content/pm/PackageManager;Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/internal/content/PackageMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityTaskManagerInternal"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p3, "activityManagerInternal"    # Landroid/app/ActivityManagerInternal;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "localeManagerBackupHelper"    # Lcom/android/server/locales/LocaleManagerBackupHelper;
    .param p6, "packageMonitor"    # Lcom/android/internal/content/PackageMonitor;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 146
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 147
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 148
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 149
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 150
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 151
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 152
    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 153
    return-void
.end method

.method static createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;
    .locals 2
    .param p0, "intentAction"    # Ljava/lang/String;
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "locales"    # Landroid/os/LocaleList;

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 353
    const-string v1, "android.intent.extra.LOCALE_LIST"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 351
    return-object v0
.end method

.method private enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 3
    .param p1, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v2, "setApplicationLocales"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    nop

    .line 399
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 397
    throw v0
.end method

.method private enforceReadAppSpecificLocalesPermission()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_APP_SPECIFIC_LOCALES"

    const-string v2, "getApplicationLocales"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method private enforceSetAppSpecificLocaleConfigPermission(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 3
    .param p1, "atomRecord"    # Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_APP_SPECIFIC_LOCALECONFIG"

    const-string/jumbo v2, "setOverrideLocaleConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    nop

    .line 745
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 743
    throw v0
.end method

.method private getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 450
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 451
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getApplicationConfig(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object v0

    .line 452
    .local v0, "appConfig":Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;
    if-nez v0, :cond_0

    .line 457
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1

    .line 459
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    .line 460
    .local v1, "locales":Landroid/os/LocaleList;
    if-eqz v1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private getPackageUid(Ljava/lang/String;I)I
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 512
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    return v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private getSystemLocalesUnchecked()Landroid/os/LocaleList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "systemLocales":Landroid/os/LocaleList;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 547
    .local v1, "conf":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 550
    :cond_0
    if-nez v0, :cond_1

    .line 551
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    .line 553
    :cond_1
    return-object v0
.end method

.method private getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;
    .locals 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 855
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "locale_configs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 856
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private isCallerFromCurrentInputMethod(I)Z
    .locals 7
    .param p1, "userId"    # I

    .line 480
    const-string/jumbo v0, "i18n.feature.allow_ime_query_app_locale"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 481
    return v2

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 485
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 484
    const-string v3, "default_input_method"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "currentInputMethod":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 489
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 490
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 491
    const-string v1, "LocaleManagerService"

    const-string/jumbo v4, "inValid input method"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v2

    .line 494
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "inputMethodPkgName":Ljava/lang/String;
    invoke-direct {p0, v4, p1}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    .line 496
    .local v5, "inputMethodUid":I
    if-ltz v5, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 500
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "inputMethodPkgName":Ljava/lang/String;
    .end local v5    # "inputMethodUid":I
    :cond_3
    return v2
.end method

.method private isCallerInstaller(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "installingPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0, v0, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    .line 471
    .local v2, "installerUid":I
    if-ltz v2, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 473
    .end local v2    # "installerUid":I
    :cond_1
    return v1
.end method

.method private isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z
    .locals 5
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    .param p4, "appSupportedLocalesChangedAtomRecord"    # Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, "uid":I
    if-gez v0, :cond_2

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LocaleManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v1, 0x3

    if-nez p3, :cond_0

    .line 372
    if-eqz p4, :cond_1

    .line 373
    invoke-virtual {p4, v1}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p3, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 376
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_2
    if-eqz p3, :cond_3

    .line 380
    invoke-virtual {p3, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setTargetUid(I)V

    goto :goto_1

    .line 381
    :cond_3
    if-eqz p4, :cond_4

    .line 382
    invoke-virtual {p4, v0}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setTargetUid(I)V

    .line 386
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    return v1
.end method

.method private loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 5
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v0, "localeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "locale-config"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 838
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 839
    .local v1, "depth":I
    :goto_0
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "locale"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 843
    .local v3, "locale":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    .end local v3    # "locale":Ljava/lang/String;
    goto :goto_1

    .line 845
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected tag name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocaleManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 848
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 850
    :cond_1
    return-object v0
.end method

.method private logAppLocalesMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 7
    .param p1, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 557
    iget v1, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    iget v2, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    iget-object v3, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    iget v6, p1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    const/16 v0, 0x19c

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 564
    return-void
.end method

.method private logAppSupportedLocalesChangedMetric(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 8
    .param p1, "atomRecord"    # Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 861
    iget v1, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    iget v2, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    iget v3, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    iget-boolean v4, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    iget-boolean v5, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    iget-boolean v6, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    iget v7, p1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    const/16 v0, 0x247

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZI)V

    .line 869
    return-void
.end method

.method private notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;

    .line 342
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 347
    return-void
.end method

.method private notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;

    .line 309
    const-string v0, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "android.permission.READ_APP_SPECIFIC_LOCALES"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method private setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;
    .param p4, "atomRecordForMetrics"    # Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 280
    nop

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p4, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setPrevLocales(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 283
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v0

    .line 285
    .local v0, "updater":Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;
    invoke-interface {v0, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setLocales(Landroid/os/LocaleList;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    move-result v1

    .line 288
    .local v1, "isConfigChanged":Z
    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->notifyRegisteredReceivers(Ljava/lang/String;ILandroid/os/LocaleList;)V

    .line 293
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->notifyBackupManager()V

    .line 294
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    goto :goto_0

    .line 297
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p4, v2}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setStatus(I)V

    .line 300
    :goto_0
    return-void
.end method

.method private setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 10
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "overrideLocaleConfig"    # Landroid/app/LocaleConfig;
    .param p4, "atomRecord"    # Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 608
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    const/4 v1, 0x0

    .line 616
    .local v1, "resLocaleConfig":Landroid/app/LocaleConfig;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 618
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 617
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 616
    invoke-static {v2}, Landroid/app/LocaleConfig;->fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    .end local v1    # "resLocaleConfig":Landroid/app/LocaleConfig;
    .local v2, "resLocaleConfig":Landroid/app/LocaleConfig;
    nop

    .line 623
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 625
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez p3, :cond_1

    .line 626
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 627
    const-string v5, "LocaleManagerService"

    const-string/jumbo v6, "remove the override LocaleConfig"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 689
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "resLocaleConfig":Landroid/app/LocaleConfig;
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 630
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "resLocaleConfig":Landroid/app/LocaleConfig;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    .line 634
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setOverrideRemoved(Z)V

    .line 635
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 637
    monitor-exit v0

    return-void

    .line 639
    :cond_1
    nop

    .line 640
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object v5

    .line 639
    invoke-virtual {p3, v5}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 641
    const-string v3, "LocaleManagerService"

    const-string/jumbo v5, "the same override, ignore it"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setSameAsPrevConfig(Z)V

    .line 643
    monitor-exit v0

    return-void

    .line 646
    :cond_2
    invoke-virtual {p3}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 649
    .local v5, "localeList":Landroid/os/LocaleList;
    if-nez v5, :cond_3

    .line 650
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v6

    move-object v5, v6

    .line 656
    :cond_3
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v6

    invoke-virtual {p4, v6}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setNumLocales(I)V

    .line 659
    new-instance v6, Landroid/util/AtomicFile;

    invoke-direct {v6, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    .local v6, "atomicFile":Landroid/util/AtomicFile;
    const/4 v7, 0x0

    .line 662
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    move-object v7, v8

    .line 663
    invoke-direct {p0, v5}, Lcom/android/server/locales/LocaleManagerService;->toXmlByteArray(Landroid/os/LocaleList;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    nop

    .line 673
    :try_start_3
    invoke-virtual {v6, v7}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 675
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    .line 679
    invoke-virtual {p3, v2}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 680
    const-string v3, "LocaleManagerService"

    const-string/jumbo v8, "setOverrideLocaleConfig, same as the app\'s LocaleConfig"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setSameAsResConfig(Z)V

    .line 683
    :cond_4
    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 689
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "resLocaleConfig":Landroid/app/LocaleConfig;
    .end local v5    # "localeList":Landroid/os/LocaleList;
    .end local v6    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    monitor-exit v0

    .line 690
    return-void

    .line 664
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "resLocaleConfig":Landroid/app/LocaleConfig;
    .restart local v5    # "localeList":Landroid/os/LocaleList;
    .restart local v6    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    nop

    .line 665
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "LocaleManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to write file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    if-eqz v7, :cond_5

    .line 667
    invoke-virtual {v6, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 669
    :cond_5
    const/4 v4, 0x2

    invoke-virtual {p4, v4}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->setStatus(I)V

    .line 671
    monitor-exit v0

    return-void

    .line 619
    .end local v2    # "resLocaleConfig":Landroid/app/LocaleConfig;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "localeList":Landroid/os/LocaleList;
    .end local v6    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v1, "resLocaleConfig":Landroid/app/LocaleConfig;
    :catch_1
    move-exception v2

    nop

    .line 620
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "LocaleManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v0

    return-void

    .line 689
    .end local v1    # "resLocaleConfig":Landroid/app/LocaleConfig;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private toXmlByteArray(Landroid/os/LocaleList;)[B
    .locals 9
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .line 806
    const-string/jumbo v0, "locale"

    const-string/jumbo v1, "locale-config"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 808
    .local v4, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 809
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 810
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    new-instance v5, Ljava/util/ArrayList;

    .line 813
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 814
    .local v5, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 815
    .local v7, "locale":Ljava/lang/String;
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 816
    const-string/jumbo v8, "name"

    invoke-interface {v4, v2, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 817
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    nop

    .end local v7    # "locale":Ljava/lang/String;
    goto :goto_0

    .line 806
    .end local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v5    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 820
    .restart local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v5    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 821
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 826
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 826
    return-object v0

    .line 827
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    .end local v5    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    goto :goto_3

    .line 806
    .restart local v3    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .end local p1    # "localeList":Landroid/os/LocaleList;
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 827
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .restart local p1    # "localeList":Landroid/os/LocaleList;
    :goto_3
    nop

    .line 828
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method


# virtual methods
.method deleteOverrideLocaleConfig(Ljava/lang/String;I)V
    .locals 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 797
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 799
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    const-string v1, "LocaleManagerService"

    const-string v2, "Delete the override LocaleConfig."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 803
    :cond_0
    return-void
.end method

.method public getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 8
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 411
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 410
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getApplicationLocales"

    const/4 v7, 0x0

    move v3, p2

    .end local p2    # "userId":I
    .local v3, "userId":I
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 427
    .end local v3    # "userId":I
    .restart local p2    # "userId":I
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->isCallerInstaller(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    invoke-direct {p0, p2}, Lcom/android/server/locales/LocaleManagerService;->isCallerFromCurrentInputMethod(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerService;->enforceReadAppSpecificLocalesPermission()V

    .line 434
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 436
    .local v1, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    return-object v0

    .line 438
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    throw v0
.end method

.method getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    return-object v0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocaleManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .locals 10
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 753
    const-string/jumbo v0, "i18n.feature.dynamic_locales_change"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 754
    return-object v1

    .line 757
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 761
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getOverrideLocaleConfig"

    const/4 v9, 0x0

    move v5, p2

    .end local p2    # "userId":I
    .local v5, "userId":I
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 766
    .end local v5    # "userId":I
    .restart local p2    # "userId":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 767
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    return-object v1

    .line 774
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 775
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 776
    .local v0, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    invoke-direct {p0, v0}, Lcom/android/server/locales/LocaleManagerService;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v4

    .line 780
    .local v4, "overrideLocales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/app/LocaleConfig;

    const-string v6, ","

    .line 781
    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    .local v5, "storedLocaleConfig":Landroid/app/LocaleConfig;
    nop

    .line 784
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 783
    return-object v5

    .line 784
    .end local v0    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "overrideLocales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "storedLocaleConfig":Landroid/app/LocaleConfig;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 774
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .end local p1    # "appPackageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 784
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .restart local p1    # "appPackageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :goto_1
    nop

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse XML configuration from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocaleManagerService"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public getSystemLocales()Landroid/os/LocaleList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 537
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerService;->getSystemLocalesUnchecked()Landroid/os/LocaleList;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    return-object v2

    .line 539
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    throw v2
.end method

.method notifyInstallerOfAppWhoseLocaleChanged(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 4
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "installingPackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    const-string v1, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    invoke-static {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v1

    .line 331
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 334
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 157
    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 158
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService-IA;)V

    const-class v1, Lcom/android/server/locales/LocaleManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V
    .locals 13
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "localeConfig"    # Landroid/app/LocaleConfig;
    .param p4, "caller"    # I

    .line 701
    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v2

    .line 703
    .local v2, "appLocales":Landroid/os/LocaleList;
    const/4 v0, 0x0

    .line 704
    .local v0, "resetAppLocales":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v3, "newAppLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const-string v4, "LocaleManagerService"

    if-nez v1, :cond_0

    .line 708
    const-string v5, "There is no LocaleConfig, reset app locales"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v0, 0x1

    move v5, v0

    goto :goto_2

    .line 711
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 712
    invoke-virtual {v2, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/LocaleConfig;->containsLocale(Ljava/util/Locale;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 713
    const-string v6, "Missing from the LocaleConfig, reset app locales"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v0, 0x1

    .line 715
    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {v2, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v0

    .line 721
    .end local v0    # "resetAppLocales":Z
    .local v5, "resetAppLocales":Z
    :goto_2
    if-eqz v5, :cond_3

    .line 723
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/util/Locale;

    .line 725
    .local v6, "locales":[Ljava/util/Locale;
    :try_start_0
    new-instance v10, Landroid/os/LocaleList;

    .line 726
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    invoke-direct {v10, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 727
    invoke-virtual {v0, p2, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->areLocalesSetFromDelegate(ILjava/lang/String;)Z

    move-result v11

    .line 725
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    goto :goto_3

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not set locales for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "locales":[Ljava/util/Locale;
    :cond_3
    :goto_3
    return-void
.end method

.method public setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    .locals 10
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "locales"    # Landroid/os/LocaleList;
    .param p4, "fromDelegate"    # Z
    .param p5, "caller"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;-><init>(I)V

    move-object v1, v0

    .line 237
    .local v1, "atomRecordForMetrics":Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    invoke-virtual {v1, p5}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setCaller(I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->setNewLocales(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v8, "setApplicationLocales"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 242
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, p2

    .end local p2    # "userId":I
    .local v5, "userId":I
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 253
    .end local v5    # "userId":I
    .restart local p2    # "userId":I
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0

    move v2, v0

    .line 255
    .local v2, "isCallerOwner":Z
    if-nez v2, :cond_0

    .line 256
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerService;->enforceChangeConfigurationPermission(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    goto :goto_0

    .line 268
    .end local v2    # "isCallerOwner":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 258
    .restart local v2    # "isCallerOwner":Z
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 259
    invoke-virtual {p3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v3

    .line 258
    invoke-virtual {v0, p2, p1, p4, v3}, Lcom/android/server/locales/LocaleManagerBackupHelper;->persistLocalesModificationInfo(ILjava/lang/String;ZZ)V

    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    .local v3, "token":J
    :try_start_3
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    nop

    .line 268
    .end local v2    # "isCallerOwner":Z
    .end local v3    # "token":J
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerService;->logAppLocalesMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 269
    nop

    .line 270
    return-void

    .line 265
    .restart local v2    # "isCallerOwner":Z
    .restart local v3    # "token":J
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    nop

    .end local v1    # "atomRecordForMetrics":Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .end local p1    # "appPackageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "locales":Landroid/os/LocaleList;
    .end local p4    # "fromDelegate":Z
    .end local p5    # "caller":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    .end local v2    # "isCallerOwner":Z
    .end local v3    # "token":J
    .restart local v1    # "atomRecordForMetrics":Lcom/android/server/locales/AppLocaleChangedAtomRecord;
    .restart local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .restart local p1    # "appPackageName":Ljava/lang/String;
    .restart local p3    # "locales":Landroid/os/LocaleList;
    .restart local p4    # "fromDelegate":Z
    .restart local p5    # "caller":I
    :catchall_2
    move-exception v0

    move p2, v5

    goto :goto_1

    .end local v5    # "userId":I
    .restart local p2    # "userId":I
    :catchall_3
    move-exception v0

    move v5, p2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerService;->logAppLocalesMetric(Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V

    .line 269
    throw v0
.end method

.method public setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    .locals 10
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "localeConfig"    # Landroid/app/LocaleConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 571
    const-string/jumbo v0, "i18n.feature.dynamic_locales_change"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    return-void

    .line 575
    :cond_0
    new-instance v0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    .line 576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;-><init>(I)V

    move-object v1, v0

    .line 578
    .local v1, "atomRecord":Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 582
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string/jumbo v8, "setOverrideLocaleConfig"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 581
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, p2

    .end local p2    # "userId":I
    .local v5, "userId":I
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 590
    .end local v5    # "userId":I
    .restart local p2    # "userId":I
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerService;->enforceSetAppSpecificLocaleConfigPermission(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V

    goto :goto_0

    .line 601
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 594
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    .local v2, "token":J
    :try_start_3
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/locales/LocaleManagerService;->setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 598
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 599
    nop

    .line 601
    .end local v2    # "token":J
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerService;->logAppSupportedLocalesChangedMetric(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V

    .line 602
    nop

    .line 603
    return-void

    .line 598
    .restart local v2    # "token":J
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    nop

    .end local v1    # "atomRecord":Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;
    .end local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .end local p1    # "appPackageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "localeConfig":Landroid/app/LocaleConfig;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 601
    .end local v2    # "token":J
    .restart local v1    # "atomRecord":Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;
    .restart local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/locales/LocaleManagerService;
    .restart local p1    # "appPackageName":Ljava/lang/String;
    .restart local p3    # "localeConfig":Landroid/app/LocaleConfig;
    :catchall_2
    move-exception v0

    move p2, v5

    goto :goto_1

    .end local v5    # "userId":I
    .restart local p2    # "userId":I
    :catchall_3
    move-exception v0

    move v5, p2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/locales/LocaleManagerService;->logAppSupportedLocalesChangedMetric(Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V

    .line 602
    throw v0
.end method
