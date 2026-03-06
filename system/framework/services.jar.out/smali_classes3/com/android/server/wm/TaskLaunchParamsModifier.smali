.class Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field private static final CASCADING_OFFSET_DP:I = 0x4b

.field private static final DEBUG:Z = false

.field private static final EPSILON:I = 0x2

.field private static final MINIMAL_STEP:I = 0x1

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDirections:[I

.field private mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$KZI_3ccMGutdSalJhMt1ed153yY(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$getPreferredLaunchTaskDisplayArea$1(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TjxGreTpw9xhmmPZAU-spdevuA4(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$adjustBoundsToAvoidConflictInDisplayArea$2(Ljava/util/List;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cOwEsqAlVxZJC8Bgaj_hUt2vkL8(Lcom/android/server/wm/TaskLaunchParamsModifier;IILcom/android/server/wm/TaskDisplayArea;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .locals 1
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 96
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 870
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 871
    return-void
.end method

.method private adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    .line 842
    .local v0, "layoutDirection":I
    invoke-static {p1, v0, p2, p3}, Lcom/android/server/wm/LaunchParamsUtil;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;ILandroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 844
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .line 1030
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .locals 10
    .param p2, "candidateBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 972
    .local p1, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 973
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v2

    .line 975
    .local v3, "leftClose":Z
    :goto_1
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    .line 977
    .local v6, "topClose":Z
    :goto_2
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    .line 979
    .local v7, "rightClose":Z
    :goto_3
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_3

    move v2, v5

    .line 982
    .local v2, "bottomClose":Z
    :cond_3
    if-eqz v3, :cond_4

    if-nez v6, :cond_7

    :cond_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_7

    :cond_5
    if-eqz v7, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v7, :cond_8

    if-eqz v2, :cond_8

    .line 984
    :cond_7
    return v5

    .line 986
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    .end local v2    # "bottomClose":Z
    .end local v3    # "leftClose":Z
    .end local v6    # "topClose":Z
    .end local v7    # "rightClose":Z
    :cond_8
    goto :goto_0

    .line 988
    :cond_9
    return v2
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .locals 28
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 117
    move-object/from16 v7, p2

    move/from16 v8, p7

    move-object/from16 v9, p9

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    move-object/from16 v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1

    .line 120
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    move-object/from16 v0, p3

    move-object v10, v0

    .line 123
    .local v10, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_1
    const/4 v11, 0x0

    if-nez v10, :cond_2

    if-eqz v8, :cond_2

    .line 131
    return v11

    .line 136
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object/from16 v6, p6

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v12

    .line 140
    move-object v13, v1

    move-object v15, v2

    move-object v14, v3

    move-object v1, v4

    .local v12, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iput-object v12, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 141
    iget-object v2, v12, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 148
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x2

    if-nez v8, :cond_3

    .line 149
    return v3

    .line 157
    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    goto :goto_2

    .line 158
    :cond_4
    move v4, v11

    :goto_2
    nop

    .line 162
    .local v4, "launchMode":I
    if-nez v4, :cond_5

    .line 163
    invoke-direct {v0, v2, v12, v14}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 167
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 177
    :cond_5
    if-nez v4, :cond_6

    if-eqz v13, :cond_6

    .line 178
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-ne v5, v12, :cond_6

    .line 179
    invoke-virtual {v13}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-nez v5, :cond_6

    .line 180
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 188
    :cond_6
    const/4 v5, 0x0

    .line 192
    .local v5, "hasInitialBounds":Z
    const/4 v6, 0x0

    .line 195
    .local v6, "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    nop

    .line 196
    invoke-direct {v0, v12, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canCalculateBoundsForFullscreenTask(Lcom/android/server/wm/TaskDisplayArea;I)Z

    move-result v16

    .line 197
    .local v16, "canCalculateBoundsForFullscreenTask":Z
    nop

    .line 198
    invoke-direct {v0, v12, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/TaskDisplayArea;I)Z

    move-result v17

    .line 199
    .local v17, "canApplyFreeformWindowPolicy":Z
    if-eqz v7, :cond_8

    if-nez v17, :cond_7

    if-eqz v16, :cond_8

    :cond_7
    const/16 v19, 0x1

    goto :goto_3

    :cond_8
    const/16 v19, 0x0

    .line 201
    .local v19, "canApplyWindowLayout":Z
    :goto_3
    iget-object v11, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 202
    invoke-virtual {v11, v15}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v11

    nop

    if-eqz v11, :cond_a

    if-nez v17, :cond_9

    .line 204
    invoke-direct {v0, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v11

    if-nez v11, :cond_9

    if-eqz v16, :cond_a

    :cond_9
    const/4 v11, 0x1

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    :goto_4
    nop

    .line 207
    .local v11, "canApplyBoundsFromActivityOptions":Z
    if-eqz v11, :cond_c

    .line 208
    const/4 v5, 0x1

    .line 211
    if-nez v4, :cond_b

    if-eqz v17, :cond_b

    .line 212
    const/16 v22, 0x5

    goto :goto_5

    .line 213
    :cond_b
    move/from16 v22, v4

    :goto_5
    move/from16 v4, v22

    .line 214
    iget-object v3, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v2

    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .local v23, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v24, v6

    goto :goto_7

    .line 216
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v2    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_c
    move-object/from16 v23, v2

    .end local v2    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v23    # "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v19, :cond_e

    .line 217
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v12, v10, v7, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 219
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    .line 220
    if-eqz v17, :cond_d

    const/4 v2, 0x5

    goto :goto_6

    :cond_d
    move v2, v4

    :goto_6
    move v4, v2

    .line 221
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 222
    const/4 v5, 0x1

    .line 223
    const/4 v6, 0x1

    move/from16 v24, v6

    goto :goto_7

    .line 228
    :cond_e
    const/4 v2, 0x6

    if-ne v4, v2, :cond_f

    if-eqz v15, :cond_f

    .line 229
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 232
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 233
    const/4 v5, 0x1

    move/from16 v24, v6

    goto :goto_7

    .line 248
    :cond_f
    move/from16 v24, v6

    .end local v6    # "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    .local v24, "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    :goto_7
    const/4 v2, 0x0

    .line 253
    .local v2, "fullyResolvedCurrentParam":Z
    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    if-nez v5, :cond_15

    iget-object v3, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    nop

    if-eqz v3, :cond_10

    iget-object v3, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 255
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    .line 256
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    if-ne v3, v6, :cond_15

    .line 259
    :cond_10
    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 260
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 261
    iget v4, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 262
    const/4 v3, 0x5

    if-eq v4, v3, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    :goto_8
    move v2, v6

    goto :goto_9

    .line 260
    :cond_12
    const/4 v3, 0x5

    goto :goto_9

    .line 259
    :cond_13
    const/4 v3, 0x5

    .line 268
    :goto_9
    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14

    .line 271
    iget-object v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    const/4 v2, 0x1

    .line 273
    move/from16 v25, v2

    goto :goto_a

    .line 268
    :cond_14
    move/from16 v25, v2

    goto :goto_a

    .line 289
    :cond_15
    move/from16 v25, v2

    .end local v2    # "fullyResolvedCurrentParam":Z
    .local v25, "fullyResolvedCurrentParam":Z
    :goto_a
    const/16 v26, 0x0

    .line 290
    .local v26, "hasInitialBoundsForSuggestedDisplayAreaInFreeformMode":Z
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 291
    const/4 v2, 0x2

    if-ne v4, v2, :cond_16

    move-object v3, v12

    move v12, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v23

    goto/16 :goto_b

    .line 293
    :cond_16
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_19

    .line 294
    invoke-direct {v0, v10, v12, v15}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 295
    const/4 v4, 0x5

    .line 296
    iget-object v3, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 297
    iget-object v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v3, v12

    move v12, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v23

    .end local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .local v1, "root":Lcom/android/server/wm/ActivityRecord;
    .local v2, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "display":Lcom/android/server/wm/DisplayContent;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 299
    const/16 v26, 0x1

    goto :goto_b

    .line 296
    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_17
    move-object v3, v12

    move v12, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v23

    .end local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "display":Lcom/android/server/wm/DisplayContent;
    goto :goto_b

    .line 303
    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_18
    move-object v3, v12

    move v12, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v23

    .end local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x1

    .line 304
    iget-object v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    .line 293
    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_19
    move-object v3, v12

    move v12, v2

    move-object v2, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v23

    .end local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "display":Lcom/android/server/wm/DisplayContent;
    goto :goto_b

    .line 290
    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    move-object v3, v7

    move-object v2, v12

    const/4 v12, 0x2

    move-object v7, v1

    move-object v1, v10

    move-object/from16 v10, v23

    .line 312
    .end local v12    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v10, "display":Lcom/android/server/wm/DisplayContent;
    :goto_b
    nop

    .line 313
    nop

    .line 312
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    if-ne v4, v6, :cond_1b

    .line 313
    invoke-direct {v0, v13, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldUpdateExistingTaskWindowingMode(Lcom/android/server/wm/Task;I)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 314
    const/4 v6, 0x0

    goto :goto_c

    :cond_1b
    move v6, v4

    :goto_c
    iput v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 316
    const/4 v6, 0x1

    if-ne v8, v6, :cond_1c

    .line 317
    return v12

    .line 322
    :cond_1c
    if-eqz v4, :cond_1d

    move v6, v4

    goto :goto_d

    .line 323
    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v6

    :goto_d
    nop

    .line 324
    .local v6, "resolvedMode":I
    move-object/from16 v21, v2

    .line 327
    .local v21, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v15, :cond_20

    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v22

    if-nez v22, :cond_1e

    .line 328
    invoke-virtual {v15}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v12

    move/from16 v23, v5

    .end local v5    # "hasInitialBounds":Z
    .local v23, "hasInitialBounds":Z
    const/4 v5, -0x1

    if-ne v12, v5, :cond_1f

    goto :goto_e

    .line 327
    .end local v23    # "hasInitialBounds":Z
    .restart local v5    # "hasInitialBounds":Z
    :cond_1e
    move/from16 v23, v5

    .line 367
    .end local v5    # "hasInitialBounds":Z
    .restart local v23    # "hasInitialBounds":Z
    :cond_1f
    move-object/from16 v27, v1

    move-object/from16 v18, v2

    move/from16 v20, v6

    move-object/from16 v2, v21

    move/from16 v5, v23

    move/from16 v23, v4

    goto/16 :goto_11

    .line 327
    .end local v23    # "hasInitialBounds":Z
    .restart local v5    # "hasInitialBounds":Z
    :cond_20
    move/from16 v23, v5

    .line 329
    .end local v5    # "hasInitialBounds":Z
    .restart local v23    # "hasInitialBounds":Z
    :goto_e
    iget-object v5, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 330
    invoke-virtual {v5, v1, v15, v13}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v12

    .line 331
    .local v12, "activityType":I
    new-instance v5, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v6, v12}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V

    invoke-virtual {v10, v5}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 344
    iget-object v5, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v5, v2, :cond_24

    .line 345
    iget-object v5, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-ne v4, v5, :cond_21

    .line 346
    const/4 v5, 0x0

    goto :goto_f

    :cond_21
    move v5, v4

    :goto_f
    iput v5, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 347
    if-eqz v24, :cond_22

    .line 348
    iget-object v5, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 349
    iget-object v5, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move-object/from16 v18, v2

    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v18, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v5, v1, v3, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 350
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    const/16 v20, 0x1

    xor-int/lit8 v2, v2, 0x1

    move v5, v2

    move/from16 v23, v4

    move/from16 v20, v6

    .end local v23    # "hasInitialBounds":Z
    .restart local v5    # "hasInitialBounds":Z
    goto :goto_10

    .line 351
    .end local v5    # "hasInitialBounds":Z
    .end local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23    # "hasInitialBounds":Z
    :cond_22
    move-object/from16 v18, v2

    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v26, :cond_23

    .line 352
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 353
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move v5, v6

    .end local v6    # "resolvedMode":I
    .local v5, "resolvedMode":I
    iget-object v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move/from16 v20, v5

    move/from16 v5, v23

    .end local v23    # "hasInitialBounds":Z
    .local v5, "hasInitialBounds":Z
    .local v20, "resolvedMode":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    move/from16 v23, v4

    .end local v4    # "launchMode":I
    .local v23, "launchMode":I
    goto :goto_10

    .line 351
    .end local v5    # "hasInitialBounds":Z
    .end local v20    # "resolvedMode":I
    .restart local v4    # "launchMode":I
    .restart local v6    # "resolvedMode":I
    .local v23, "hasInitialBounds":Z
    :cond_23
    move/from16 v20, v6

    move/from16 v5, v23

    move/from16 v23, v4

    .end local v4    # "launchMode":I
    .end local v6    # "resolvedMode":I
    .restart local v5    # "hasInitialBounds":Z
    .restart local v20    # "resolvedMode":I
    .local v23, "launchMode":I
    goto :goto_10

    .line 344
    .end local v5    # "hasInitialBounds":Z
    .end local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v20    # "resolvedMode":I
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v4    # "launchMode":I
    .restart local v6    # "resolvedMode":I
    .local v23, "hasInitialBounds":Z
    :cond_24
    move-object/from16 v18, v2

    move/from16 v20, v6

    move/from16 v5, v23

    move/from16 v23, v4

    .line 358
    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "launchMode":I
    .end local v6    # "resolvedMode":I
    .restart local v5    # "hasInitialBounds":Z
    .restart local v18    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v20    # "resolvedMode":I
    .local v23, "launchMode":I
    :goto_10
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_25

    .line 359
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 360
    .end local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overridden-display-area=["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {v12}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    move-object/from16 v27, v1

    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .local v27, "root":Lcom/android/server/wm/ActivityRecord;
    invoke-static/range {v20 .. v20}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_11

    .line 358
    .end local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v27    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_25
    move-object/from16 v27, v1

    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v27    # "root":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v2, v21

    .line 367
    .end local v12    # "activityType":I
    .end local v21    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v2    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-area="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 368
    iput-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 370
    const/4 v12, 0x2

    if-ne v8, v12, :cond_26

    .line 371
    return v12

    .line 380
    :cond_26
    if-eqz v25, :cond_29

    .line 381
    move/from16 v4, v20

    const/4 v1, 0x5

    .end local v20    # "resolvedMode":I
    .local v4, "resolvedMode":I
    if-ne v4, v1, :cond_28

    .line 383
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v2, :cond_27

    .line 384
    iget-object v1, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 388
    :cond_27
    iget-object v1, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    move-object/from16 v1, v27

    goto :goto_13

    .line 381
    :cond_28
    move-object/from16 v1, v27

    goto :goto_13

    .line 390
    .end local v4    # "resolvedMode":I
    .restart local v20    # "resolvedMode":I
    :cond_29
    move/from16 v4, v20

    const/4 v1, 0x5

    .end local v20    # "resolvedMode":I
    .restart local v4    # "resolvedMode":I
    if-eqz v13, :cond_2a

    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v6

    if-nez v6, :cond_2b

    :cond_2a
    goto :goto_12

    :cond_2b
    move-object/from16 v1, v27

    goto :goto_13

    .line 391
    :goto_12
    if-eqz v14, :cond_2c

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_2c

    if-ne v4, v1, :cond_2c

    iget-object v1, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 393
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 394
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v2, :cond_2c

    .line 396
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 399
    :cond_2c
    iget-object v6, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v1, v27

    .end local v27    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 402
    :goto_13
    const/16 v22, 0x2

    return v22
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "availableBounds"    # Landroid/graphics/Rect;
    .param p2, "initialBounds"    # Landroid/graphics/Rect;

    .line 936
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v2, v1, v0

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 940
    .end local v0    # "i":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 941
    .local v0, "oneThirdWidth":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    div-int/2addr v3, v1

    .line 942
    .local v3, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 943
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_1

    .line 945
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v2

    .line 946
    return-void

    .line 947
    :cond_1
    if-le v4, v3, :cond_2

    .line 949
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v2

    .line 950
    return-void

    .line 953
    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 954
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 955
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 956
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_3

    if-le v8, v7, :cond_4

    :cond_3
    goto :goto_1

    .line 966
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v2

    .line 967
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v2, 0x33

    aput v2, v1, v9

    .line 968
    return-void

    .line 959
    :goto_1
    iget-object v10, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v2

    .line 960
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v2, v9

    .line 961
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/TaskDisplayArea;I)Z
    .locals 1
    .param p1, "suggestedDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "launchMode"    # I

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_2

    .line 635
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 634
    :goto_0
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .locals 1
    .param p1, "launchMode"    # I

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canCalculateBoundsForFullscreenTask(Lcom/android/server/wm/TaskDisplayArea;I)Z
    .locals 2
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "launchMode"    # I

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 626
    :cond_2
    :goto_0
    return v1
.end method

.method private canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 5
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "suggestedDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 591
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 592
    return v0

    .line 598
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    return v0

    .line 602
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 603
    .local v1, "sourceWindowingMode":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    .line 605
    return v0

    .line 610
    :cond_2
    const-string v3, "com.foxnews.android"

    iget-object v4, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v1, v2, :cond_3

    .line 612
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip inherit WindowingMode from source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return v0

    .line 621
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "srcBounds"    # Landroid/graphics/Rect;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 733
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 734
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 735
    .local v0, "density":F
    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 737
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 738
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 739
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 740
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 741
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .line 800
    packed-switch p1, :pswitch_data_0

    .line 806
    const/4 v0, -0x1

    return v0

    .line 802
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 804
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 4
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 538
    if-eqz p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 540
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 542
    .local v0, "controllerFromLaunchingRecord":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_0

    .line 543
    nop

    .line 544
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 545
    .local v1, "taskDisplayAreaForLaunchingRecord":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_0

    .line 550
    return-object v1

    .line 554
    .end local v1    # "taskDisplayAreaForLaunchingRecord":Lcom/android/server/wm/TaskDisplayArea;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 556
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    .line 555
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 557
    .local v1, "controllerFromProcess":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_1

    .line 558
    nop

    .line 559
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 560
    .local v2, "displayAreaForRecord":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_1

    .line 562
    return-object v2

    .line 567
    .end local v0    # "controllerFromLaunchingRecord":Lcom/android/server/wm/WindowProcessController;
    .end local v1    # "controllerFromProcess":Lcom/android/server/wm/WindowProcessController;
    .end local v2    # "displayAreaForRecord":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1
    if-eqz p2, :cond_2

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v2, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 569
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 571
    .local v0, "controllerFromRequest":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_2

    .line 572
    nop

    .line 573
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 574
    .local v1, "displayAreaFromSourceProcess":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_2

    .line 578
    return-object v1

    .line 583
    .end local v0    # "controllerFromRequest":Lcom/android/server/wm/WindowProcessController;
    .end local v1    # "displayAreaFromSourceProcess":Lcom/android/server/wm/TaskDisplayArea;
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 584
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 586
    .local v0, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    return-object v0
.end method

.method private getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 647
    iget v0, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v0, v0, 0x70

    .line 648
    .local v0, "verticalGravity":I
    iget v1, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v1, v1, 0x7

    .line 649
    .local v1, "horizontalGravity":I
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 650
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 651
    return-void

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 657
    .local v2, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 659
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 660
    const/4 v3, 0x0

    invoke-static {v2, p3, p4, v3}, Lcom/android/server/wm/LaunchParamsUtil;->calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V

    move-object v6, p1

    move-object v5, p2

    move-object v7, p3

    move-object v10, p4

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v5, p2

    move-object v7, p3

    move-object v10, p4

    .end local p1    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local p2    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .end local p4    # "inOutBounds":Landroid/graphics/Rect;
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    .local v6, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v7, "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .local v10, "inOutBounds":Landroid/graphics/Rect;
    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_0

    .line 662
    .end local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .end local v10    # "inOutBounds":Landroid/graphics/Rect;
    .restart local p1    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local p2    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local p3    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .restart local p4    # "inOutBounds":Landroid/graphics/Rect;
    :cond_2
    move-object v6, p1

    move-object v5, p2

    move-object v7, p3

    move-object v10, p4

    .line 666
    .end local p1    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local p2    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local p3    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .end local p4    # "inOutBounds":Landroid/graphics/Rect;
    .restart local v5    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v7    # "windowLayout":Landroid/content/pm/ActivityInfo$WindowLayout;
    .restart local v10    # "inOutBounds":Landroid/graphics/Rect;
    :goto_0
    invoke-static {v0, v1, v10, v2}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 668
    return-void
.end method

.method private getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p5, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 416
    const/4 v0, 0x0

    .line 418
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 419
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 420
    .local v2, "optionLaunchTaskDisplayAreaToken":Landroid/window/WindowContainerToken;
    :goto_0
    if-eqz v2, :cond_1

    .line 421
    nop

    .line 422
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 421
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 426
    :cond_1
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 427
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v5

    .line 428
    .local v5, "launchTaskDisplayAreaFeatureId":I
    if-eq v5, v4, :cond_3

    .line 429
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 430
    move v6, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v6

    .line 431
    .local v6, "launchDisplayId":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 432
    invoke-virtual {v7, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 433
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v7, :cond_3

    .line 434
    new-instance v8, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v8, v5}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 442
    .end local v5    # "launchTaskDisplayAreaFeatureId":I
    .end local v6    # "launchDisplayId":I
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_3
    if-nez v0, :cond_5

    .line 444
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v4

    .line 445
    .local v5, "optionLaunchId":I
    :goto_2
    if-eq v5, v4, :cond_5

    .line 446
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 447
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 448
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_5

    .line 449
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 457
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "optionLaunchId":I
    :cond_5
    if-nez v0, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 458
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 459
    if-eqz v0, :cond_6

    goto :goto_3

    .line 463
    :cond_6
    iget v4, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 464
    .local v4, "displayId":I
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 465
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 466
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_7

    .line 467
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 473
    .end local v4    # "displayId":I
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    if-eqz p3, :cond_8

    .line 474
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 476
    .local v4, "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object v0, v4

    .line 479
    .end local v4    # "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_8
    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    .line 480
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_4

    :cond_9
    nop

    :goto_4
    nop

    .line 481
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_a

    .line 483
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 486
    :cond_a
    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    .line 487
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v4

    .line 488
    .local v4, "callerDisplayId":I
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 489
    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 490
    .restart local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_b

    .line 491
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 496
    .end local v4    # "callerDisplayId":I
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_b
    if-nez v0, :cond_c

    if-eqz p4, :cond_c

    .line 497
    iget-object v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 502
    :cond_c
    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v4, :cond_d

    .line 503
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_d

    .line 504
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 509
    :cond_d
    if-eqz v0, :cond_e

    if-eqz p5, :cond_e

    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 510
    invoke-virtual {v4, v5, v0, v3}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_e

    .line 512
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 516
    :cond_e
    if-eqz v0, :cond_f

    .line 517
    move-object v3, v0

    goto :goto_5

    .line 518
    :cond_f
    invoke-direct {p0, p5, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 516
    :goto_5
    return-object v3
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .locals 6
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"    # I
    .param p5, "hasInitialBounds"    # Z
    .param p6, "inOutBounds"    # Landroid/graphics/Rect;

    .line 746
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p4, v0, :cond_0

    if-eq p4, v1, :cond_0

    .line 753
    return-void

    .line 756
    :cond_0
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result v0

    .line 757
    .local v0, "orientation":I
    if-eq v0, v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    goto :goto_0

    .line 759
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/server/wm/LaunchParamsUtil;->getDefaultFreeformSize(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v1

    .line 768
    .local v1, "defaultSize":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 769
    if-nez p5, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    goto :goto_1

    .line 788
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 789
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 790
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p2, v2, v3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    goto :goto_2

    .line 774
    :goto_1
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 778
    :cond_5
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 779
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 778
    invoke-static {p2, v2, v3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 796
    :goto_2
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 797
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1026
    return-void
.end method

.method private static synthetic lambda$adjustBoundsToAvoidConflictInDisplayArea$2(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .locals 2
    .param p0, "taskBoundsToCheck"    # Ljava/util/List;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 862
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    return-void

    .line 866
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 867
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 869
    .end local v0    # "j":I
    return-void
.end method

.method private synthetic lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z
    .locals 6
    .param p1, "resolvedMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 332
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v0, p3

    .end local p1    # "resolvedMode":I
    .end local p2    # "activityType":I
    .end local p3    # "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v1, "resolvedMode":I
    .local v2, "activityType":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 335
    .local p1, "launchRoot":Lcom/android/server/wm/Task;
    if-nez p1, :cond_0

    .line 336
    const/4 p2, 0x0

    return p2

    .line 338
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 339
    const/4 p2, 0x1

    return p2
.end method

.method private static synthetic lambda$getPreferredLaunchTaskDisplayArea$1(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 1
    .param p0, "launchTaskDisplayAreaFeatureId"    # I
    .param p1, "tda"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 435
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 1037
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1038
    :cond_0
    const/4 v0, 0x1

    .line 1037
    :goto_0
    return v0
.end method

.method private outputLog()V
    .locals 0

    .line 1034
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 704
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 705
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 725
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 708
    :pswitch_1
    const/16 v0, 0xe

    .line 709
    goto :goto_0

    .line 722
    :pswitch_2
    const/4 v0, 0x1

    .line 723
    goto :goto_0

    .line 715
    :pswitch_3
    const/4 v0, 0x0

    .line 716
    nop

    .line 728
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 814
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 815
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    nop

    .line 817
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 816
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_0
    move v0, v1

    .line 825
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 826
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 827
    :cond_2
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1
    move v0, v1

    .line 834
    :cond_3
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 994
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1003
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_0

    .line 1000
    .end local v0    # "horizontalOffset":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1001
    .restart local v0    # "horizontalOffset":I
    goto :goto_0

    .line 996
    .end local v0    # "horizontalOffset":I
    :pswitch_2
    nop

    .line 997
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 996
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 998
    .restart local v0    # "horizontalOffset":I
    nop

    .line 1007
    :goto_0
    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1015
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_1

    .line 1012
    .end local v1    # "verticalOffset":I
    :sswitch_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1013
    .restart local v1    # "verticalOffset":I
    goto :goto_1

    .line 1009
    .end local v1    # "verticalOffset":I
    :sswitch_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 1010
    .restart local v1    # "verticalOffset":I
    nop

    .line 1018
    :goto_1
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1019
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 672
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 674
    return v1

    .line 676
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 681
    .local v2, "displayOrientation":I
    nop

    .line 682
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 681
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result v3

    .line 683
    .local v3, "activityOrientation":I
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    if-eq v2, v3, :cond_3

    .line 685
    return v0

    .line 688
    :cond_3
    return v1

    .line 677
    .end local v2    # "displayOrientation":I
    .end local v3    # "activityOrientation":I
    :goto_0
    return v1
.end method

.method private shouldUpdateExistingTaskWindowingMode(Lcom/android/server/wm/Task;I)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "launchMode"    # I

    .line 406
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "left"    # Landroid/graphics/Rect;
    .param p1, "right"    # Landroid/graphics/Rect;

    .line 1042
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1043
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1042
    :goto_0
    return v0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "displayAreaBounds"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 889
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    return-void

    .line 895
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    return-void

    .line 901
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 902
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    nop

    if-ge v2, v1, :cond_5

    aget v3, v0, v2

    .line 903
    .local v3, "direction":I
    if-nez v3, :cond_2

    .line 905
    goto :goto_2

    .line 908
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 909
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    nop

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 910
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 911
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 914
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    nop

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 915
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 917
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 919
    return-void

    .line 902
    .end local v3    # "direction":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    :cond_5
    :goto_2
    return-void
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

    .line 104
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 105
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 107
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 108
    return v0
.end method
