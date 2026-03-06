.class public Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AutoclickLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method


# virtual methods
.method public onHoverChanged(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .line 74
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverChanged(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->mListener:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->mListener:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;->onHoverChanged(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 66
    .local v0, "action":I
    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setHovered(Z)V

    .line 69
    return v2
.end method

.method public setOnHoverChangedListener(Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;

    .line 60
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout;->mListener:Lcom/android/server/accessibility/autoclick/AutoclickLinearLayout$OnHoverChangedListener;

    .line 61
    return-void
.end method
