.class Lcom/android/server/pm/InstallDependencyHelper$2;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


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
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
        "Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/InstallDependencyHelper;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallDependencyHelper;Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/InstallDependencyHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private destroy()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v0}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector;

    invoke-interface {v1}, Lcom/android/internal/infra/ServiceConnector;->unbind()V

    .line 247
    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->this$0:Lcom/android/server/pm/InstallDependencyHelper;

    invoke-static {v1}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$fgetmRemoteServices(Lcom/android/server/pm/InstallDependencyHelper;)Landroid/util/ArrayMap;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBinderDied()V
    .locals 3

    .line 239
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DependencyInstallerService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/android/server/pm/InstallDependencyHelper$2;->destroy()V

    .line 241
    return-void
.end method

.method public onDisconnected(Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V
    .locals 3
    .param p1, "service"    # Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    .line 232
    invoke-static {}, Lcom/android/server/pm/InstallDependencyHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DependencyInstallerService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallDependencyHelper$2;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-direct {p0}, Lcom/android/server/pm/InstallDependencyHelper$2;->destroy()V

    .line 235
    return-void
.end method

.method public bridge synthetic onDisconnected(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 229
    check-cast p1, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$2;->onDisconnected(Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V

    return-void
.end method
