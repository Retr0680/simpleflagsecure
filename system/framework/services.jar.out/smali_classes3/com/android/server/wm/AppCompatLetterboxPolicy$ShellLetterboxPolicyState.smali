.class Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;
.super Ljava/lang/Object;
.source "AppCompatLetterboxPolicy.java"

# interfaces
.implements Lcom/android/server/wm/AppCompatLetterboxPolicyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatLetterboxPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellLetterboxPolicyState"
.end annotation


# instance fields
.field private final mInnerBounds:Landroid/graphics/Rect;

.field private final mLetterboxPosition:Landroid/graphics/Point;

.field private final mOuterBounds:Landroid/graphics/Rect;

.field private mRunning:Z

.field final synthetic this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;


# direct methods
.method public static synthetic $r8$lambda$Uw8dZGU8azUuRlKFHPWvzHR1HHQ(Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->lambda$layoutLetterboxIfNeeded$0()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/wm/AppCompatLetterboxPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    .line 479
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    .line 480
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    return-void
.end method

.method private synthetic lambda$layoutLetterboxIfNeeded$0()Landroid/graphics/Rect;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 542
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 545
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 546
    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 548
    .end local v0    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 551
    :goto_0
    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .locals 7

    .line 529
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 531
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 532
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    .line 533
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 534
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 530
    return-object v0

    .line 537
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getLetterboxOuterBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 555
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 560
    :goto_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 524
    return-void
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 581
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRunning:Z

    return v0
.end method

.method public layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRunning:Z

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxPosition(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Point;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxOuterBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/AppCompatLetterboxUtils;->calculateLetterboxInnerBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;)V

    .line 490
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V

    .line 491
    return-void
.end method

.method public onMovedToDisplay(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 501
    return-void
.end method

.method public stop()V
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mRunning:Z

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mLetterboxPosition:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mInnerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->mOuterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$fgetmActivityRecord(Lcom/android/server/wm/AppCompatLetterboxPolicy;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;

    move-result-object v0

    .line 513
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V

    .line 514
    return-void
.end method

.method public updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "inputT"    # Landroid/view/SurfaceControl$Transaction;

    .line 567
    invoke-static {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->-$$Nest$smshouldNotLayoutLetterbox(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatLetterboxPolicy$ShellLetterboxPolicyState;->this$0:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    .line 571
    return-void
.end method
