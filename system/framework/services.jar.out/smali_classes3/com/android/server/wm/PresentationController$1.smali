.class Lcom/android/server/wm/PresentationController$1;
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

.field final synthetic val$displayId:I

.field final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PresentationController;ILcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/PresentationController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    iput p2, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    iput-object p3, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved()V
    .locals 8

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    iget v1, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/PresentationController;->-$$Nest$mhasPresentationWindow(Lcom/android/server/wm/PresentationController;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_ERROR_enabled:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    int-to-long v0, v0

    .local v0, "protoLogParam0":J
    iget-object v2, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x37250f1290fe354fL    # 4.7215635313942315E-43

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 180
    .end local v0    # "protoLogParam0":J
    .end local v2    # "protoLogParam1":Ljava/lang/String;
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    invoke-static {v0}, Lcom/android/server/wm/PresentationController;->-$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    .line 183
    .local v0, "presentation":Lcom/android/server/wm/PresentationController$Presentation;
    iget-object v1, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v0, Lcom/android/server/wm/PresentationController$Presentation;->mPresentationListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 184
    iget-object v1, v0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTask:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, v0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTask:Lcom/android/server/wm/Task;

    iget-object v2, v0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTaskListener:Lcom/android/server/wm/WindowContainerListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/PresentationController$1;->this$0:Lcom/android/server/wm/PresentationController;

    invoke-static {v1}, Lcom/android/server/wm/PresentationController;->-$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/PresentationController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v2, p0, Lcom/android/server/wm/PresentationController$1;->val$displayId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    .line 190
    return-void
.end method
