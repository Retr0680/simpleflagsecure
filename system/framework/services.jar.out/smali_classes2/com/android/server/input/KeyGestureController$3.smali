.class Lcom/android/server/input/KeyGestureController$3;
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

    .line 316
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x19

    const/16 v2, 0x18

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x37

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 338
    return-void
.end method

.method public execute()V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x19

    const/16 v2, 0x18

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x37

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 329
    return-void
.end method

.method public preCondition()Z
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    iget-object v0, v0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController$3;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v1}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmWindowManagerCallbacks(Lcom/android/server/input/KeyGestureController;)Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-result-object v1

    .line 320
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;->isKeyguardLocked(I)Z

    move-result v1

    .line 319
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    return v0
.end method
