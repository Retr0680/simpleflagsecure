.class Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1071
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1074
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1075
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateLowPowerModeAllowedModesLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 1076
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 1087
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1088
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateLowPowerModeAllowedModesLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    .line 1089
    monitor-exit v0

    .line 1090
    return-void

    .line 1089
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayRemoved(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 1081
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1083
    return-void
.end method
