.class Lcom/android/server/accessibility/autoclick/AutoclickController$2;
.super Ljava/lang/Object;
.source "AutoclickController.java"

# interfaces
.implements Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$ScrollPanelControllerInterface;


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

    .line 142
    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverButtonChange(IZ)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "hovered"    # Z

    .line 148
    const/4 v0, 0x5

    if-eqz p2, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fgetmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$fputmHoveredDirection(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    .line 158
    :cond_1
    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 159
    return-void

    .line 163
    :cond_2
    if-eqz p2, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    if-eqz v1, :cond_3

    .line 166
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorScheduler:Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;

    invoke-virtual {v1}, Lcom/android/server/accessibility/autoclick/AutoclickController$AutoclickIndicatorScheduler;->cancel()V

    .line 167
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    iget-object v1, v1, Lcom/android/server/accessibility/autoclick/AutoclickController;->mAutoclickIndicatorView:Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->clearIndicator()V

    .line 172
    :cond_3
    if-eq p1, v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickController$2;->this$0:Lcom/android/server/accessibility/autoclick/AutoclickController;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickController;->-$$Nest$mhandleScroll(Lcom/android/server/accessibility/autoclick/AutoclickController;I)V

    .line 176
    :cond_4
    return-void
.end method
