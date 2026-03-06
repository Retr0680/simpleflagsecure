.class public Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;
.super Ljava/lang/Object;
.source "AutoclickTypePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;,
        Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$Corner;,
        Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$AutoclickType;
    }
.end annotation


# static fields
.field public static final AUTOCLICK_TYPE_DOUBLE_CLICK:I = 0x2

.field public static final AUTOCLICK_TYPE_DRAG:I = 0x3

.field public static final AUTOCLICK_TYPE_LEFT_CLICK:I = 0x0

.field public static final AUTOCLICK_TYPE_RIGHT_CLICK:I = 0x1

.field public static final AUTOCLICK_TYPE_SCROLL:I = 0x4

.field public static final CORNER_BOTTOM_LEFT:I = 0x1

.field public static final CORNER_BOTTOM_RIGHT:I = 0x0

.field public static final CORNER_TOP_LEFT:I = 0x2

.field public static final CORNER_TOP_RIGHT:I = 0x3

.field private static final PANEL_EDGE_MARGIN:I = 0xf

.field protected static final POSITION_DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

.field private final mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mCurrentCorner:I

.field private final mDoubleClickButton:Landroid/widget/LinearLayout;

.field private final mDragButton:Landroid/widget/LinearLayout;

.field private mExpanded:Z

.field private mIsDragging:Z

.field private final mLeftClickButton:Landroid/widget/LinearLayout;

.field private mPanelStartX:I

.field private mPanelStartY:I

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPauseButton:Landroid/widget/LinearLayout;

.field private final mPauseButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaused:Z

.field private final mPositionButton:Landroid/widget/LinearLayout;

.field private final mResumeButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRightClickButton:Landroid/widget/LinearLayout;

.field private final mScrollButton:Landroid/widget/LinearLayout;

