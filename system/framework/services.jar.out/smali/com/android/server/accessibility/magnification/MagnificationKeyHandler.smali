.class public Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;
    }
.end annotation


# instance fields
.field protected final mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

.field private mIsKeyboardInteracting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    .line 79
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    .line 80
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    .line 81
    return-void
.end method

.method private getDisplayId(Landroid/view/KeyEvent;)I
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 139
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    return v0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 85
    nop

    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 91
    .local v0, "modifiersPressed":Z
    :goto_0
    if-nez v0, :cond_2

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 93
    iget-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onKeyboardInteractionStop()V

    .line 97
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    .line 99
    :cond_1
    return-void

    .line 101
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 102
    .local v3, "isDown":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 103
    .local v4, "keyCode":I
    const/16 v5, 0x15

    if-eq v4, v5, :cond_4

    const/16 v5, 0x16

    if-eq v4, v5, :cond_4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_5

    :cond_4
    goto :goto_4

    .line 118
    :cond_5
    const/16 v1, 0x46

    if-eq v4, v1, :cond_6

    const/16 v5, 0x45

    if-ne v4, v5, :cond_7

    :cond_6
    goto :goto_2

    .line 133
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 134
    return-void

    .line 119
    :goto_2
    const/4 v5, 0x1

    .line 120
    .local v5, "zoomDirection":I
    if-ne v4, v1, :cond_8

    .line 121
    const/4 v5, 0x0

    .line 123
    :cond_8
    if-eqz v3, :cond_9

    .line 124
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->getDisplayId(Landroid/view/KeyEvent;)I

    move-result v6

    invoke-interface {v1, v6, v5}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onScaleMagnificationStart(II)V

    .line 125
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    goto :goto_3

    .line 127
    :cond_9
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onScaleMagnificationStop(I)V

    .line 129
    :goto_3
    return-void

    .line 105
    .end local v5    # "zoomDirection":I
    :goto_4
    packed-switch v4, :pswitch_data_0

    .line 109
    :pswitch_0
    const/4 v1, 0x3

    goto :goto_5

    .line 107
    :pswitch_1
    move v1, v2

    goto :goto_5

    .line 106
    :pswitch_2
    goto :goto_5

    .line 108
    :pswitch_3
    const/4 v1, 0x2

    .line 109
    :goto_5
    nop

    .line 111
    .local v1, "panDirection":I
    if-eqz v3, :cond_a

    .line 112
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->getDisplayId(Landroid/view/KeyEvent;)I

    move-result v6

    invoke-interface {v5, v6, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onPanMagnificationStart(II)V

    .line 113
    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    goto :goto_6

    .line 115
    :cond_a
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {v2, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onPanMagnificationStop(I)V

    .line 117
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
