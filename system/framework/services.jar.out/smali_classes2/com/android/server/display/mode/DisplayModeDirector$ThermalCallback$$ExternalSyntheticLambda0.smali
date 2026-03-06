.class public final synthetic Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
