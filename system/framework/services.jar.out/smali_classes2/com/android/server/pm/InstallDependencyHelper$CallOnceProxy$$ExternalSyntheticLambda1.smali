.class public final synthetic Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-static {v0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->$r8$lambda$WTuaETiNg7IebcFDIkwgeH9Gdn8(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V

    return-void
.end method