.field private mSelectedButton:Landroid/widget/LinearLayout;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private final mUserId:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$57OX0rR8--VAxgyx22alQ0WZoVw(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AknxtO-E76stN5RP2cX6X-GMmEk(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FfiK5Uw3dYQWfKLQP-Ioc7hlpJU(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H0aA6R8l5RdVtqrS7VzqahPI6Ag(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jok28F_iePa94uFzq4wGXvVJ5CU(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->onPanelTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RsBtQonrwbPQtkH6kwUoeN5TDGY(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UcQhnL6g5NzSN2luUF_fR4adGUs(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xshp8ZORxYqlEXoUaUvtGD3fuGY(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$wrapWithTogglePauseListener$7(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fY-QQNLDz9shZOpM0fhkBSPKnW4(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->lambda$initializeButtonState$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;ILcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "userId"    # I
    .param p4, "clickPanelController"    # Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    .line 134
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 154
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 156
    iput p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mUserId:I

    .line 157
    iput-object p4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    .line 158
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x108012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    const v1, 0x108012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mResumeButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    nop

    .line 166
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 167
    const v1, 0x1090019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    .line 168
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;)V

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->setOnHoverChangedListener(Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    .line 170
    const v1, 0x10201b0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    .line 172
    const v1, 0x10201b6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    .line 174
    const v1, 0x10201ac

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/LinearLayout;

    .line 175
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10201b8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/LinearLayout;

    .line 176
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10201ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/LinearLayout;

    .line 177
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10201b2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/LinearLayout;

    .line 178
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    const v1, 0x10201b4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/LinearLayout;

    .line 180
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->initializeButtonState()V

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    return-void
.end method

.method private getButtonFromClickType(I)Landroid/widget/LinearLayout;
    .locals 3
    .param p1, "clickType"    # I

    .line 410
    packed-switch p1, :pswitch_data_0

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown clickType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 414
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 412
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 411
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    .line 410
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 577
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 578
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 579
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 580
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 581
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 582
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 583
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 584
    const-class v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 586
    const v2, 0x10400e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 587
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 588
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 589
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 590
    return-object v0
.end method

.method private hideAllClickTypeButtons()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    return-void
.end method

.method private initializeButtonState()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 271
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 273
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 275
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 278
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    .line 280
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPositionButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->resetSelectedClickType()V

    .line 287
    return-void
.end method

.method private isValidPositionParts([Ljava/lang/String;)Z
    .locals 9
    .param p1, "parts"    # [Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_2

    .line 506
    :cond_1
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 507
    .local v1, "gravity":I
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 508
    .local v4, "x":I
    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 509
    .local v5, "y":I
    const/4 v6, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 512
    .local v6, "cornerIndex":I
    const v7, 0x800033

    if-eq v1, v7, :cond_2

    const v7, 0x800035

    if-eq v1, v7, :cond_2

    const v7, 0x800053

    if-eq v1, v7, :cond_2

    const v7, 0x800055

    if-eq v1, v7, :cond_2

    .line 515
    return v0

    .line 519
    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 520
    .local v7, "screenWidth":I
    iget-object v8, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 521
    .local v8, "screenHeight":I
    if-ltz v4, :cond_3

    if-gt v4, v7, :cond_3

    if-ltz v5, :cond_3

    if-le v5, v8, :cond_4

    :cond_3
    goto :goto_1

    .line 526
    :cond_4
    if-ltz v6, :cond_5

    if-lt v6, v2, :cond_6

    :cond_5
    goto :goto_0

    .line 529
    :cond_6
    return v3

    .line 527
    :goto_0
    return v0

    .line 522
    :goto_1
    return v0

    .line 502
    .end local v1    # "gravity":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "cornerIndex":I
    .end local v7    # "screenWidth":I
    .end local v8    # "screenHeight":I
    :goto_2
    return v0
.end method

.method private synthetic lambda$initializeButtonState$0(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method private synthetic lambda$initializeButtonState$1(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method private synthetic lambda$initializeButtonState$2(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 276
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method private synthetic lambda$initializeButtonState$3(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 278
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method private synthetic lambda$initializeButtonState$4(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 280
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePanelExpansion(I)V

    return-void
.end method

.method private synthetic lambda$initializeButtonState$5(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 281
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->moveToNextCorner()V

    return-void
.end method

.method private synthetic lambda$initializeButtonState$6(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 284
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePause()V

    return-void
.end method

.method private synthetic lambda$wrapWithTogglePauseListener$7(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "v"    # Landroid/view/View;

    .line 535
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 538
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->togglePause()V

    .line 541
    :cond_0
    return-void
.end method

.method private moveToNextCorner()V
    .locals 4

    .line 422
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 423
    .local v0, "nextCorner":I
    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 425
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 426
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    return-void
.end method

.method private onPanelTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 194
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 235
    return v1

    .line 210
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    .line 213
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 215
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartX:F

    sub-float/2addr v0, v1

    .line 218
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartY:F

    sub-float/2addr v1, v3

    .line 221
    .local v1, "deltaY":F
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartX:I

    float-to-int v5, v0

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 222
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartY:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 223
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iget-object v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :cond_0
    return v2

    .line 228
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->snapToNearestEdge(Landroid/view/WindowManager$LayoutParams;)V

    .line 232
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    .line 233
    return v2

    .line 197
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartX:F

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mTouchStartY:F

    .line 204
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 205
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 206
    aget v1, v0, v1

    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartX:I

    .line 207
    aget v1, v0, v2

    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPanelStartY:I

    .line 208
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restorePanelPosition()V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_panel_position"

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "savedPosition":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 479
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 480
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 481
    return-void

    .line 485
    :cond_0
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "parts":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->isValidPositionParts([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 487
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V

    .line 488
    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 489
    return-void

    .line 493
    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 494
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 495
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 496
    const/4 v1, 0x3

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 497
    return-void
.end method

.method private savePanelPosition()V
    .locals 4

    .line 460
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 461
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 462
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 463
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 464
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 460
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "positionString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_autoclick_panel_position"

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 468
    return-void
.end method

.method private setPanelPositionForCorner(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "corner"    # I

    .line 433
    const/16 v0, 0x5a

    const/16 v1, 0x1e

    const/16 v2, 0xf

    packed-switch p2, :pswitch_data_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid corner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_0
    const v0, 0x800035

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 451
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 452
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 453
    goto :goto_0

    .line 445
    :pswitch_1
    const v0, 0x800033

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 446
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 447
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 448
    goto :goto_0

    .line 440
    :pswitch_2
    const v1, 0x800053

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 441
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 442
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 443
    goto :goto_0

    .line 435
    :pswitch_3
    const v1, 0x800055

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 436
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 437
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 438
    nop

    .line 457
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSelectedClickType(I)V
    .locals 3
    .param p1, "clickType"    # I

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getButtonFromClickType(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 301
    .local v0, "selectedButton":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/LinearLayout;Z)V

    .line 305
    :cond_0
    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/LinearLayout;

    .line 306
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;->handleAutoclickTypeChange(I)V

    .line 309
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/LinearLayout;Z)V

    .line 310
    return-void
.end method

.method private showAllClickTypeButtons()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mRightClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDoubleClickButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mDragButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mScrollButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    return-void
.end method

.method private snapToNearestEdge(Landroid/view/WindowManager$LayoutParams;)V
    .locals 5
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 241
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 242
    .local v0, "screenWidth":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 245
    .local v1, "yPosition":I
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 247
    .local v2, "isOnLeftHalf":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 249
    const v3, 0x800033

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 252
    iput v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    goto :goto_1

    .line 255
    :cond_1
    const v3, 0x800035

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 258
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    .line 263
    :goto_1
    const/16 v3, 0xf

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 264
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 265
    iget-object v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-interface {v3, v4, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-void
.end method

.method private togglePanelExpansion(I)V
    .locals 2
    .param p1, "clickType"    # I

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->getButtonFromClickType(I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 362
    .local v0, "button":Landroid/widget/LinearLayout;
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hideAllClickTypeButtons()V

    .line 366
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setSelectedClickType(I)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->showAllClickTypeButtons()V

    .line 376
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    .line 377
    return-void
.end method

.method private togglePause()V
    .locals 2

    .line 380
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mClickPanelController:Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;

    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    invoke-interface {v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;->toggleAutoclickPause(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 384
    .local v0, "imageButton":Landroid/widget/ImageButton;
    iget-boolean v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mResumeButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPauseButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :goto_0
    return-void
.end method

.method private toggleSelectedButtonStyle(Landroid/widget/LinearLayout;Z)V
    .locals 7
    .param p1, "button"    # Landroid/widget/LinearLayout;
    .param p2, "isSelected"    # Z

    .line 314
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 315
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 317
    const v2, 0x10602cd

    const v3, 0x10602c1

    if-eqz p2, :cond_0

    .line 318
    move v4, v3

    goto :goto_0

    .line 319
    :cond_0
    move v4, v2

    .line 316
    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 323
    .local v1, "imageButton":Landroid/widget/ImageButton;
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 324
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContext:Landroid/content/Context;

    .line 327
    if-eqz p2, :cond_1

    .line 328
    goto :goto_1

    .line 329
    :cond_1
    move v2, v3

    .line 326
    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 325
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 330
    return-void
.end method

.method private wrapWithTogglePauseListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 534
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method getContentViewForTesting()Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    return-object v0
.end method

.method getCurrentCornerForTesting()I
    .locals 1

    .line 558
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mCurrentCorner:I

    return v0
.end method

.method getExpansionStateForTesting()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mExpanded:Z

    return v0
.end method

.method getIsDraggingForTesting()Z
    .locals 1

    .line 568
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mIsDragging:Z

    return v0
.end method

.method getLayoutParamsForTesting()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mSelectedButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->toggleSelectedButtonStyle(Landroid/widget/LinearLayout;Z)V

    .line 345
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->savePanelPosition()V

    .line 347
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 348
    return-void
.end method

.method public isHovered()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mPaused:Z

    return v0
.end method

.method public resetSelectedClickType()V
    .locals 2

    .line 291
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->hideAllClickTypeButtons()V

    .line 292
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mLeftClickButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->setSelectedClickType(I)V

    .line 294
    return-void
.end method

.method public show()V
    .locals 3

    .line 335
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->restorePanelPosition()V

    .line 336
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mContentView:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;

    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickTypePanel;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void
.end method
