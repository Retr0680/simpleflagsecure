.class public Lcom/android/server/input/debug/TouchpadSelectionView;
.super Landroid/widget/LinearLayout;
.source "TouchpadSelectionView.java"


# static fields
.field private static final TEXT_SIZE_SP:F = 16.0f


# instance fields
.field mCurrentTouchpadId:I


# direct methods
.method public static synthetic $r8$lambda$Cgj4SGPa5QUH5PwFh27-vhrjlfM(Lcom/android/server/input/debug/TouchpadSelectionView;Landroid/content/Context;Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/debug/TouchpadSelectionView;->lambda$init$0(Landroid/content/Context;Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fte8vHin7tFS_3M8Z0-6JIkWlsk(Lcom/android/server/input/debug/TouchpadSelectionView;Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadSelectionView;->lambda$showPopupMenu$1(Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "touchpadId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p3, "touchpadSwitchHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput p2, p0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/android/server/input/debug/TouchpadSelectionView;->init(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 44
    return-void
.end method

.method private getTouchpadName(I)Ljava/lang/String;
    .locals 2
    .param p1, "touchpadId"    # I

    .line 107
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    return-object v0
.end method

.method private init(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p2, "touchpadSwitchHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 53
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "nameView":Landroid/widget/TextView;
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget v3, p0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    invoke-direct {p0, v3}, Lcom/android/server/input/debug/TouchpadSelectionView;->getTouchpadName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v3, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, "arrowButton":Landroid/widget/ImageButton;
    const v5, 0x1080002

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setForegroundGravity(I)V

    .line 67
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadSelectionView;Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method private synthetic lambda$init$0(Landroid/content/Context;Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "touchpadSwitchHandler"    # Ljava/util/function/Consumer;
    .param p3, "v"    # Landroid/view/View;

    .line 72
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/input/debug/TouchpadSelectionView;->showPopupMenu(Landroid/view/View;Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$showPopupMenu$1(Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "touchpadSwitchHandler"    # Ljava/util/function/Consumer;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 95
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method private showPopupMenu(Landroid/view/View;Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p3, "touchpadSwitchHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget v7, v3, v6

    .line 86
    .local v7, "deviceId":I
    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v8

    .line 87
    .local v8, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, 0x10200a

    invoke-virtual {v8, v9}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/android/server/input/debug/TouchpadSelectionView;->getTouchpadName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v5, v7, v0, v10}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 85
    .end local v7    # "deviceId":I
    .end local v8    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v3, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p3}, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/TouchpadSelectionView;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 103
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 104
    return-void
.end method
