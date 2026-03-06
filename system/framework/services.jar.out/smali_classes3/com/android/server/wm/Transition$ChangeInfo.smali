.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;,
        Lcom/android/server/wm/Transition$ChangeInfo$ChangeInfoFlag;
    }
.end annotation


# static fields
.field private static final FLAG_BACK_GESTURE_ANIMATION:I = 0x80

.field private static final FLAG_BELOW_BACK_GESTURE_ANIMATION:I = 0x100

.field private static final FLAG_CHANGE_CONFIG_AT_END:I = 0x40

.field private static final FLAG_CHANGE_MOVED_TO_TOP:I = 0x20

.field private static final FLAG_CHANGE_NO_ANIMATION:I = 0x8

.field private static final FLAG_CHANGE_YES_ANIMATION:I = 0x10

.field private static final FLAG_NONE:I = 0x0

.field public static final FLAG_NT_CHANGE_SHOULD_SKIP_TRANSITIONS:I = 0x200

.field private static final FLAG_SEAMLESS_ROTATION:I = 0x1

.field private static final FLAG_TRANSIENT_HIDE:I = 0x4

.field private static final FLAG_TRANSIENT_LAUNCH:I = 0x2


# instance fields
.field final mAbsoluteBounds:Landroid/graphics/Rect;

.field mCommonAncestor:Lcom/android/server/wm/WindowContainer;

.field final mContainer:Lcom/android/server/wm/WindowContainer;

.field mDisplayId:I

.field mEndParent:Lcom/android/server/wm/WindowContainer;

.field mExistenceChanged:Z

.field mFlags:I

.field mIsKeyguardGoingAway:Z

.field mIsMoveTaskToBack:Z

.field mIsWakeTransit:Z

.field mKnownConfigChanges:I

.field mNtPopUpViewInfo:Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;

.field mReadyFlags:I

.field mReadyMode:I

.field mRestoringTransientHide:Z

.field mRotation:I

.field mShowWallpaper:Z

.field mSnapshot:Landroid/view/SurfaceControl;

.field mSnapshotLuma:F

.field mStartParent:Lcom/android/server/wm/WindowContainer;

.field mVisible:Z

