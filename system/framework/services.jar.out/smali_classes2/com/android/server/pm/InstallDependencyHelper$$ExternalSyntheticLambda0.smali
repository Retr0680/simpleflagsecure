.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    check-cast p1, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstallDependencyHelper;->$r8$lambda$CZAXdst-99wNRnVuKlR5HvetTt8(Ljava/util/List;Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;)V

    return-void
.end method
