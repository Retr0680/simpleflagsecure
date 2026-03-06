.class Lcom/android/server/UiModeManagerService$1;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/UiModeManagerService$IntProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mNightModeValue:I


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 163
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 164
    nop

    .line 165
    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    .line 167
    return-void
.end method
