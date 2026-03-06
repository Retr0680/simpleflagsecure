.class Lcom/android/server/wm/DisplayContent$4;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayContent;->findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field behindTopWindow:Z

.field final synthetic val$searchBehind:Lcom/android/server/wm/WindowState;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayContent;
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

    .line 6959
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6960
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "nextWindow"    # Lcom/android/server/wm/WindowState;

    .line 6964
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 6965
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$4;->val$searchBehind:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    .line 6966
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent$4;->behindTopWindow:Z

    .line 6968
    :cond_0
    return v2

    .line 6970
    :cond_1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 6971
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6972
    return v2

    .line 6975
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6976
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent$4;->val$taskId:I

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    goto :goto_0

    .line 6980
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6981
    return v2

    .line 6983
    :cond_5
    return v1

    .line 6977
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :goto_0
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 6959
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$4;->test(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
