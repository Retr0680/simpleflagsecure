.class public Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;
.super Ljava/lang/Object;
.source "AutoclickScrollPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;,
        Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollDirection;
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x1

.field public static final DIRECTION_EXIT:I = 0x4

.field public static final DIRECTION_LEFT:I = 0x2

.field public static final DIRECTION_NONE:I = 0x5

.field public static final DIRECTION_RIGHT:I = 0x3

.field public static final DIRECTION_UP:I


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mDownButton:Landroid/widget/ImageButton;

.field private final mExitButton:Landroid/widget/ImageButton;

.field private mInScrollMode:Z

.field private final mLeftButton:Landroid/widget/ImageButton;

.field private final mRightButton:Landroid/widget/ImageButton;

.field private mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

.field private final mUpButton:Landroid/widget/ImageButton;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$J0jBWuJaJLMR5-Kxli3d9cIylf0(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->lambda$setupHoverListenerForButton$0(ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "controller"    # Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    .line 88
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 90
    iput-object p3, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    const v1, 0x10204ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mUpButton:Landroid/widget/ImageButton;

    .line 96
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    const v1, 0x10204e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mLeftButton:Landroid/widget/ImageButton;

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    const v1, 0x10204e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mRightButton:Landroid/widget/ImageButton;

    .line 98
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    const v1, 0x10204e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mDownButton:Landroid/widget/ImageButton;

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    const v1, 0x10204e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mExitButton:Landroid/widget/ImageButton;

    .line 101
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->initializeButtonState()V

    .line 102
    return-void
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 180
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 181
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 182
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 183
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 184
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 185
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 186
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 187
    const-class v1, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContext:Landroid/content/Context;

    .line 189
    const v2, 0x10400e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 190
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 191
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 192
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 193
    return-object v0
.end method

.method private initializeButtonState()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mUpButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 110
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mLeftButton:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mRightButton:Landroid/widget/ImageButton;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mDownButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 113
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mExitButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->setupHoverListenerForButton(Landroid/widget/ImageButton;I)V

    .line 114
    return-void
.end method

.method private synthetic lambda$setupHoverListenerForButton$0(ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 143
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 144
    return v1

    .line 148
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :pswitch_0
    return v1

    .line 162
    :pswitch_1
    const/4 v0, 0x0

    .line 163
    .local v0, "hovered":Z
    goto :goto_0

    .line 150
    .end local v0    # "hovered":Z
    :pswitch_2
    const/4 v0, 0x1

    .line 151
    .restart local v0    # "hovered":Z
    goto :goto_0

    .line 154
    .end local v0    # "hovered":Z
    :pswitch_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 155
    const/4 v0, 0x1

    .line 169
    .restart local v0    # "hovered":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mScrollPanelController:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;->onHoverButtonChange(IZ)V

    .line 170
    return v1

    .line 158
    .end local v0    # "hovered":Z
    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setupHoverListenerForButton(Landroid/widget/ImageButton;I)V
    .locals 1
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "direction"    # I

    .line 142
    new-instance v0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 172
    return-void
.end method


# virtual methods
.method public getContentViewForTesting()Landroid/view/View;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutParamsForTesting()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    .line 136
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    return v0
.end method

.method public show()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->mInScrollMode:Z

    .line 125
    return-void
.end method
