.class Lcom/android/server/wm/DesktopModeLaunchParamsModifier;
.super Ljava/lang/Object;
.source "DesktopModeLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public static synthetic $r8$lambda$eIFc4C2U2JJa0ZohMsXAO75lM4Y(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->lambda$calculate$0(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private varargs appendLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 81
    move-object/from16 v3, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v4, p9

    iget-object v0, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "desktop mode is not enabled, skipping"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v1

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    goto/16 :goto_1

    .line 91
    :cond_2
    sget-object v0, Landroid/window/DesktopModeFlags;->DISABLE_DESKTOP_LAUNCH_PARAMS_OUTSIDE_DESKTOP_BUG_FIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0, p1, v3, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    const-string v0, "not entering desktop mode, skipping"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return v1

    .line 97
    :cond_3
    nop

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 99
    const-string v0, "has created-by-organizer-task, skipping"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return v1

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-nez v0, :cond_5

    .line 104
    const-string v0, "not standard or undefined activity type, skipping"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v1

    .line 107
    :cond_5
    const/4 v8, 0x1

    if-ge v6, v8, :cond_6

    .line 108
    const-string v0, "not in windowing mode or bounds phase, skipping"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return v1

    .line 113
    :cond_6
    invoke-virtual {v4, v7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 115
    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 116
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 117
    .local v0, "sourceTask":Lcom/android/server/wm/Task;
    sget-object v2, Landroid/window/DesktopModeFlags;->DISABLE_DESKTOP_LAUNCH_PARAMS_OUTSIDE_DESKTOP_BUG_FIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v2}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 118
    invoke-virtual {p0, v0, v3, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 121
    const/4 v2, 0x5

    iput v2, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 122
    const-string v2, "freeform window mode applied to task trampoline"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    iput v2, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inherit-from-source="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    .end local v0    # "sourceTask":Lcom/android/server/wm/Task;
    :cond_8
    :goto_0
    const/4 v9, 0x2

    if-ne v6, v8, :cond_9

    .line 135
    return v9

    .line 138
    :cond_9
    iget-object v0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 139
    const-string v0, "currentParams has bounds set, not overriding"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return v1

    .line 143
    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 144
    sget-object v0, Landroid/window/DesktopModeFlags;->DISABLE_DESKTOP_LAUNCH_PARAMS_OUTSIDE_DESKTOP_BUG_FIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 147
    return v8

    .line 149
    :cond_c
    const-string v0, "current task has bounds set, not overriding"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    return v1

    .line 153
    :cond_d
    sget-object v0, Landroid/window/DesktopModeFlags;->INHERIT_TASK_BOUNDS_FOR_TRAMPOLINE_TASK_LAUNCHES:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    const-string v10, "final desktop mode task bounds set to %s"

    if-eqz v0, :cond_e

    .line 154
    nop

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostVisibleFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 156
    .local v0, "topVisibleFreeformActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {p0, v0, p3, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 157
    const-string v2, "inheriting bounds from existing closing instance"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v1, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 159
    iget-object v1, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v10, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return v8

    .line 165
    .end local v0    # "topVisibleFreeformActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_e
    new-instance v5, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->updateInitialBounds(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Ljava/util/function/Consumer;)V

    .line 167
    iget-object v0, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    if-eqz p5, :cond_f

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 173
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    iput v0, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 174
    return v8

    .line 176
    :cond_f
    return v9

    .line 87
    :goto_1
    const-string v0, "task null, skipping"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return v1
.end method

.method private checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 215
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result v0

    nop

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 218
    invoke-direct {p0, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0
.end method

.method private initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 272
    return-void
.end method

.method private isClosingExitingInstance(I)Z
    .locals 1
    .param p1, "intentFlags"    # I

    .line 263
    const v0, 0x8000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isCompatibleDesktopWindowingMode(I)Z
    .locals 1
    .param p1, "windowingMode"    # I

    .line 227
    sparse-switch p1, :sswitch_data_0

    .line 231
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :sswitch_0
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private isLaunchingNewSingleTask(I)Z
    .locals 1
    .param p1, "launchMode"    # I

    .line 253
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 202
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    nop

    if-nez v0, :cond_2

    const/4 v0, 0x5

    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 204
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 202
    :goto_1
    return v0
.end method

.method private static synthetic lambda$calculate$0(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;Ljava/lang/String;)V
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/wm/DesktopModeLaunchParamsModifier;
    .param p1, "x$0"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private outputLog()V
    .locals 0

    .line 280
    return-void
.end method

.method private shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "existingTaskActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchingActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "launchingTask"    # Lcom/android/server/wm/Task;

    .line 242
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_1

    .line 243
    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    nop

    if-ne v1, v2, :cond_2

    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 244
    invoke-direct {p0, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isLaunchingNewSingleTask(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isClosingExitingInstance(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 243
    :goto_0
    return v0

    .line 242
    :goto_1
    return v0
.end method


# virtual methods
.method isEnteringDesktopMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 193
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 68
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 69
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 71
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->outputLog()V

    .line 72
    return v0
.end method
