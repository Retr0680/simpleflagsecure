.class public Lcom/android/server/appfunctions/AppFunctionManagerService;
.super Lcom/android/server/SystemService;
.source "AppFunctionManagerService.java"


# instance fields
.field private final mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 35
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    invoke-direct {v0, p1, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 36
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "app_function"

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 52
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 53
    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 47
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    .line 48
    return-void
.end method
