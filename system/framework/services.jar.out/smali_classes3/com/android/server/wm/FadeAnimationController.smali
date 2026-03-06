.class public Lcom/android/server/wm/FadeAnimationController;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    }
.end annotation


# static fields
.field static final MEDIUM_DURATION_MS:I = 0x15e

.field static final SHORT_DURATION_MS:I = 0xc8


# instance fields
.field protected final mDisplayContent:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 0
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 44
    return-void
.end method


# virtual methods
.method protected createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .locals 2
    .param p1, "animationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "show"    # Z
    .param p3, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 101
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    return-object v0
.end method

.method protected createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 107
    new-instance v0, Lcom/android/server/wm/FadeAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FadeAnimationController$1;-><init>(Lcom/android/server/wm/FadeAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;I)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p3, "animationType"    # I

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/FadeAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 73
    return-void
.end method

.method public fadeWindowToken(ZLcom/android/server/wm/WindowToken;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 8
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p3, "animationType"    # I
    .param p4, "finishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 85
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    move v5, p1

    move-object v2, p2

    move v6, p3

    move-object v7, p4

    goto :goto_2

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/FadeAnimationController;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 90
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_0
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FadeAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/FadeAnimationController;->createAdapter(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;ZLcom/android/server/wm/WindowToken;)Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move-object v4, v1

    .line 92
    .local v4, "animationAdapter":Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    if-nez v4, :cond_3

    .line 93
    return-void

    .line 95
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    move v5, p1

    move-object v2, p2

    move v6, p3

    move-object v7, p4

    .end local p1    # "show":Z
    .end local p2    # "windowToken":Lcom/android/server/wm/WindowToken;
    .end local p3    # "animationType":I
    .end local p4    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .local v2, "windowToken":Lcom/android/server/wm/WindowToken;
    .local v5, "show":Z
    .local v6, "animationType":I
    .local v7, "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 97
    return-void

    .line 85
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "windowToken":Lcom/android/server/wm/WindowToken;
    .end local v4    # "animationAdapter":Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
    .end local v5    # "show":Z
    .end local v6    # "animationType":I
    .end local v7    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .restart local p1    # "show":Z
    .restart local p2    # "windowToken":Lcom/android/server/wm/WindowToken;
    .restart local p3    # "animationType":I
    .restart local p4    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    :cond_4
    move v5, p1

    move-object v2, p2

    move v6, p3

    move-object v7, p4

    .line 86
    .end local p1    # "show":Z
    .end local p2    # "windowToken":Lcom/android/server/wm/WindowToken;
    .end local p3    # "animationType":I
    .end local p4    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .restart local v2    # "windowToken":Lcom/android/server/wm/WindowToken;
    .restart local v5    # "show":Z
    .restart local v6    # "animationType":I
    .restart local v7    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    :goto_2
    return-void
.end method

.method public getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 3

    .line 50
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 51
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const/16 v1, 0x15e

    invoke-virtual {p0, v1}, Lcom/android/server/wm/FadeAnimationController;->getScaledDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 52
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    return-object v0
.end method

.method public getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 3

    .line 60
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 61
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/server/wm/FadeAnimationController;->getScaledDuration(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 62
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    return-object v0
.end method

.method getScaledDuration(I)J
    .locals 2
    .param p1, "durationMs"    # I

    .line 67
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method
