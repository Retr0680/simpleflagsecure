.class Lcom/android/server/wm/PresentationController;
.super Ljava/lang/Object;
.source "PresentationController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PresentationController$Presentation;
    }
.end annotation


# instance fields
.field private final mPresentations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/PresentationController$Presentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmPresentations(Lcom/android/server/wm/PresentationController;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhasPresentationWindow(Lcom/android/server/wm/PresentationController;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/PresentationController;->hasPresentationWindow(I)Z

    move-result p0

    return p0
.end method

.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    return-void
.end method

.method private getPresentation(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/PresentationController$Presentation;
    .locals 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 71
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 72
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PresentationController$Presentation;

    .line 74
    .local v2, "presentation":Lcom/android/server/wm/PresentationController$Presentation;
    iget-object v3, v2, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_1

    return-object v2

    .line 72
    .end local v2    # "presentation":Lcom/android/server/wm/PresentationController$Presentation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 76
    .end local v1    # "i":I
    return-object v0
.end method

.method private hasPresentationWindow(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$removePresentation$0(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 89
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getUid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/PresentationController;->canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;II)Z

    move-result v0

    return v0
.end method

.method canPresent(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayContent;II)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "type"    # I
    .param p4, "uid"    # I

    .line 100
    const/16 v0, 0x7ee

    if-ne p3, v0, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    return v0

    .line 105
    :cond_0
    const/16 v0, 0x7f5

    if-eq p3, v0, :cond_1

    .line 106
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_1
    nop

    .line 110
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->isPublicPresentation()Z

    move-result v0

    return v0
.end method

.method isPresentationVisible(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    .line 85
    .local v0, "presentation":Lcom/android/server/wm/PresentationController$Presentation;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 239
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 247
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/PresentationController;->removePresentation(ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method onPresentationAdded(Lcom/android/server/wm/WindowState;I)V
    .locals 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "uid"    # I

    .line 169
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 170
    .local v0, "displayId":I
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    int-to-long v3, v0

    .local v3, "protoLogParam0":J
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, 0x356cd1f34bc735b7L    # 2.4071686273437146E-51

    invoke-static {v5, v7, v8, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 172
    .end local v1    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam0":J
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    .line 174
    new-instance v1, Lcom/android/server/wm/PresentationController$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/wm/PresentationController$1;-><init>(Lcom/android/server/wm/PresentationController;ILcom/android/server/wm/WindowState;)V

    .line 192
    .local v1, "presentationWindowListener":Lcom/android/server/wm/WindowContainerListener;
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "hostTask":Lcom/android/server/wm/Task;
    nop

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "hostTaskListener":Lcom/android/server/wm/WindowContainerListener;
    if-eqz v2, :cond_1

    .line 204
    new-instance v4, Lcom/android/server/wm/PresentationController$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/PresentationController$2;-><init>(Lcom/android/server/wm/PresentationController;Lcom/android/server/wm/WindowState;)V

    move-object v3, v4

    .line 217
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 220
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/wm/PresentationController$Presentation;

    invoke-direct {v5, p1, v1, v2, v3}, Lcom/android/server/wm/PresentationController$Presentation;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainerListener;)V

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    return-void
.end method

.method removePresentation(ILjava/lang/String;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/PresentationController;->mPresentations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PresentationController$Presentation;

    .line 226
    .local v0, "presentation":Lcom/android/server/wm/PresentationController$Presentation;
    nop

    .line 236
    return-void
.end method

.method shouldOccludeActivities(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 165
    const/4 v0, 0x0

    return v0
.end method
