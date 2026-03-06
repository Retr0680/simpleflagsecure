.class public Lcom/android/server/wm/ActionChain;
.super Ljava/lang/Object;
.source "ActionChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActionChain$Tracker;,
        Lcom/android/server/wm/ActionChain$LinkType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionChain"

.field static final TYPE_DEFAULT:I = 0x1

.field static final TYPE_FAILSAFE:I = 0x5

.field static final TYPE_FINISH:I = 0x4

.field static final TYPE_LEGACY:I = 0x2

.field static final TYPE_NORMAL:I = 0x0

.field static final TYPE_TEST:I = 0x3


# instance fields
.field mCreateTimeMs:J

.field mPrevious:Lcom/android/server/wm/ActionChain;

.field final mSource:Ljava/lang/String;

.field mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field mTransition:Lcom/android/server/wm/Transition;

.field mType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "transit"    # Lcom/android/server/wm/Transition;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActionChain;->mType:I

    .line 118
    iput-object p1, p0, Lcom/android/server/wm/ActionChain;->mSource:Ljava/lang/String;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActionChain;->mCreateTimeMs:J

    .line 120
    iput p2, p0, Lcom/android/server/wm/ActionChain;->mType:I

    .line 121
    iput-object p3, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Transition;->recordChain(Lcom/android/server/wm/ActionChain;)V

    .line 125
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/wm/Transition;Lcom/android/server/wm/ActionChain-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V

    return-void
.end method

.method private expectCollecting()Z
    .locals 5

    .line 142
    invoke-direct {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 143
    .local v0, "transition":Lcom/android/server/wm/Transition;
    const/4 v1, 0x0

    const-string v2, "TransitionChain"

    if-nez v0, :cond_0

    .line 144
    const-string v3, "Can\'t collect into a chain with no transition"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    const-string v3, "Trying to collect into a finished transition"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v1

    .line 151
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActionChain;->mTransition:Lcom/android/server/wm/Transition;

    if-eq v3, v4, :cond_2

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch between current collecting ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 153
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") and chain ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v1

    .line 157
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private getTransition()Lcom/android/server/wm/Transition;
    .locals 1

    .line 128
    nop

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/ActionChain;->mTmpAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    return-object v0
.end method

.method static test()Lcom/android/server/wm/ActionChain;
    .locals 4

    .line 233
    new-instance v0, Lcom/android/server/wm/ActionChain;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "test"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V

    return-object v0
.end method

.method static testFinish(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;
    .locals 3
    .param p0, "toFinish"    # Lcom/android/server/wm/Transition;

    .line 238
    new-instance v0, Lcom/android/server/wm/ActionChain;

    const-string v1, "test"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/wm/ActionChain;-><init>(Ljava/lang/String;ILcom/android/server/wm/Transition;)V

    return-object v0
.end method


# virtual methods
.method collect(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 165
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/ActionChain;->expectCollecting()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 168
    return-void
.end method

.method isFinishing()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/android/server/wm/ActionChain;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
