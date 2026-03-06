.class Lcom/android/server/input/KeyGestureController$2;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "KeyGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/KeyGestureController;->initKeyCombinationRules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/input/KeyGestureController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/KeyGestureController;
    .param p2, "keyCode1"    # I
    .param p3, "keyCode2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$2;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$2;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x1a

    const/16 v2, 0x108

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 309
    return-void
.end method

.method public execute()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$2;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x1a

    const/16 v2, 0x108

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 301
    return-void
.end method
