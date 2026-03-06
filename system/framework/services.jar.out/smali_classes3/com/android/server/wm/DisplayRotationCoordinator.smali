.class Lcom/android/server/wm/DisplayRotationCoordinator;
.super Ljava/lang/Object;
.source "DisplayRotationCoordinator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayRotationCoordinator"


# instance fields
.field private mCallbackDisplayId:I

.field private mDefaultDisplayCurrentRotation:I

.field private mDefaultDisplayDefaultRotation:I

.field mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    return-void
.end method

.method static isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .locals 3
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 104
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_1

    .line 107
    return v1

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method


# virtual methods
.method getDefaultDisplayCurrentRotation()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    return v0
.end method

.method onDefaultDisplayRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .line 53
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 58
    :cond_0
    return-void
.end method

.method removeDefaultDisplayRotationChangedCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eq p1, v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to remove non-matching callback. DisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayRotationCoordinator"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    .line 101
    return-void
.end method

.method setDefaultDisplayDefaultRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 61
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    .line 62
    return-void
.end method

.method setDefaultDisplayRotationChangedCallback(ILjava/lang/Runnable;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple clients unsupported. Incoming displayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", existing displayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 81
    iput p1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mCallbackDisplayId:I

    .line 83
    iget v0, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayCurrentRotation:I

    iget v1, p0, Lcom/android/server/wm/DisplayRotationCoordinator;->mDefaultDisplayDefaultRotation:I

    if-eq v0, v1, :cond_2

    .line 84
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_2
    return-void
.end method
