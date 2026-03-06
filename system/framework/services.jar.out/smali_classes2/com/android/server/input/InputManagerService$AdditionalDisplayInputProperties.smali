.class Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdditionalDisplayInputProperties"
.end annotation


# static fields
.field static final DEFAULT_MOUSE_SCALING_ENABLED:Z = true

.field static final DEFAULT_POINTER_ICON_VISIBLE:Z = true


# instance fields
.field public mouseScalingEnabled:Z

.field public pointerIconVisible:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3975
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->reset()V

    .line 3976
    return-void
.end method


# virtual methods
.method public allDefaults()Z
    .locals 2

    .line 3979
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 1

    .line 3984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    .line 3985
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    .line 3986
    return-void
.end method
