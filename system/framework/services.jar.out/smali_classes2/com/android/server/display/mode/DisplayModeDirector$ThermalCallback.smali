.class final Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;
.super Lcom/nothing/thermal/NtThermalMitigationCallback;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/mode/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalCallback"
.end annotation


# instance fields
.field private thermalLimitLevel:I

.field final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;[Ljava/lang/String;)V
    .locals 0
    .param p2, "interestedUnits"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3104
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3105
    invoke-direct {p0, p2}, Lcom/nothing/thermal/NtThermalMitigationCallback;-><init>([Ljava/lang/String;)V

    .line 3103
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->thermalLimitLevel:I

    .line 3106
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 3132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    thermalLimitLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->thermalLimitLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3133
    return-void
.end method

.method public observe()V
    .locals 3

    .line 3127
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/thermal/NtAdvancedThermalManager;->getInstance(Landroid/content/Context;)Lcom/nothing/thermal/NtAdvancedThermalManager;

    move-result-object v0

    .line 3128
    .local v0, "service":Lcom/nothing/thermal/NtAdvancedThermalManager;
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;)V

    invoke-virtual {v0, p0, v2}, Lcom/nothing/thermal/NtAdvancedThermalManager;->registerThermalEventCallback(Lcom/nothing/thermal/NtThermalMitigationCallback;Ljava/util/concurrent/Executor;)V

    .line 3129
    return-void
.end method

.method public onThermalStatus(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "extra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nothing/thermal/ThermalInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 3110
    .local p1, "thermalInfo":Ljava/util/List;, "Ljava/util/List<Lcom/nothing/thermal/ThermalInfo;>;"
    const/4 v0, -0x1

    .line 3111
    .local v0, "newLevel":I
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nothing/thermal/ThermalInfo;

    invoke-virtual {v2}, Lcom/nothing/thermal/ThermalInfo;->getUnit()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fps"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3112
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nothing/thermal/ThermalInfo;

    invoke-virtual {v1}, Lcom/nothing/thermal/ThermalInfo;->getStatus()I

    move-result v0

    .line 3114
    :cond_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->thermalLimitLevel:I

    if-eq v1, v0, :cond_2

    .line 3116
    if-ltz v0, :cond_1

    .line 3117
    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    .local v1, "vote":Lcom/android/server/display/mode/Vote;
    goto :goto_0

    .line 3119
    .end local v1    # "vote":Lcom/android/server/display/mode/Vote;
    :cond_1
    const/4 v1, 0x0

    .line 3121
    .restart local v1    # "vote":Lcom/android/server/display/mode/Vote;
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 3122
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$ThermalCallback;->thermalLimitLevel:I

    .line 3124
    .end local v1    # "vote":Lcom/android/server/display/mode/Vote;
    :cond_2
    return-void
.end method
