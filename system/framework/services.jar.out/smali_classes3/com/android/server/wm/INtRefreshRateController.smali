.class public interface abstract Lcom/android/server/wm/INtRefreshRateController;
.super Ljava/lang/Object;
.source "INtRefreshRateController.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtRefreshRateController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/server/wm/INtRefreshRateController$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtRefreshRateController$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtRefreshRateController;->DEFAULT:Lcom/android/server/wm/INtRefreshRateController;

    return-void
.end method


# virtual methods
.method public OverrideWinPrefer()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultRefreshRateRangeMax()F
    .locals 1

    .line 32
    const/high16 v0, 0x42f00000    # 120.0f

    return v0
.end method

.method public getMaxPreferRate()F
    .locals 1

    .line 29
    const/high16 v0, 0x42f00000    # 120.0f

    return v0
.end method

.method public getMinPreferRate()F
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferMode()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/DisplayInfo;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/view/DisplayInfo;
    .param p3, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 23
    return-void
.end method

.method public resetNtVoteResult()V
    .locals 0

    .line 24
    return-void
.end method

.method public setGameModeFrameRateOverrideToNtRefreshRate(IF)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "frameRate"    # F

    .line 33
    return-void
.end method

.method public updateFocusedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "newFocus"    # Lcom/android/server/wm/ActivityRecord;

    .line 31
    return-void
.end method

.method public updateVoteResult()V
    .locals 0

    .line 26
    return-void
.end method

.method public voteNtPreferredModeId(Lcom/android/server/wm/WindowState;Z)V
    .locals 0
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayTurnedOn"    # Z

    .line 25
    return-void
.end method
