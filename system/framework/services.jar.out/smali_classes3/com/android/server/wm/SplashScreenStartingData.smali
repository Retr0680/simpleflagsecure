.class Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field private final mTheme:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;II)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "theme"    # I
    .param p3, "typeParams"    # I

    .line 30
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 31
    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 32
    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 2
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 36
    iget-object v0, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget v1, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/StartingSurfaceController;->createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object v0

    return-object v0
.end method

.method needRevealAnimation()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method
