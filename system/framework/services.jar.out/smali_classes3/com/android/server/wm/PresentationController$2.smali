.class Lcom/android/server/wm/PresentationController$2;
.super Ljava/lang/Object;
.source "PresentationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/PresentationController;->onPresentationAdded(Lcom/android/server/wm/WindowState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PresentationController;

.field final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/PresentationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iput-object p2, p0, Lcom/android/server/wm/PresentationController$2;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    invoke-static {v0}, Lcom/android/server/wm/PresentationController;->-$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    .line 207
    .local v0, "presentation":Lcom/android/server/wm/PresentationController$Presentation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iget-object v2, v0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/PresentationController;->canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host task moved to display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onRemoved()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$2;->this$0:Lcom/android/server/wm/PresentationController;

    iget-object v1, p0, Lcom/android/server/wm/PresentationController$2;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    const-string v2, "host task removed"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    .line 215
    return-void
.end method
