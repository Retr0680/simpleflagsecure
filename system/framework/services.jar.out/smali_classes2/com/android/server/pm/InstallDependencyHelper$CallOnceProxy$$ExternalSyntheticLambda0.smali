.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerException;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iget-object v1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerException;

    invoke-static {v0, v1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->$r8$lambda$JKIEhxY3I6krJ8c-hvvA1canv4c(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method
