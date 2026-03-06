.class Lcom/android/server/input/KeyGestureController$4;
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

    .line 346
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method

.method private getGestureType()I
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 388
    const/4 v0, 0x0

    return v0

    .line 385
    :pswitch_0
    const/16 v0, 0x39

    return v0

    .line 382
    :pswitch_1
    const/16 v0, 0x38

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .line 368
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController$4;->getGestureType()I

    move-result v0

    .line 369
    .local v0, "gestureType":I
    if-nez v0, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v2, 0x18

    const/16 v3, 0x1a

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 376
    return-void
.end method

.method public execute()V
    .locals 5

    .line 358
    invoke-direct {p0}, Lcom/android/server/input/KeyGestureController$4;->getGestureType()I

    move-result v0

    .line 359
    .local v0, "gestureType":I
    if-nez v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    const/16 v2, 0x18

    const/16 v3, 0x1a

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/input/KeyGestureController;->-$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V

    .line 365
    return-void
.end method

.method public preCondition()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmPowerVolUpBehavior(Lcom/android/server/input/KeyGestureController;)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 353
    return v1

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$4;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-static {v0}, Lcom/android/server/input/KeyGestureController;->-$$Nest$fgetmRingerToggleChord(Lcom/android/server/input/KeyGestureController;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
