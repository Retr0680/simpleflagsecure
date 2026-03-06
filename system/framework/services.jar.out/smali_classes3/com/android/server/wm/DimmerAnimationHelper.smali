.class public Lcom/android/server/wm/DimmerAnimationHelper;
.super Ljava/lang/Object;
.source "DimmerAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimmerAnimationHelper$Change;,
        Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;,
        Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_ANIM_DURATION_MS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

.field private final mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

.field private final mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field private mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

.field private final mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

.field private final mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method public static synthetic $r8$lambda$-4RXDsMsps1xuQdh2yjXk8VxS7M(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->lambda$startAnimation$0(Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V
    .locals 1
    .param p2, "animationFactory"    # Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "host":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 94
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 102
    iput-object p2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    .line 103
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 104
    return-void
.end method

.method private static getDimDuration(Lcom/android/server/wm/WindowContainer;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)J"
        }
    .end annotation

    .line 302
    .local p0, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    .line 304
    .local v0, "animationAdapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    .line 305
    .local v1, "durationScale":F
    if-nez v0, :cond_0

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long v2, v2

    goto :goto_0

    .line 306
    :cond_0
    invoke-interface {v0}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v2

    .line 305
    :goto_0
    return-wide v2

    .line 308
    .end local v0    # "animationAdapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v1    # "durationScale":F
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getRequestedAnimationSpec(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
    .locals 11
    .param p0, "from"    # Lcom/android/server/wm/DimmerAnimationHelper$Change;
    .param p1, "to"    # Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 230
    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 231
    .local v0, "startAlpha":F
    invoke-static {p0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 232
    .local v1, "startBlur":I
    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/DimmerAnimationHelper;->getDimDuration(Lcom/android/server/wm/WindowContainer;)J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v4

    sub-float/2addr v4, v0

    .line 233
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 235
    .local v3, "duration":J
    new-instance v5, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    new-instance v6, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7, v3, v4}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V

    .line 240
    .local v5, "spec":Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v7, 0x1

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x107bda7fb260c74eL

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8, v9, v2, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 241
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private synthetic lambda$startAnimation$0(Lcom/android/server/wm/Dimmer$DimState;FILcom/android/server/wm/AnimationAdapter;)V
    .locals 3
    .param p1, "dim"    # Lcom/android/server/wm/Dimmer$DimState;
    .param p2, "targetAlpha"    # F
    .param p3, "type"    # I
    .param p4, "animator"    # Lcom/android/server/wm/AnimationAdapter;

    .line 204
    iget-object v0, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/EventLogTags;->writeWmDimFinishAnim(I)V

    .line 206
    iget-object v1, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    .line 207
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 208
    .local v1, "finishTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    .line 209
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 212
    iget-object v2, p1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    goto :goto_0

    .line 216
    .end local v1    # "finishTransaction":Landroid/view/SurfaceControl$Transaction;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 214
    .restart local v1    # "finishTransaction":Landroid/view/SurfaceControl$Transaction;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 215
    iput-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 216
    .end local v1    # "finishTransaction":Landroid/view/SurfaceControl$Transaction;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 217
    return-void

    .line 216
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static setBounds(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V
    .locals 10
    .param p0, "dim"    # Lcom/android/server/wm/Dimmer$DimState;
    .param p1, "relativeParent"    # Lcom/android/server/wm/WindowState;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 267
    .local v0, "taskFragment":Lcom/android/server/wm/TaskFragment;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 268
    .local v2, "taskFragmentBounds":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 269
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 270
    .local v1, "taskBounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 271
    .local v4, "hostBounds":Landroid/graphics/Rect;
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v5

    .line 273
    .local v6, "isEmbedded":Z
    :goto_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 274
    .local v7, "relativeBounds":Landroid/graphics/Rect;
    if-eqz v6, :cond_4

    .line 276
    iget-object v5, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 277
    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v2

    .line 276
    :goto_2
    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    iget-object v5, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 279
    iget v5, v1, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget v8, v1, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    invoke-virtual {v7, v5, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 281
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    iget-object v8, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    invoke-virtual {v7, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 286
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p2, v5, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 287
    iget-object v5, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {p2, v5, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 288
    return-void
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)V
    .locals 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "dim"    # Lcom/android/server/wm/Dimmer$DimState;
    .param p3, "from"    # Lcom/android/server/wm/DimmerAnimationHelper$Change;
    .param p4, "to"    # Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 194
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x5838e9a5f346c47cL

    invoke-static {v1, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 195
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_0
    invoke-static {p3, p4}, Lcom/android/server/wm/DimmerAnimationHelper;->getRequestedAnimationSpec(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;->get(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 199
    invoke-static {p4}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v0

    .line 200
    .local v0, "targetAlpha":F
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    invoke-static {p4}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/EventLogTags;->writeWmDimAnimate(IFF)V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    iget-object v2, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    new-instance v3, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V

    const/4 v4, 0x4

    invoke-interface {v1, v2, p1, v4, v3}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 218
    return-void
.end method


# virtual methods
.method applyChanges(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;)V
    .locals 12
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "dim"    # Lcom/android/server/wm/Dimmer$DimState;

    .line 136
    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    .line 137
    .local v0, "startProperties":Lcom/android/server/wm/DimmerAnimationHelper$Change;
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->copyFrom(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const-string v2, "WindowManager"

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have a dimming container. Have you forgotten to call adjustRelativeLayer?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v3}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "does not have a surface"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 148
    return-void

    .line 150
    :cond_1
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimming surface "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has already been released! Can not apply changes."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 156
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->ensureVisible(Landroid/view/SurfaceControl$Transaction;)V

    .line 157
    nop

    .line 158
    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v2, v4, :cond_4

    .line 161
    iget-object v2, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    goto :goto_1

    :cond_4
    nop

    .line 157
    :goto_1
    invoke-virtual {p0, p2, v1, v3, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->reparent(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 162
    nop

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setBounds(Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->hasSameVisualProperties(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 167
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v1

    const-string v2, "new target values"

    invoke-static {v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmDimCancelAnim(ILjava/lang/String;)V

    .line 168
    iget-object v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->stopCurrentAnimation(Landroid/view/SurfaceControl;)V

    .line 170
    iget-boolean v1, p2, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    nop

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->hasSameDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 182
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Dimmer$DimState;Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    goto :goto_3

    .line 175
    :cond_6
    :goto_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_7

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v3

    float-to-double v3, v3

    .local v3, "protoLogParam1":D
    iget-object v5, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v5}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v5

    int-to-long v5, v5

    .local v5, "protoLogParam2":J
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v1, v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-wide v9, 0x346ea5c6c622399aL    # 3.905950942569482E-56

    const/16 v11, 0x18

    invoke-static {v7, v9, v10, v11, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 179
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":D
    .end local v5    # "protoLogParam2":J
    :cond_7
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    .line 180
    iput-boolean v2, p2, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    goto :goto_3

    .line 184
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v1

    if-nez v1, :cond_9

    .line 187
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 189
    :cond_9
    :goto_3
    return-void
.end method

.method reparent(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "dim"    # Lcom/android/server/wm/Dimmer$DimState;
    .param p2, "newGeometryParent"    # Landroid/view/SurfaceControl;
    .param p3, "newRelativeParent"    # Landroid/view/SurfaceControl;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 251
    iget-object v0, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 253
    .local v0, "dimLayer":Landroid/view/SurfaceControl;
    if-eqz p2, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {p4, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    goto :goto_1

    .line 256
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 257
    const/4 v1, -0x1

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 259
    :goto_1
    nop

    .line 260
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to change parent of dim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " after remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 261
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :goto_2
    nop

    .line 262
    :goto_3
    return-void
.end method

.method setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "dim"    # Lcom/android/server/wm/Dimmer$DimState;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 291
    iget-object v0, p1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    .line 293
    .local v0, "sc":Landroid/view/SurfaceControl;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to change look of dim "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " after remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method setExitParameters()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V

    .line 108
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper;->setRequestedAppearance(FI)V

    .line 109
    return-void
.end method

.method setRequestedAppearance(FI)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "blurRadius"    # I

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;F)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0, p2}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;I)V

    .line 127
    return-void
.end method

.method setRequestedGeometryParent(Lcom/android/server/wm/WindowContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 118
    .local p1, "geometryParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowContainer;)V

    .line 121
    :cond_0
    return-void
.end method

.method setRequestedRelativeParent(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "relativeParent"    # Lcom/android/server/wm/WindowState;

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    invoke-static {v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->-$$Nest$fputmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowState;)V

    .line 114
    return-void
.end method

.method stopCurrentAnimation(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->inheritPropertiesFromAnimation(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/AnimationAdapter;

    .line 225
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    .line 226
    return-void
.end method
