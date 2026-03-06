.class Lcom/android/server/input/KeyGestureController$1;
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

    .line 264
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$1;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$1;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x19

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0xb

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 288
    return-void
.end method

.method public execute()V
    .locals 5

    .line 269
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_GESTURE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nothing/server/ext/INtGesture;

    .line 270
    invoke-interface {v0}, Lcom/nothing/server/ext/INtGesture;->shouldBlockKeyChordScreenshot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "KeyGestureController"

    const-string v1, "Screenshot by power key + volume down is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$1;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v1, 0x19

    const/16 v2, 0x1a

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 279
    return-void
.end method
