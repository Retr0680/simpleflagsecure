.class final Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StylusTailButtonRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3136
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 3137
    const/16 p1, 0x137

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    .line 3138
    return-void
.end method


# virtual methods
.method getMaxMultiPressCount()I
    .locals 1

    .line 3142
    const/4 v0, 0x2

    return v0
.end method

.method onKeyUp(JIIII)V
    .locals 3
    .param p1, "eventTime"    # J
    .param p3, "pressCount"    # I
    .param p4, "displayId"    # I
    .param p5, "deviceId"    # I
    .param p6, "metaState"    # I

    .line 3152
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 3153
    return-void

    .line 3156
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x21

    const/16 v2, 0x137

    invoke-static {v0, v1, p5, v2, p6}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleKeyGestureInKeyGestureController(Lcom/android/server/policy/PhoneWindowManager;IIII)V

    .line 3158
    return-void
.end method

.method onPress(JI)V
    .locals 0
    .param p1, "downTime"    # J
    .param p3, "displayId"    # I

    .line 3148
    return-void
.end method