.field mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 2
    .param p1, "origState"    # Lcom/android/server/wm/WindowContainer;

    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 3917
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    .line 3921
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 3923
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3924
    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 3928
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 4001
    iput-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4002
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 4003
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 4004
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4005
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 4006
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 4007
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 4008
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    .line 4009
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowContainer;ZZ)V
    .locals 1
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "visible"    # Z
    .param p3, "existChange"    # Z

    .line 4013
    invoke-direct {p0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 4014
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 4015
    iput-boolean p3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 4016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 4017
    return-void
.end method

.method private isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z
    .locals 9
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "parentTask"    # Lcom/android/server/wm/Task;

    .line 4209
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4210
    .local v0, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 4211
    .local v1, "taskWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 4212
    .local v2, "taskHeight":I
    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 4213
    .local v3, "startBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4215
    .local v4, "endBounds":Landroid/graphics/Rect;
    iget-boolean v5, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 4216
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v1, v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    nop

    .line 4217
    .local v5, "isInvisibleOrFillingTaskBeforeTransition":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4218
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ne v1, v8, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v2, v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v7

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v6

    :goto_3
    nop

    .line 4219
    .local v8, "isInVisibleOrFillingTaskAfterTransition":Z
    if-eqz v5, :cond_4

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move v6, v7

    :goto_4
    return v6
.end method


# virtual methods
.method getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .locals 10
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 4099
    const/4 v0, 0x0

    .line 4100
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4101
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 4103
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisTranslucent(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4104
    or-int/lit8 v0, v0, 0x4

    .line 4106
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/BackNavigationController;->isMonitorTransitionTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4107
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 4109
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 4110
    .local v1, "tda":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_4

    .line 4111
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 4113
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 4114
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_8

    .line 4115
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4116
    .local v3, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_7

    .line 4117
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    nop

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4118
    invoke-virtual {v4}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4119
    or-int/lit16 v0, v0, 0x800

    .line 4121
    :cond_5
    iget-boolean v4, v3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    nop

    if-eqz v4, :cond_6

    .line 4122
    const/4 v4, 0x2

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4123
    const-string v4, "Transition"

    const-string v5, "Unexpected launch-task-behind operation in shell transition"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4124
    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    .line 4126
    :cond_6
    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v5, 0x48000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 4128
    or-int/2addr v0, v5

    .line 4131
    :cond_7
    iget-object v4, v2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_8

    .line 4132
    or-int/lit8 v0, v0, 0x10

    .line 4135
    .end local v3    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_8
    const/4 v3, 0x0

    .line 4136
    .local v3, "parentTask":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 4137
    .local v4, "record":Lcom/android/server/wm/ActivityRecord;
    const/high16 v5, 0x400000

    if-eqz v4, :cond_a

    .line 4138
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4139
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v6, :cond_9

    .line 4140
    or-int/lit8 v0, v0, 0x10

    .line 4142
    :cond_9
    iget v6, v4, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/2addr v0, v6

    .line 4143
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 4144
    or-int/2addr v0, v5

    .line 4147
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    .line 4148
    .local v6, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v6, :cond_b

    if-nez v2, :cond_b

    .line 4149
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 4151
    :cond_b
    if-eqz v3, :cond_11

    .line 4152
    new-instance v7, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4154
    or-int/lit16 v0, v0, 0x200

    .line 4156
    :cond_c
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 4157
    .local v7, "starting":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_f

    .line 4158
    if-eq v7, v4, :cond_d

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v8, :cond_e

    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v8, v8, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v8, :cond_e

    :cond_d
    goto :goto_0

    .line 4161
    :cond_e
    nop

    nop

    if-eqz v4, :cond_f

    iget-object v8, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iget-object v9, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 4162
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 4163
    or-int/lit16 v0, v0, 0x4000

    goto :goto_1

    .line 4160
    :goto_0
    or-int/lit16 v0, v0, 0x4000

    .line 4166
    :cond_f
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Transition$ChangeInfo;->isWindowFillingTask(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/Task;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 4168
    or-int/lit16 v0, v0, 0x400

    .line 4170
    .end local v7    # "starting":Lcom/android/server/wm/ActivityRecord;
    :cond_10
    goto :goto_2

    .line 4171
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 4172
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v7, :cond_12

    .line 4173
    or-int/lit8 v0, v0, 0x20

    .line 4174
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 4175
    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    .line 4177
    :cond_12
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 4178
    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 4179
    :cond_13
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisInputMethod(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 4180
    or-int/lit16 v0, v0, 0x100

    goto :goto_2

    .line 4183
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v8

    .line 4184
    .local v8, "type":I
    const/16 v9, 0x7d0

    if-lt v8, v9, :cond_15

    const/16 v9, 0xbb7

    if-gt v8, v9, :cond_15

    .line 4186
    const/high16 v9, 0x10000

    or-int/2addr v0, v9

    .line 4190
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "type":I
    :cond_15
    :goto_2
    iget v7, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_16

    iget v7, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_16

    .line 4192
    const/high16 v7, 0x40000

    or-int/2addr v0, v7

    .line 4194
    :cond_16
    iget v7, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_17

    .line 4195
    const/high16 v7, 0x100000

    or-int/2addr v0, v7

    .line 4197
    :cond_17
    iget v7, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_18

    .line 4198
    or-int/2addr v0, v5

    .line 4202
    :cond_18
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v5

    invoke-virtual {v5, p0, v0}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getChangeFlags(Lcom/android/server/wm/Transition$ChangeInfo;I)I

    move-result v0

    .line 4204
    return v0
.end method

.method getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 5
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 4068
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 4069
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 4071
    :cond_1
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 4072
    return v3

    .line 4074
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    .line 4083
    .local v0, "nowVisible":Z
    iget-boolean v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eq v0, v4, :cond_7

    .line 4084
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/NtServicePopUpViewHelper;->isLaunchPopUpViewFromRecents()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4085
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/NtServicePopUpViewHelper;->isLaunchPopUpViewFromNotification()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4086
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper;->getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/NtServicePopUpViewHelper;->isLaunchPopUpViewFromFloatingWindow()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 4090
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v4, :cond_5

    .line 4091
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 4093
    :cond_5
    if-eqz v0, :cond_6

    move v1, v3

    :cond_6
    return v1

    .line 4088
    :cond_7
    :goto_0
    const/4 v1, 0x6

    return v1
.end method

.method hasChanged()Z
    .locals 5

    .line 4031
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    .line 4033
    .local v0, "currVisible":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    :cond_0
    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 4041
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v2, :cond_2

    return v3

    .line 4045
    :cond_2
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isNtPinnedWindowWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4046
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->isNtPinnedWindowWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopUpView: skip hasChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Transition"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    return v3

    .line 4051
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne v0, v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    nop

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4055
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    iget v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v2, v4, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4056
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    iget-object v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4057
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    nop

    if-ne v2, v4, :cond_7

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 4058
    invoke-static {v4}, Lcom/android/server/wm/Transition;->-$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    if-eqz v2, :cond_6

    :cond_5
    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    :goto_0
    nop

    .line 4051
    :goto_1
    return v1

    .line 4037
    :cond_8
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 4021
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4022
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ChangeInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4023
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4024
    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4025
    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
