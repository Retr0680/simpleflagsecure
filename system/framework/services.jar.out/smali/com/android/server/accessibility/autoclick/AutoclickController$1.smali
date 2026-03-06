.class Lcom/android/server/accessibility/autoclick/AutoclickController$1;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Lcom/android/server/accessibility/autoclick/AutoclickTypePanel$ClickPanelControllerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoclick/AutoclickController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/autoclick/AutoclickController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAutoclickTypeChange(I)V
    .locals 1
    .param p1, "clickType"    # I

    .line 115
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmActiveClickType(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    .line 118
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v0, v0, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickScrollPanel:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    invoke-virtual {v0}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->hide()V

    .line 121
    :cond_0
    return-void
.end method

.method public onHoverChange(Z)V
    .locals 1
    .param p1, "hovered"    # Z

    .line 134
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$misPaused(Lcom/android/server/accessibility/autoclick/AutoclickController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mcancelPendingClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    .line 137
    :cond_0
    return-void
.end method

.method public toggleAutoclickPause(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 125
    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$1;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mcancelPendingClick(Lcom/android/server/accessibility/autoclick/AutoclickController;)V

    .line 128
    :cond_0
    return-void
.end method
