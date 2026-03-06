.class Lcom/android/server/pm/InstallDependencyHelper$1;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "InstallDependencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/InstallDependencyHelper;->bindToDependencyInstallerIfNeeded(ILandroid/os/Handler;Lcom/android/server/pm/Computer;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/InstallDependencyHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "bindingFlags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 203
    .local p6, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;>;"
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p7, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    move-object p7, p6

    move p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    .end local p2    # "context":Landroid/content/Context;
    .local p3, "context":Landroid/content/Context;
    .local p4, "intent":Landroid/content/Intent;
    .local p5, "bindingFlags":I
    .local p6, "userId":I
    .local p7, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;>;"
    invoke-direct/range {p2 .. p7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 216
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetUNBIND_TIMEOUT_MILLIS()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getJobHandler()Landroid/os/Handler;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$1;->val$handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getRequestTimeoutMs()J
    .locals 2

    .line 211
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetREQUEST_TIMEOUT_MILLIS()J

    move-result-wide v0

    return-wide v0
.end method
