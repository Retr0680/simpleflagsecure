.class public Lcom/android/server/display/state/DisplayStateController;
.super Ljava/lang/Object;
.source "DisplayStateController.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field private mDozeStateOverride:I

.field private mDozeStateOverrideReason:I

.field private mPerformScreenOffTransition:Z

.field private final mShouldSkipScreenOffTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerProximityStateController;Z)V
    .locals 1
    .param p1, "displayPowerProximityStateController"    # Lcom/android/server/display/DisplayPowerProximityStateController;
    .param p2, "shouldSkipScreenOffTransition"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 37
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 38
    iput v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 43
    iput-object p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 44
    iput-boolean p2, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    .line 45
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 121
    const-string v0, "DisplayStateController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShouldSkipScreenOffTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPerformScreenOffTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeStateOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 128
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerProximityStateController;->dumpLocal(Ljava/io/PrintWriter;)V

    .line 131
    :cond_0
    return-void
.end method

.method public overrideDozeScreenState(II)V
    .locals 0
    .param p1, "displayState"    # I
    .param p2, "reason"    # I

    .line 104
    iput p1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 105
    iput p2, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    .line 106
    return-void
.end method

.method public shouldPerformScreenOffTransition()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    return v0
.end method

.method public updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;
    .locals 5
    .param p1, "displayPowerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "isDisplayEnabled"    # Z
    .param p3, "isDisplayInTransition"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;",
            "ZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 67
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyReason:I

    .line 68
    .local v0, "reason":I
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    packed-switch v1, :pswitch_data_0

    .line 87
    const/4 v1, 0x2

    .local v1, "state":I
    goto :goto_0

    .line 74
    .end local v1    # "state":I
    :pswitch_0
    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    if-eqz v1, :cond_0

    .line 75
    iget v1, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverride:I

    .line 76
    .restart local v1    # "state":I
    iget v0, p0, Lcom/android/server/display/state/DisplayStateController;->mDozeStateOverrideReason:I

    goto :goto_0

    .line 77
    .end local v1    # "state":I
    :cond_0
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v1, :cond_1

    .line 78
    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 79
    .restart local v1    # "state":I
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenStateReason:I

    goto :goto_0

    .line 81
    .end local v1    # "state":I
    :cond_1
    const/4 v1, 0x3

    .line 83
    .restart local v1    # "state":I
    goto :goto_0

    .line 70
    .end local v1    # "state":I
    :pswitch_1
    const/4 v1, 0x1

    .line 71
    .restart local v1    # "state":I
    iget-boolean v2, p0, Lcom/android/server/display/state/DisplayStateController;->mShouldSkipScreenOffTransition:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/state/DisplayStateController;->mPerformScreenOffTransition:Z

    .line 72
    nop

    .line 90
    :goto_0
    nop

    .line 92
    iget-object v2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->updateProximityState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)V

    .line 94
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    iget-object v2, p0, Lcom/android/server/display/state/DisplayStateController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    .line 95
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->isScreenOffBecauseOfProximity()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    :cond_2
    const/4 v1, 0x1

    .line 99
    :cond_3
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
