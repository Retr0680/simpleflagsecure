.class public Lcom/android/server/pm/InstallDependencyHelper;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;,
        Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;,
        Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final REQUEST_TIMEOUT_MILLIS:J

.field private static final TAG:Ljava/lang/String;

.field private static final UNBIND_TIMEOUT_MILLIS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field private final mRemoteServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

.field private final mTrackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CZAXdst-99wNRnVuKlR5HvetTt8(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstallDependencyHelper;->lambda$resolveLibraryDependenciesIfNeededInternal$0(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPackageInstallerService(Lcom/android/server/pm/InstallDependencyHelper;)Lcom/android/server/pm/PackageInstallerService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrackers(Lcom/android/server/pm/InstallDependencyHelper;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetREQUEST_TIMEOUT_MILLIS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetUNBIND_TIMEOUT_MILLIS()J
    .locals 2

    .line 0
    sget-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smonError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 58
    const-class v0, Lcom/android/server/pm/InstallDependencyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->UNBIND_TIMEOUT_MILLIS:J

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/InstallDependencyHelper;->REQUEST_TIMEOUT_MILLIS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/PackageInstallerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedLibraries"    # Lcom/android/server/pm/SharedLibrariesImpl;
    .param p3, "packageInstallerService"    # Lcom/android/server/pm/PackageInstallerService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    .line 75
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 77
    iput-object p3, p0, Lcom/android/server/pm/InstallDependencyHelper;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 78
    return-void
.end method

.method private bindToDependencyInstallerIfNeeded(ILandroid/os/Handler;Lcom/android/server/pm/Computer;)Z
    .locals 14
    .param p1, "userId"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "snapshot"    # Lcom/android/server/pm/Computer;

    .line 160
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DependencyInstallerService for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already bound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    monitor-exit v1

    return v11

    .line 167
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to bind to Dependency Installer Service for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/role/RoleManager;

    .line 172
    .local v12, "roleManager":Landroid/app/role/RoleManager;
    const/4 v0, 0x0

    if-nez v12, :cond_1

    .line 173
    sget-object v1, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    const-string v2, "Cannot find RoleManager system service"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v0

    .line 176
    :cond_1
    const-string v1, "android.app.role.SYSTEM_DEPENDENCY_INSTALLER"

    .line 177
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 176
    invoke-virtual {v12, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v13

    .line 178
    .local v13, "holders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    sget-object v1, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No holders of ROLE_SYSTEM_DEPENDENCY_INSTALLER found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v0

    .line 183
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.INSTALL_DEPENDENCY"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-interface {v13}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    move v6, p1

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v10}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    move-result-object v8

    .line 190
    .local v8, "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    sget-object v1, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package holding ROLE_SYSTEM_DEPENDENCY_INSTALLER found for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v0

    .line 196
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 197
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    .line 198
    .local v10, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 200
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$1;

    move-object v3, v2

    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .local v3, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/InstallDependencyHelper$1;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    move-object v4, v0

    .line 221
    .local v4, "serviceConnector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;>;"
    iget-object v6, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    monitor-exit v6

    return v11

    .line 254
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$2;

    invoke-direct {v0, p0, v10, p1}, Lcom/android/server/pm/InstallDependencyHelper$2;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/ComponentName;I)V

    invoke-interface {v4, v0}, Lcom/android/internal/infra/ServiceConnector;->setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V

    .line 253
    invoke-interface {v4}, Lcom/android/internal/infra/ServiceConnector;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 254
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully bound to Dependency Installer Service for user "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v11

    .line 254
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 167
    .end local v3    # "serviceIntent":Landroid/content/Intent;
    .end local v4    # "serviceConnector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;>;"
    .end local v8    # "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v12    # "roleManager":Landroid/app/role/RoleManager;
    .end local v13    # "holders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private static synthetic lambda$resolveLibraryDependenciesIfNeededInternal$0(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V
    .locals 2
    .param p0, "missing"    # Ljava/util/List;
    .param p1, "serviceCallback"    # Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;
    .param p2, "service"    # Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    new-instance v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;

    .line 121
    invoke-interface {p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;-><init>(Landroid/os/IBinder;)V

    .line 120
    invoke-interface {p2, p0, v0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;->onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V

    .line 122
    return-void
.end method

.method private static onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V
    .locals 4
    .param p0, "callback"    # Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
    .param p1, "msg"    # Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x9

    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 152
    .local v0, "pe":Lcom/android/server/pm/PackageManagerException;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onError(Lcom/android/server/pm/PackageManagerException;)V

    .line 154
    sget-object v1, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orig session error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method private resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .locals 4
    .param p2, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p3, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p4, "userId"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "callback"    # Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/parsing/PackageLite;",
            "Lcom/android/server/pm/Computer;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;",
            ")V"
        }
    .end annotation

    .line 96
    .local p1, "missing":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No missing dependency for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    .line 102
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing dependencies found for pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, p4, p5, p3}, Lcom/android/server/pm/InstallDependencyHelper;->bindToDependencyInstallerIfNeeded(ILandroid/os/Handler;Lcom/android/server/pm/Computer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string v0, "Dependency Installer Service not found"

    invoke-static {p6, v0}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    .line 112
    return-void

    .line 115
    :cond_1
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;

    invoke-direct {v0, p0, p5, p6, p4}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallerCallbackCallOnce;-><init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;I)V

    .line 118
    .local v0, "serviceCallback":Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mRemoteServices:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/ServiceConnector;

    new-instance v3, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;)V

    invoke-interface {v2, v3}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result v2

    .line 123
    .local v2, "scheduleSuccess":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-nez v2, :cond_2

    .line 125
    const-string v1, "Failed to schedule job on Dependency Installer Service"

    invoke-static {p6, v1}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    .line 127
    :cond_2
    return-void

    .line 123
    .end local v2    # "scheduleSuccess":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method getMissingSharedLibraries(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/PackageLite;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedLibrariesImpl;->collectMissingSharedLibraryInfos(Landroid/content/pm/parsing/PackageLite;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method notifySessionComplete(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 136
    sget-object v0, Lcom/android/server/pm/InstallDependencyHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session complete for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    monitor-enter v0

    .line 139
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v1, "completedTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;>;"
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;

    .line 141
    .local v3, "tracker":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->onSessionComplete(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    .end local v1    # "completedTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;>;"
    .end local v3    # "tracker":Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 144
    .restart local v1    # "completedTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper;->mTrackers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 146
    nop

    .end local v1    # "completedTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;>;"
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resolveLibraryDependenciesIfNeeded(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Landroid/os/OutcomeReceiver;)V
    .locals 8
    .param p2, "pkg"    # Landroid/content/pm/parsing/PackageLite;
    .param p3, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p4, "userId"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/parsing/PackageLite;",
            "Lcom/android/server/pm/Computer;",
            "I",
            "Landroid/os/Handler;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Lcom/android/server/pm/PackageManagerException;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "missingLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local p6, "origCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Lcom/android/server/pm/PackageManagerException;>;"
    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-direct {v0, p5, p6}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;-><init>(Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V

    move-object v7, v0

    .line 85
    .local v7, "callback":Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "missingLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local p2    # "pkg":Landroid/content/pm/parsing/PackageLite;
    .end local p3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p4    # "userId":I
    .end local p5    # "handler":Landroid/os/Handler;
    .local v2, "missingLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v3, "pkg":Landroid/content/pm/parsing/PackageLite;
    .local v4, "snapshot":Lcom/android/server/pm/Computer;
    .local v5, "userId":I
    .local v6, "handler":Landroid/os/Handler;
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstallDependencyHelper;->resolveLibraryDependenciesIfNeededInternal(Ljava/util/List;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/Computer;ILandroid/os/Handler;Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 88
    .local p1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/android/server/pm/InstallDependencyHelper;->onError(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Ljava/lang/String;)V

    .line 90
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
