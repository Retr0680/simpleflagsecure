.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DEBUG_LIVE:Z = true

.field private static final LMK_LOW_THRESHOLD_MEMORY_PERCENTAGE:D = 10.0

.field private static final LMK_RECONNECT_DELAY_MS:J = 0x1388L

.field private static final LMK_RECONNECT_REBIND_RETRIES:I = 0x3

.field private static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field private static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final NT_MIN_WALLPAPER_CRASH_TIME:J = 0x3e8L

.field private static final NT_WALLPAPER_RECONNECT_TIMEOUT_MS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field private static final sWallpaperType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

.field private final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field protected mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field private final mFallbackWallpaperComponent:Landroid/content/ComponentName;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHomeWallpaperWaitingForUnlock:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mImageWallpaper:Landroid/content/ComponentName;

.field private mInAmbientMode:Z

.field private mInitialUserSwitch:Z

.field private final mKeyguardObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

.field protected mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field protected mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

.field private mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

.field private final mLock:Ljava/lang/Object;

.field private final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mLockWallpaperWaitingForUnlock:Z

.field private final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

.field private mShuttingDown:Z

.field private final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field final mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

.field final mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

.field final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

.field private final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$5ErvDQXwaddOkf73QSp6u6kkQ9Y(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6wwi19JHOG6fH1kO32tdjeA6vos(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$clearWallpaperLocked$8(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8n62Xa8j8noLW1G26Xy7uM_D1Wc(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$attachServiceLocked$18(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FDd0NauyzBfvtg4VpSNj3ma_TLM(ZLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$pauseOrResumeRenderingImmediately$10(ZLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzpNUNxWIS3lB0CDOv4XcgobCHY(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$dumpWallpaper$21(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVPGBkCFbn0kkMURbwJ7DguuOIs(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$dumpWallpaper$20(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HPV0skZunkb71zseMl_vk0jUzZ8(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$onUnlockUser$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Klm5b07ADsYSKveShfQLaSU4BJU(Lcom/android/server/wallpaper/WallpaperManagerService;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$errorCheck$4(ILjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LAWfrsXZ_goDWjTIc_a8sVDYeN0(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyGoingToSleep$12(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LOFc1rjb9gSmkyr5HQ4tPzWIlBc(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$setWallpaperDescriptionInternal$15(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QJp7AkItXamN0I6nnFgz-pLypWg(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$dispatchKeyguardCommand$13(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S4jgCqwuOI416eRiQyNOsDygOVs(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$switchUser$6(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TH6A5xD571b5BzgW-pWMrxaktvI(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VYQjp4PEdDH08z7IiiaBIPAG008(FLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$setWallpaperDimAmountForUid$14(FLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHuXDsFjXXz8hoFHY0j50D9PujQ(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$detachWallpaperLocked$16(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XnQR-1xDqKRKK6hNKSBI1igjr0w(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$isFromForegroundApp$19(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a0Gwa7AgUlkWKCYLhvBBgAo3EXE(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyWakingUp$11(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ayXzXCrxurGj3ryjqTsy2Zr7lUU(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$switchUser$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$cNNF-fGDDXw-b3gmBmJlEZmx0Vs(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateEngineFlags$17(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-QEqN2mGcHn2wPucQ7FQ-RPqHU(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$notifyWallpaperColorsChanged$0(Lcom/android/server/wallpaper/WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBh497WgBpwBnjQyPTkhPEDewuQ(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjeqxcaQzq0FLIne6wd892rYqUw(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->lambda$clearWallpaperLocked$9(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/app/ActivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultWallpaperComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPackageManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/pm/IPackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInAmbientMode(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNtWallpaperManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/nothing/NtWallpaperManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IIZLandroid/os/IRemoteCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdetachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$merrorCheck(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyKeyguardGoingAway(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyKeyguardGoingAway()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyScreenTurnedOn(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyScreenTurnedOn(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyScreenTurningOn(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyScreenTurningOn(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisplayAddSystemDecorationsInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayAddSystemDecorationsInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisplayRemovedInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayRemovedInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpauseOrResumeRenderingImmediately(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->pauseOrResumeRenderingImmediately(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEngineFlags(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 181
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING:Z

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    .line 188
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 1948
    nop

    .line 1949
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1950
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1948
    const-string v2, "decode_record"

    const-string v3, "decode_lock_record"

    invoke-static {v0, v2, v1, v3}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .line 1693
    move-object/from16 v1, p0

    invoke-direct {v1}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 186
    invoke-static {}, Lcom/nothing/NtWallpaperManager;->getInstance()Lcom/nothing/NtWallpaperManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mInitialUserSwitch:Z

    .line 680
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 747
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 748
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 752
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 753
    const/16 v0, -0x2710

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 755
    new-instance v0, Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-direct {v0}, Lcom/android/server/wallpaper/LocalColorRepository;-><init>()V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 1763
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 1694
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    const-string v2, "WallpaperManagerService"

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService startup"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    move-object/from16 v3, p1

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1696
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1697
    nop

    .line 1698
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x10404cf

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1699
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 1700
    nop

    .line 1701
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x104041f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1700
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    .line 1703
    :cond_1
    iput-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    .line 1705
    :goto_0
    invoke-static {v3}, Landroid/app/WallpaperManager;->getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1706
    .local v6, "defaultComponent":Landroid/content/ComponentName;
    if-nez v6, :cond_2

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    move-object v0, v6

    :goto_1
    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1707
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1708
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1709
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1710
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v7, "appops"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1711
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 1712
    .local v7, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v7, v0, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1713
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/view/WindowManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1714
    .local v8, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1715
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;-><init>(Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/res/Resources;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 1716
    new-instance v0, Lcom/android/server/wallpaper/WallpaperCropper;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-direct {v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;-><init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 1717
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/app/ActivityManager;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1719
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1110209

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1722
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1070107

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 1724
    .local v9, "pauseRenderList":[Ljava/lang/String;
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v10, v0

    .line 1725
    .local v10, "pauseRenderUids":Landroid/util/IntArray;
    array-length v11, v9

    move v12, v4

    :goto_2
    if-ge v12, v11, :cond_3

    aget-object v13, v9, v12

    .line 1727
    .local v13, "pauseRenderApp":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1729
    .local v0, "uid":I
    invoke-virtual {v10, v0}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    .end local v0    # "uid":I
    goto :goto_3

    .line 1730
    :catch_0
    move-exception v0

    .line 1731
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "pauseRenderApp":Ljava/lang/String;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1734
    :cond_3
    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1736
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v12, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v15, "android"

    .line 1745
    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v16

    .line 1736
    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-interface/range {v11 .. v16}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1748
    goto :goto_4

    .line 1746
    :catch_1
    move-exception v0

    .line 1747
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "pauseRenderList":[Ljava/lang/String;
    .end local v10    # "pauseRenderUids":Landroid/util/IntArray;
    :cond_4
    :goto_4
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService-IA;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1753
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1754
    new-instance v0, Lcom/android/server/wallpaper/WallpaperDataParser;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-direct {v0, v2, v4, v9}, Lcom/android/server/wallpaper/WallpaperDataParser;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperDisplayHelper;Lcom/android/server/wallpaper/WallpaperCropper;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    .line 1756
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v0, v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService-IA;)V

    const-class v2, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v2, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1758
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardObserver:Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    .line 1759
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 1761
    return-void
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 4054
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 4055
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "WPMS.attachServiceLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4056
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4057
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4058
    return-void
.end method

.method private changingToSame(Landroid/app/wallpaper/WallpaperDescription;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/app/wallpaper/WallpaperDescription;)Z
    .locals 4
    .param p1, "newDescription"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "currentConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p3, "currentDescription"    # Landroid/app/wallpaper/WallpaperDescription;

    .line 3721
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3722
    return v0

    .line 3724
    :cond_0
    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultComponent(Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "WallpaperManagerService"

    if-eqz v1, :cond_2

    .line 3725
    invoke-virtual {p3}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3724
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultComponent(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3726
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "changingToSame: still using default"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    :cond_1
    return v2

    .line 3729
    :cond_2
    invoke-virtual {p1, p3}, Landroid/app/wallpaper/WallpaperDescription;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3731
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "same wallpaper"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_3
    return v2

    .line 3734
    :cond_4
    return v0
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "newComponentName"    # Landroid/content/ComponentName;
    .param p2, "currentConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p3, "currentComponentName"    # Landroid/content/ComponentName;

    .line 3704
    if-eqz p2, :cond_3

    .line 3705
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultComponent(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WallpaperManagerService"

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDefaultComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3706
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "changingToSame: still using default"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    :cond_0
    return v1

    .line 3709
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3712
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "same wallpaper"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_2
    return v1

    .line 3716
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private checkCallerIsSystemOrSystemUi()V
    .locals 2

    .line 4123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 4125
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Access denied: only system processes can call this"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4127
    :goto_0
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 4090
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4094
    return-void

    .line 4091
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearWallpaperBitmaps(II)V
    .locals 1
    .param p1, "userID"    # I
    .param p2, "wallpaperType"    # I

    .line 1965
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 1966
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 1967
    return-void
.end method

.method private clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z
    .locals 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 1970
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v0

    .line 1971
    .local v0, "sourceExists":Z
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v1

    .line 1972
    .local v1, "cropExists":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1973
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1974
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V
    .locals 13
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "fromForeground"    # Z
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    .line 2208
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2209
    invoke-direct {p0, p2, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 2211
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wallpaper/WallpaperData;

    .line 2212
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wallpaper/WallpaperData;

    .line 2213
    .local v9, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const-string v10, "WallpaperManagerService"

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    if-nez v9, :cond_2

    .line 2215
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2216
    const-string v0, "Lock wallpaper already cleared"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :cond_1
    return-void

    .line 2221
    :cond_2
    const/4 v11, 0x0

    .line 2224
    .local v11, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearWallpaperLocked, which="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", wallpaper.component="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2224
    invoke-virtual {v3, v1}, Lcom/nothing/NtWallpaperManager;->logHistory(Ljava/lang/String;)V

    .line 2227
    const/4 v1, 0x1

    nop

    if-ne p1, v1, :cond_5

    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-string v4, "com.nothing.wallpaper"

    if-eqz v3, :cond_3

    .line 2228
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, v8, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    nop

    if-eqz v3, :cond_5

    iget-object v3, v8, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2230
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    if-eqz v3, :cond_5

    .line 2231
    :cond_4
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/nothing/NtWallpaperManager;->reportWallpaperRevert(Landroid/content/Context;)V

    .line 2235
    :cond_5
    :try_start_0
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq p2, v3, :cond_6

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasCrossUserPermission()Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    .line 2279
    :catch_0
    move-exception v0

    move-object/from16 v7, p4

    goto/16 :goto_3

    .line 2238
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 2239
    .local v12, "toClear":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    and-int/lit8 v3, p1, 0x2

    if-lez v3, :cond_7

    if-eqz v9, :cond_7

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2240
    :cond_7
    and-int/lit8 v3, p1, 0x1

    if-lez v3, :cond_8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperData;

    .line 2242
    .local v4, "wallpaperToClear":Lcom/android/server/wallpaper/WallpaperData;
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 2243
    nop

    .line 2244
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 2245
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2246
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 2248
    .end local v4    # "wallpaperToClear":Lcom/android/server/wallpaper/WallpaperData;
    goto :goto_0

    .line 2253
    :cond_9
    nop

    .line 2254
    if-ne p1, v0, :cond_a

    .line 2256
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    .line 2257
    .local v3, "description":Landroid/app/wallpaper/WallpaperDescription;
    const/4 v4, 0x3

    .local v4, "finalWhich":I
    goto :goto_1

    .line 2259
    .end local v3    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v4    # "finalWhich":I
    :cond_a
    new-instance v3, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v3}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v3

    .line 2260
    .restart local v3    # "description":Landroid/app/wallpaper/WallpaperDescription;
    move v4, p1

    .line 2275
    .restart local v4    # "finalWhich":I
    :goto_1
    if-eq p1, v0, :cond_b

    move v5, v1

    goto :goto_2

    :cond_b
    move v5, v2

    .line 2276
    .local v5, "force":Z
    :goto_2
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object v2, v3

    move v3, v4

    move v4, p2

    .end local v4    # "finalWhich":I
    .local v2, "description":Landroid/app/wallpaper/WallpaperDescription;
    .local v3, "finalWhich":I
    :try_start_1
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)V

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2278
    .local v0, "success":Z
    if-eqz v0, :cond_c

    return-void

    .line 2281
    .end local v0    # "success":Z
    .end local v2    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v3    # "finalWhich":I
    .end local v5    # "force":Z
    .end local v12    # "toClear":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :cond_c
    goto :goto_4

    .line 2279
    :catch_1
    move-exception v0

    :goto_3
    nop

    .line 2280
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    move-object v11, v0

    .line 2287
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_4
    const-string v0, "Default wallpaper component not found!"

    invoke-static {v10, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2288
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, v8, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 2292
    if-eqz v7, :cond_d

    .line 2294
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v7, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2297
    goto :goto_5

    .line 2295
    :catch_2
    move-exception v0

    .line 2296
    .local v0, "e1":Landroid/os/RemoteException;
    const-string v2, "Failed to notify callback after wallpaper clear"

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2299
    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_d
    :goto_5
    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 3993
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3

    .line 3994
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    const-string v1, "WallpaperManagerService"

    if-eqz v0, :cond_0

    .line 3995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detaching wallpaper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3999
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4002
    goto :goto_0

    .line 4000
    :catch_0
    move-exception v0

    .line 4001
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Error sending reply to wallpaper before disconnect"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4003
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 4005
    :cond_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4007
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 4008
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4010
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmResetRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4011
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisconnectRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4013
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4017
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4020
    goto :goto_1

    .line 4018
    :catch_1
    move-exception v0

    .line 4019
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Error unbinding wallpaper when detaching"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4021
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    iput-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4022
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-ne p1, v0, :cond_2

    .line 4023
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 4025
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-ne p1, v0, :cond_3

    .line 4026
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 4029
    :cond_3
    return-void
.end method

.method private dispatchKeyguardCommand(Ljava/lang/String;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .line 3005
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3006
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3007
    .local v4, "data":Lcom/android/server/wallpaper/WallpaperData;
    nop

    .line 3012
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v6, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3006
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3023
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 3024
    return-void

    .line 3023
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 4485
    if-nez p1, :cond_0

    .line 4486
    const-string v0, " (null entry)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4487
    return-void

    .line 4489
    :cond_0
    const-string v0, " User "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4490
    const-string v0, ": id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4491
    const-string v0, ": mWhich="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4492
    const-string v0, ": mSystemWasBoth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4493
    const-string v0, ": mBindSource="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4494
    const-string v0, " Display state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4495
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 4504
    const-string v0, "  mCropHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4505
    const-string v0, "  mCropHints="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4506
    const-string v0, "  mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4507
    const-string v0, "  mAllowBackup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4508
    const-string v0, "  mWallpaperComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4509
    const-string v0, "  mWallpaperDimAmount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 4510
    const-string v0, "  isColorExtracted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mIsColorExtractedFromDim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4511
    const-string v0, "  mUidToDimAmount:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4512
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4513
    const-string v1, "    UID="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4514
    const-string v1, " dimAmount="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4512
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 4516
    .end local v0    # "j":I
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3

    .line 4517
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4518
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v1, "  Wallpaper connection "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4519
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4520
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4521
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_2

    .line 4522
    const-string v1, "    mInfo.component="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4523
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4525
    :cond_2
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda19;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4533
    const-string v1, "    mService="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4534
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4535
    const-string v1, "    mLastDiedTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4536
    iget-wide v1, p1, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4538
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_3
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 517
    .local p0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TT;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private enforcePackageBelongsToUid(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4109
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->packageBelongsToUid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4114
    return-void

    .line 4110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package or package does not belong to uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private errorCheck(I)V
    .locals 2
    .param p1, "userID"    # I

    .line 1953
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/Map;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1962
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperData;)Z
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 566
    nop

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "cropFile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 572
    .local v1, "defaultImageWallpaper":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mIsColorExtractedFromDim:Z

    .line 574
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 576
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 578
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_0

    monitor-exit v2

    return v4

    .line 579
    :catchall_0
    move-exception v3

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 581
    .local v3, "colors":Landroid/app/WallpaperColors;
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 582
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 583
    monitor-exit v5

    .line 584
    return v4

    .line 583
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 579
    .end local v3    # "colors":Landroid/app/WallpaperColors;
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 587
    :cond_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 589
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 590
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    .line 598
    :catchall_2
    move-exception v2

    goto/16 :goto_6

    .line 590
    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    nop

    .line 591
    .local v2, "imageWallpaper":Z
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 592
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_3

    .line 593
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v6

    if-nez v6, :cond_5

    .line 594
    const/4 v1, 0x1

    .line 596
    :cond_5
    :goto_3
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 597
    .local v6, "wallpaperId":I
    iget v7, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 598
    .end local v2    # "imageWallpaper":Z
    .local v7, "dimAmount":F
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 600
    const/4 v2, 0x0

    .line 601
    .local v2, "colors":Landroid/app/WallpaperColors;
    if-eqz v0, :cond_7

    .line 602
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 603
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_6

    .line 604
    invoke-static {v5, v7}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 605
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    goto :goto_4

    :cond_7
    if-eqz v1, :cond_6

    .line 609
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 612
    :goto_4
    if-nez v2, :cond_8

    .line 613
    const-string v3, "WallpaperManagerService"

    const-string v5, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return v4

    .line 617
    :cond_8
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 618
    :try_start_5
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    if-ne v5, v6, :cond_9

    .line 619
    iput-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 622
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 623
    monitor-exit v8

    return v4

    .line 628
    :catchall_3
    move-exception v3

    goto :goto_5

    .line 625
    :cond_9
    const-string v4, "WallpaperManagerService"

    const-string v5, "Not setting primary colors since wallpaper changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    monitor-exit v8

    return v3

    .line 628
    :goto_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3

    .line 598
    .end local v2    # "colors":Landroid/app/WallpaperColors;
    .end local v6    # "wallpaperId":I
    .end local v7    # "dimAmount":F
    :goto_6
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 574
    :catchall_4
    move-exception v3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v3
.end method

.method private extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 632
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v1, "Extract default image wallpaper colors"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v0

    return-object v1

    .line 638
    :catchall_0
    move-exception v1

    goto/16 :goto_8

    .line 637
    :cond_1
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 638
    .local v1, "dimAmount":F
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "colors":Landroid/app/WallpaperColors;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 643
    :try_start_2
    const-string v4, "WallpaperManagerService"

    const-string v5, "Can\'t open default wallpaper stream"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 644
    nop

    .line 653
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 655
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    goto :goto_4

    .line 653
    :catch_1
    move-exception v2

    goto :goto_5

    .line 644
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-object v3

    .line 641
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 647
    :cond_3
    :try_start_4
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 648
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 649
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_4

    .line 650
    invoke-static {v3, v1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v5

    move-object v0, v5

    .line 651
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 653
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 657
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_1
    move-object v2, v0

    goto :goto_6

    .line 641
    .restart local v2    # "is":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    nop

    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .end local v1    # "dimAmount":F
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    throw v3
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 655
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "colors":Landroid/app/WallpaperColors;
    .restart local v1    # "dimAmount":F
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :goto_4
    nop

    .line 656
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t close default wallpaper stream"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_6

    .line 653
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 654
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t decode default wallpaper stream"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_1

    .line 659
    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .local v2, "colors":Landroid/app/WallpaperColors;
    :goto_6
    if-nez v2, :cond_6

    .line 660
    const-string v0, "WallpaperManagerService"

    const-string v3, "Extract default image wallpaper colors failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 662
    :cond_6
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 663
    :try_start_8
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 664
    monitor-exit v3

    .line 667
    :goto_7
    return-object v2

    .line 664
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 638
    .end local v1    # "dimAmount":F
    .end local v2    # "colors":Landroid/app/WallpaperColors;
    :goto_8
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperData;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .line 3306
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3307
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3308
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    return-object v0

    .line 3310
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    return-object v0
.end method

.method private getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;
    .locals 7

    .line 3027
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 3028
    .local v0, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 3029
    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3030
    .local v4, "systemValid":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 3031
    .local v5, "lockValid":Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, v6, v3

    aput-object v1, v6, v2

    goto :goto_2

    .line 3032
    :cond_2
    if-eqz v4, :cond_3

    new-array v6, v2, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, v6, v3

    goto :goto_2

    .line 3033
    :cond_3
    if-eqz v5, :cond_4

    new-array v6, v2, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v1, v6, v3

    goto :goto_2

    .line 3034
    :cond_4
    new-array v6, v3, [Lcom/android/server/wallpaper/WallpaperData;

    .line 3031
    :goto_2
    return-object v6
.end method

.method private getCropMap([ILjava/util/List;)Landroid/util/SparseArray;
    .locals 8
    .param p1, "screenOrientations"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 3420
    .local p2, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    xor-int/2addr v0, v2

    nop

    if-nez v0, :cond_7

    if-eqz p2, :cond_2

    .line 3421
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    array-length v2, p1

    if-ne v0, v2, :cond_7

    .line 3425
    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 3426
    .local v0, "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3427
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3428
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 3429
    .local v3, "crop":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 3430
    .local v5, "height":I
    if-ltz v4, :cond_5

    if-ltz v5, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-ltz v6, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-ltz v6, :cond_5

    .line 3433
    aget v6, p1, v2

    .line 3434
    .local v6, "orientation":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v1, :cond_4

    :cond_3
    goto :goto_2

    .line 3435
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid crops supplied: the UNKNOWNscreen orientation should only be used in a singleton map"

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3438
    :goto_2
    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3427
    .end local v3    # "crop":Landroid/graphics/Rect;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "orientation":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3431
    .restart local v3    # "crop":Landroid/graphics/Rect;
    .restart local v4    # "width":I
    .restart local v5    # "height":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid crop rect supplied: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3441
    .end local v2    # "i":I
    .end local v3    # "crop":Landroid/graphics/Rect;
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_6
    return-object v0

    .line 3422
    .end local v0    # "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal crops/orientations lists: must both be null, or both the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;
    .locals 8
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 3049
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    .line 3050
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3051
    :cond_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3052
    .local v2, "connection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v2, :cond_1

    return-object v1

    .line 3053
    :cond_1
    const/4 v1, 0x0

    .line 3054
    .local v1, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3055
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 3056
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 3057
    .local v5, "id":I
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 3058
    .local v6, "currentWhich":I
    if-eq v5, p3, :cond_2

    if-eq v6, p1, :cond_2

    .line 3055
    .end local v5    # "id":I
    .end local v6    # "currentWhich":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3059
    .restart local v5    # "id":I
    .restart local v6    # "currentWhich":I
    :cond_2
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    move-object v1, v7

    .line 3060
    goto :goto_1

    .line 3062
    .end local v4    # "i":I
    .end local v5    # "id":I
    .end local v6    # "currentWhich":I
    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v3

    .line 3063
    return-object v1

    .line 3062
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getHandlerForBindingWallpaperLocked()Landroid/os/Handler;
    .locals 4

    .line 3946
    nop

    .line 3949
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInitialUserSwitch:Z

    if-eqz v0, :cond_0

    .line 3950
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 3952
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1

    .line 3953
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "WallpaperManagerService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 3954
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 3956
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getHighestDimAmountFromMap(Landroid/util/SparseArray;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 3236
    .local p1, "uidToDimAmountMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 3237
    .local v0, "maxDimAmount":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3238
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 3240
    .end local v1    # "i":I
    return v0
.end method

.method private getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 473
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 474
    .local v1, "displayListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 477
    :cond_0
    return-object v0
.end method

.method private getWallpaperInstance(IIZ)Landroid/app/wallpaper/WallpaperInstance;
    .locals 7
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "requireReadWallpaper"    # Z

    .line 2741
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperInfo"

    .line 2741
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2743
    .end local v2    # "userId":I
    .restart local p2    # "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2744
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    .line 2761
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    :goto_0
    nop

    .line 2746
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v3, :cond_2

    :cond_1
    goto :goto_4

    .line 2748
    :cond_2
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2749
    .local v3, "info":Landroid/app/WallpaperInfo;
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2749
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    const/4 v4, 0x1

    :goto_2
    nop

    .line 2751
    .local v4, "canQueryPackage":Z
    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_6

    if-nez p3, :cond_6

    :cond_5
    goto :goto_3

    .line 2759
    :cond_6
    monitor-exit v1

    return-object v2

    .line 2754
    :goto_3
    nop

    .line 2755
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v2

    .line 2756
    invoke-virtual {v2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v2

    .line 2757
    .local v2, "description":Landroid/app/wallpaper/WallpaperDescription;
    new-instance v5, Landroid/app/wallpaper/WallpaperInstance;

    invoke-direct {v5, v3, v2}, Landroid/app/wallpaper/WallpaperInstance;-><init>(Landroid/app/WallpaperInfo;Landroid/app/wallpaper/WallpaperDescription;)V

    monitor-exit v1

    return-object v5

    .line 2746
    .end local v2    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v3    # "info":Landroid/app/WallpaperInfo;
    .end local v4    # "canQueryPackage":Z
    :goto_4
    monitor-exit v1

    return-object v2

    .line 2761
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getWallpapers()[Lcom/android/server/wallpaper/WallpaperData;
    .locals 7

    .line 3038
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 3039
    .local v0, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 3040
    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3041
    .local v4, "systemValid":Z
    :goto_0
    if-eqz v1, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 3042
    .local v5, "lockValid":Z
    :goto_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, v6, v3

    aput-object v1, v6, v2

    goto :goto_2

    .line 3043
    :cond_2
    if-eqz v4, :cond_3

    new-array v6, v2, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v0, v6, v3

    goto :goto_2

    .line 3044
    :cond_3
    if-eqz v5, :cond_4

    new-array v6, v2, [Lcom/android/server/wallpaper/WallpaperData;

    aput-object v1, v6, v3

    goto :goto_2

    .line 3045
    :cond_4
    new-array v6, v3, [Lcom/android/server/wallpaper/WallpaperData;

    .line 3042
    :goto_2
    return-object v6
.end method

.method private hasAppOpPermission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 2688
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2689
    .local v1, "op":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "callingUid":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "attributionTag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "callingUid":I
    .local v3, "callingPackage":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2691
    .local p2, "opMode":I
    packed-switch p2, :pswitch_data_0

    .line 2698
    :pswitch_0
    const/4 p3, 0x0

    return p3

    .line 2696
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result p3

    return p3

    .line 2694
    :pswitch_2
    const/4 p3, 0x1

    return p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasCrossUserPermission()Z
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2303
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 2304
    .local v0, "interactPermission":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasPermission(Lcom/android/server/wallpaper/WallpaperData;Ljava/lang/String;)Z
    .locals 4
    .param p1, "data"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "permission"    # Ljava/lang/String;

    .line 2676
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2678
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 2676
    invoke-interface {v1, p2, v2, v3}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2680
    :catch_0
    move-exception v1

    .line 2681
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed to check wallpaper service permission"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2682
    return v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 2671
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeFallbackWallpaper()V
    .locals 14

    .line 4383
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v0, :cond_2

    .line 4384
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v1, "Initialize fallback wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    :cond_0
    const/4 v0, 0x0

    .line 4386
    .local v0, "systemUserId":I
    new-instance v1, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 4387
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iput-boolean v3, v1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 4388
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 4389
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    sget-object v2, Lcom/android/server/wallpaper/WallpaperData$BindSource;->INITIALIZE_FALLBACK:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 4390
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    .line 4391
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_0

    .line 4394
    :cond_1
    move-object v2, p0

    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    const/4 v3, 0x3

    iput v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 4395
    iget-object v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    iget-object v12, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 4399
    .end local v0    # "systemUserId":I
    :cond_2
    :goto_0
    return-void
.end method

.method private isDefaultComponent(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 3699
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isFromForegroundApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 4117
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$attachServiceLocked$18(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 0
    .param p0, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 4056
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method

.method private synthetic lambda$clearWallpaperLocked$8(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "finalWhich"    # I
    .param p3, "userId"    # I
    .param p4, "force"    # Z
    .param p5, "fromForeground"    # Z
    .param p6, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2276
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$clearWallpaperLocked$9(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2289
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->FALLBACK_DEFAULT_MISSING:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 2290
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .local v6, "reply":Landroid/os/IRemoteCallback;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2291
    return-void
.end method

.method private static synthetic lambda$detachWallpaperLocked$16(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 1
    .param p0, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 4006
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    return-void
.end method

.method private static synthetic lambda$dispatchKeyguardCommand$13(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 7
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 3013
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 3015
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v2, p0

    .end local p0    # "command":Ljava/lang/String;
    .local v2, "command":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3019
    goto :goto_1

    .line 3017
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .end local v2    # "command":Ljava/lang/String;
    .restart local p0    # "command":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    .line 3018
    .restart local v2    # "command":Ljava/lang/String;
    .local p0, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to dispatch wallpaper command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3013
    .end local v2    # "command":Ljava/lang/String;
    .local p0, "command":Ljava/lang/String;
    :cond_0
    move-object v2, p0

    .line 3021
    .end local p0    # "command":Ljava/lang/String;
    .restart local v2    # "command":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method private static synthetic lambda$dumpWallpaper$20(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "wpSize"    # Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 4496
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4497
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4498
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4499
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4500
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4502
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4503
    return-void
.end method

.method private static synthetic lambda$dumpWallpaper$21(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 4526
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4527
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4528
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4529
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4530
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4531
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4532
    return-void
.end method

.method private synthetic lambda$errorCheck$4(ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1, "userID"    # I
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "filename"    # Ljava/lang/String;

    .line 1954
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1955
    .local v0, "record":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", wallpaper type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", wallpaper fail detect!! reset to default wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(II)V

    .line 1959
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1961
    :cond_0
    return-void
.end method

.method private synthetic lambda$isFromForegroundApp$19(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4118
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$notifyGoingToSleep$12(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 2928
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 2930
    :try_start_0
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.goingtosleep"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, -0x1

    move v3, p0

    move v4, p1

    move-object v6, p2

    .end local p0    # "x":I
    .end local p1    # "y":I
    .end local p2    # "extras":Landroid/os/Bundle;
    .local v3, "x":I
    .local v4, "y":I
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2935
    goto :goto_1

    .line 2933
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p0    # "x":I
    .restart local p1    # "y":I
    .restart local p2    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move v3, p0

    move v4, p1

    move-object v6, p2

    move-object p0, v0

    .line 2934
    .end local p1    # "y":I
    .end local p2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    .local p0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to dispatch COMMAND_GOING_TO_SLEEP"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2928
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .local p0, "x":I
    .restart local p1    # "y":I
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_0
    move v3, p0

    move v4, p1

    move-object v6, p2

    .line 2937
    .end local p0    # "x":I
    .end local p1    # "y":I
    .end local p2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    :goto_1
    return-void
.end method

.method private static synthetic lambda$notifyWakingUp$11(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 2907
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 2909
    :try_start_0
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.wakingup"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, -0x1

    move v3, p0

    move v4, p1

    move-object v6, p2

    .end local p0    # "x":I
    .end local p1    # "y":I
    .end local p2    # "extras":Landroid/os/Bundle;
    .local v3, "x":I
    .local v4, "y":I
    .local v6, "extras":Landroid/os/Bundle;
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2913
    goto :goto_1

    .line 2911
    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .restart local p0    # "x":I
    .restart local p1    # "y":I
    .restart local p2    # "extras":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move v3, p0

    move v4, p1

    move-object v6, p2

    move-object p0, v0

    .line 2912
    .end local p1    # "y":I
    .end local p2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    .local p0, "e":Landroid/os/RemoteException;
    :goto_0
    const-string p1, "WallpaperManagerService"

    const-string p2, "Failed to dispatch COMMAND_WAKING_UP"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2907
    .end local v3    # "x":I
    .end local v4    # "y":I
    .end local v6    # "extras":Landroid/os/Bundle;
    .local p0, "x":I
    .restart local p1    # "y":I
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_0
    move v3, p0

    move v4, p1

    move-object v6, p2

    .line 2915
    .end local p0    # "x":I
    .end local p1    # "y":I
    .end local p2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    :goto_1
    return-void
.end method

.method private synthetic lambda$notifyWallpaperColorsChanged$0(Lcom/android/server/wallpaper/WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "which"    # I
    .param p3, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 465
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;II)V

    return-void
.end method

.method private static synthetic lambda$onUnlockUser$5(I)V
    .locals 4
    .param p0, "userId"    # I

    .line 2010
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 2011
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_selinux_restorecon-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2013
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperFiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 2014
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2015
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2019
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2017
    :cond_0
    :goto_1
    goto :goto_0

    .line 2019
    :cond_1
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2020
    nop

    .line 2021
    return-void

    .line 2019
    :goto_2
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2020
    throw v1
.end method

.method private static synthetic lambda$pauseOrResumeRenderingImmediately$10(ZLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 3
    .param p0, "pause"    # Z
    .param p1, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 2885
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    .line 2887
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2890
    goto :goto_1

    .line 2888
    :catch_0
    move-exception v0

    .line 2889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failed to set visibility"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2892
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic lambda$setWallpaperDescriptionInternal$15(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 7
    .param p0, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 3631
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 3632
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.reapply"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3635
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3637
    :cond_0
    :goto_0
    goto :goto_2

    .line 3635
    :goto_1
    nop

    .line 3636
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Error sending apply message to wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3638
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private static synthetic lambda$setWallpaperDimAmountForUid$14(FLcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 3
    .param p0, "maxDimAmount"    # F
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 3183
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 3185
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3189
    goto :goto_0

    .line 3186
    :catch_0
    move-exception v0

    .line 3187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Can\'t apply dimming on wallpaper display connector"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$switchUser$6(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1
    .param p1, "systemWallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "lockWallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 2081
    nop

    .line 2082
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 2083
    if-eq p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 2084
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 2085
    return-void
.end method

.method private synthetic lambda$switchUser$7()V
    .locals 4

    .line 2091
    const-string v0, "WallpaperManagerService"

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1

    .line 2093
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v2, "setdefault!!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;I)V

    .line 2095
    const-string v2, "persist.sys.wallpaper_os_version"

    const-string v3, "ro.nothing.version.id"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    goto :goto_0

    .line 2096
    :catch_0
    move-exception v2

    .line 2097
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateEngineFlags$17(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 4041
    :try_start_0
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iput v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    .line 4042
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1

    .line 4043
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setWallpaperFlags(I)V

    .line 4044
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4047
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4049
    :cond_1
    :goto_1
    goto :goto_3

    .line 4047
    :goto_2
    nop

    .line 4048
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failed to update wallpaper engine flags"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4050
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method private static synthetic lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 1
    .param p0, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 861
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 864
    :cond_0
    return-void
.end method

.method private synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 2
    .param p1, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "display"    # Landroid/view/Display;

    .line 869
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 869
    :goto_0
    return v0
.end method

.method private synthetic lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;)V
    .locals 1
    .param p1, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 873
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 876
    :cond_0
    return-void
.end method

.method private loadSettingsLocked(IZI)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z
    .param p3, "which"    # I

    .line 4364
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    .line 4365
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4366
    .local v0, "restoreFromOld":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    invoke-virtual {v2, p1, p2, v0, p3}, Lcom/android/server/wallpaper/WallpaperDataParser;->loadSettingsLocked(IZZI)Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;

    move-result-object v2

    .line 4369
    .local v2, "result":Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;
    and-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4370
    .local v3, "updateSystem":Z
    :goto_0
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 4372
    .local v1, "updateLock":Z
    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->getSystemWallpaperData()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4373
    :cond_2
    if-eqz v1, :cond_4

    .line 4374
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->success()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4375
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->getLockWallpaperData()Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 4377
    :cond_3
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4380
    :cond_4
    :goto_2
    return-void
.end method

.method private maybeDetachLastWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 5
    .param p1, "newWallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 3976
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_3

    .line 3979
    :cond_1
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3980
    .local v0, "homeUpdated":Z
    :goto_0
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 3981
    .local v3, "lockUpdated":Z
    :goto_1
    iget-boolean v4, p1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 3982
    .local v1, "systemWillBecomeLock":Z
    :goto_2
    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 3983
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3985
    :cond_5
    if-eqz v3, :cond_6

    .line 3986
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3988
    :cond_6
    return-void

    .line 3977
    .end local v0    # "homeUpdated":Z
    .end local v1    # "systemWillBecomeLock":Z
    .end local v3    # "lockUpdated":Z
    :goto_3
    return-void
.end method

.method private migrateStaticSystemToLockWallpaperLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 3445
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 3446
    .local v0, "sysWP":Lcom/android/server/wallpaper/WallpaperData;
    const-string v1, "WallpaperManagerService"

    if-nez v0, :cond_1

    .line 3447
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3448
    const-string v2, "No system wallpaper? Not tracking for lock-only"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    :cond_0
    return-void

    .line 3454
    :cond_1
    new-instance v2, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 3455
    .local v2, "lockWP":Lcom/android/server/wallpaper/WallpaperData;
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 3456
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3457
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    .line 3458
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 3460
    :cond_2
    iget-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 3461
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3462
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 3463
    iput v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 3467
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3468
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3469
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 3468
    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3478
    :catch_0
    move-exception v3

    goto :goto_1

    .line 3471
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3472
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3473
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 3472
    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 3475
    :cond_4
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3476
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 3477
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3482
    goto :goto_2

    .line 3478
    :goto_1
    nop

    .line 3480
    .local v3, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t migrate system wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 3483
    .end local v3    # "e":Landroid/system/ErrnoException;
    :goto_2
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 4061
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4062
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4064
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4070
    goto :goto_1

    .line 4065
    :catch_0
    move-exception v2

    .line 4069
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Failed to notify callbacks about wallpaper changes"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4062
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 4072
    .end local v1    # "i":I
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4074
    nop

    .line 4080
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .locals 7
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v0, "colorListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    nop

    .line 525
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 526
    .local v2, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    nop

    .line 527
    const/4 v3, -0x1

    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 529
    .local v3, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v2, :cond_1

    .line 530
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 531
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 532
    invoke-virtual {v2, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 544
    .end local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v4    # "count":I
    .end local v5    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 531
    .restart local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .restart local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .restart local v4    # "count":I
    .restart local v5    # "i":I
    :cond_0
    nop

    .line 534
    .end local v5    # "i":I
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 537
    .end local v4    # "count":I
    :cond_1
    if-eqz v3, :cond_3

    .line 538
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 539
    .restart local v4    # "count":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 540
    invoke-virtual {v3, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 542
    .end local v5    # "i":I
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 544
    .end local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v4    # "count":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 547
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 549
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    goto :goto_3

    .line 550
    :catch_0
    move-exception v3

    .line 553
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WallpaperManagerService"

    const-string v5, "onWallpaperColorsChanged() threw an exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 556
    .end local v2    # "i":I
    return-void

    .line 544
    .end local v1    # "count":I
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private notifyKeyguardAppearing()V
    .locals 1

    .line 2995
    const-string v0, "android.wallpaper.keyguardappearing"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->dispatchKeyguardCommand(Ljava/lang/String;)V

    .line 2996
    return-void
.end method

.method private notifyKeyguardGoingAway()V
    .locals 1

    .line 2988
    const-string v0, "android.wallpaper.keyguardgoingaway"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->dispatchKeyguardCommand(Ljava/lang/String;)V

    .line 2989
    return-void
.end method

.method private notifyScreenTurnedOn(I)V
    .locals 9
    .param p1, "displayId"    # I

    .line 2946
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2947
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2948
    .local v4, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2949
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2950
    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2951
    .local v5, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-eqz v5, :cond_0

    .line 2953
    :try_start_1
    invoke-interface {v5}, Landroid/service/wallpaper/IWallpaperEngine;->onScreenTurnedOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2956
    goto :goto_1

    .line 2960
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .end local v5    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2954
    .restart local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v5    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catch_0
    move-exception v6

    .line 2955
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "WallpaperManagerService"

    const-string v8, "Failed to notify that the screen turned on"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2947
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .end local v5    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2960
    :cond_1
    monitor-exit v0

    .line 2961
    return-void

    .line 2960
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private notifyScreenTurningOn(I)V
    .locals 9
    .param p1, "displayId"    # I

    .line 2967
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2968
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2969
    .local v4, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2970
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2971
    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    .local v5, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-eqz v5, :cond_0

    .line 2974
    :try_start_1
    invoke-interface {v5}, Landroid/service/wallpaper/IWallpaperEngine;->onScreenTurningOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2977
    goto :goto_1

    .line 2981
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .end local v5    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2975
    .restart local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v5    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catch_0
    move-exception v6

    .line 2976
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "WallpaperManagerService"

    const-string v8, "Failed to notify that the screen is turning on"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2968
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .end local v5    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2981
    :cond_1
    monitor-exit v0

    .line 2982
    return-void

    .line 2981
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 4083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4084
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p1, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    const-string v2, "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4085
    const-string v1, "android.service.wallpaper.extra.WHICH_WALLPAPER_CHANGED"

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4086
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4087
    return-void
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "which"    # I

    .line 460
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "WallpaperManagerService"

    const-string v1, "Notifying wallpaper colors changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 467
    :cond_1
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "displayId"    # I

    .line 482
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;II)V

    .line 483
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperData;II)V
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "displayId"    # I
    .param p3, "which"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 490
    invoke-direct {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 491
    .local v1, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    nop

    .line 492
    const/4 v2, -0x1

    invoke-direct {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 494
    .local v2, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 495
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    monitor-exit v0

    return-void

    .line 504
    .end local v1    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 499
    .restart local v1    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .restart local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :cond_0
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 500
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWallpaperColorsChangedOnDisplay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mIsColorExtractedFromDim:Z

    if-eqz v3, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    nop

    .line 504
    .end local v1    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .local v3, "needsExtraction":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    const/4 v0, 0x1

    .line 507
    .local v0, "notify":Z
    if-eqz v3, :cond_4

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperData;)Z

    move-result v0

    .line 510
    :cond_4
    if-eqz v0, :cond_5

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-direct {p0, v1, p3, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    .line 514
    :cond_5
    return-void

    .line 504
    .end local v0    # "notify":Z
    .end local v3    # "needsExtraction":Z
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 444
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "onWallpaperChanged threw an exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private onDisplayAddSystemDecorationsInternal(I)V
    .locals 9
    .param p1, "displayId"    # I

    .line 4173
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v1, :cond_0

    .line 4175
    monitor-exit v0

    return-void

    .line 4231
    :catchall_0
    move-exception v1

    goto/16 :goto_6

    .line 4177
    :cond_0
    const/4 v1, 0x0

    .line 4178
    .local v1, "useFallbackWallpaperWhich":I
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4180
    .local v2, "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4183
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eq v3, v4, :cond_1

    .line 4184
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4187
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 4188
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperData;

    .line 4189
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4190
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4191
    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v5

    .line 4192
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-eqz v5, :cond_2

    .line 4193
    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_1

    .line 4195
    :cond_2
    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to connect to wallpaper for display id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " due to null connector. Use fallback wallpaper."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    iget v6, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/2addr v1, v6

    .line 4199
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    :goto_1
    goto :goto_2

    .line 4200
    :cond_3
    iget v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/2addr v1, v5

    .line 4187
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 4204
    .end local v3    # "i":I
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v3, :cond_6

    :cond_5
    goto :goto_3

    .line 4209
    .end local v2    # "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :cond_6
    goto :goto_4

    .line 4207
    .restart local v2    # "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :goto_3
    monitor-exit v0

    return-void

    .line 4210
    .end local v2    # "wallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :cond_7
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4211
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4212
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v2

    .line 4213
    .local v2, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-nez v2, :cond_8

    monitor-exit v0

    return-void

    .line 4214
    :cond_8
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 4215
    monitor-exit v0

    return-void

    .line 4221
    .end local v2    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_b

    .line 4223
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4224
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v2

    .line 4225
    .restart local v2    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-nez v2, :cond_a

    monitor-exit v0

    return-void

    .line 4226
    :cond_a
    iput v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    .line 4227
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 4228
    .end local v2    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    goto :goto_5

    .line 4229
    :cond_b
    const-string v2, "WallpaperManagerService"

    const-string v3, "No wallpaper can be added to the new display"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    .end local v1    # "useFallbackWallpaperWhich":I
    :goto_5
    monitor-exit v0

    .line 4232
    return-void

    .line 4231
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDisplayRemovedInternal(I)V
    .locals 7
    .param p1, "displayId"    # I

    .line 4238
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4249
    .local v1, "pendingDisconnectWallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4250
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4251
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4303
    .end local v1    # "pendingDisconnectWallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 4253
    .restart local v1    # "pendingDisconnectWallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4254
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4255
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4257
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4258
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4259
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4261
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4262
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    .line 4263
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4264
    invoke-virtual {v4, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v4

    .line 4265
    .local v4, "displayConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-nez v4, :cond_3

    .line 4266
    const-string v5, "WallpaperManagerService"

    const-string v6, "Fail to disconnect wallpaper upon display removes system decorations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    monitor-exit v0

    return-void

    .line 4271
    :cond_3
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 4272
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->removeDisplayConnector(I)V

    .line 4261
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v4    # "displayConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 4274
    .end local v1    # "pendingDisconnectWallpapers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    .end local v2    # "i":I
    goto :goto_3

    .line 4275
    :cond_5
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_a

    .line 4276
    const/4 v1, 0x0

    .line 4277
    .local v1, "targetWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4278
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4279
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    move-object v1, v2

    goto :goto_2

    .line 4280
    :cond_6
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4282
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4284
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    move-object v1, v2

    .line 4286
    :cond_7
    :goto_2
    if-nez v1, :cond_8

    monitor-exit v0

    return-void

    .line 4287
    :cond_8
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4288
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v2

    .line 4290
    .local v2, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-nez v2, :cond_9

    monitor-exit v0

    return-void

    .line 4291
    :cond_9
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 4292
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v3, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->removeDisplayConnector(I)V

    .line 4296
    .end local v1    # "targetWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v2    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->removeDisplayData(I)V

    .line 4298
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_b

    .line 4299
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 4300
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 4301
    .local v2, "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 4298
    .end local v2    # "callbacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    nop

    .line 4303
    .end local v1    # "i":I
    monitor-exit v0

    .line 4304
    return-void

    .line 4303
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSwitchWallpaperFailLocked(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/content/pm/ServiceInfo;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .param p3, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 2157
    if-nez p3, :cond_0

    .line 2158
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    .line 2159
    return-void

    .line 2161
    :cond_0
    const-string v0, "WallpaperManagerService"

    const-string v1, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    nop

    .line 2168
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData;

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    move-object v7, v0

    .line 2172
    .local v7, "fallback":Lcom/android/server/wallpaper/WallpaperData;
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 2174
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_FAILURE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v0, v7, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 2175
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v8, p2

    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    .local v8, "reply":Landroid/os/IRemoteCallback;
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2176
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    iput-boolean v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mHomeWallpaperWaitingForUnlock:Z

    .line 2177
    :cond_1
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    iput-boolean v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperWaitingForUnlock:Z

    .line 2178
    :cond_2
    return-void
.end method

.method private packageBelongsToUid(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4097
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4100
    .local v0, "userId":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4104
    .local v2, "packageUid":I
    nop

    .line 4105
    if-ne v2, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 4102
    .end local v2    # "packageUid":I
    :catch_0
    move-exception v2

    .line 4103
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private pauseOrResumeRenderingImmediately(Z)V
    .locals 7
    .param p1, "pause"    # Z

    .line 2874
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2875
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 2876
    .local v4, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-nez v5, :cond_0

    .line 2877
    goto :goto_2

    .line 2879
    :cond_0
    if-nez p1, :cond_1

    const-class v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2880
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2896
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 2882
    .restart local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :cond_1
    :goto_1
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 2883
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v6

    .line 2882
    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2884
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2875
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2896
    :cond_3
    monitor-exit v0

    .line 2897
    return-void

    .line 2896
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Z
    .locals 22
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "which"    # I
    .param p3, "userIdIn"    # I
    .param p4, "force"    # Z
    .param p5, "fromForeground"    # Z
    .param p6, "reply"    # Landroid/os/IRemoteCallback;

    .line 3554
    move-object/from16 v1, p0

    move/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 3555
    .local v8, "name":Landroid/content/ComponentName;
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3556
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting new live wallpaper: which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    :cond_0
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v10

    const-string v14, "changing live wallpaper"

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move/from16 v11, p3

    invoke-static/range {v9 .. v15}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3561
    .local v9, "userId":I
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3563
    const/4 v10, 0x0

    .line 3568
    .local v10, "shouldNotifyColors":Z
    const/4 v11, 0x0

    .line 3571
    .local v11, "shouldNotifyLockscreenColors":Z
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 3572
    :try_start_0
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWallpaperComponent name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    move-object v13, v0

    .line 3574
    .local v13, "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v13, :cond_12

    .line 3577
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3578
    invoke-virtual {v13}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 3577
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v14, v0

    .line 3579
    .local v14, "systemIsStatic":Z
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v15, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v15

    :goto_0
    move v3, v0

    .line 3581
    .local v3, "systemIsBoth":Z
    if-ne v7, v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v14, :cond_2

    .line 3583
    const-string v0, "WallpaperManagerService"

    const-string v4, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    invoke-direct {v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateStaticSystemToLockWallpaperLocked(I)V

    goto :goto_1

    .line 3680
    .end local v3    # "systemIsBoth":Z
    .end local v13    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v14    # "systemIsStatic":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_b

    .line 3588
    .restart local v3    # "systemIsBoth":Z
    .restart local v13    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v14    # "systemIsStatic":Z
    :cond_2
    :goto_1
    invoke-virtual {v1, v9, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v5

    .line 3589
    .local v5, "newWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3592
    .local v16, "ident":J
    :try_start_1
    iput-boolean v15, v5, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 3593
    iput v7, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 3594
    iput-boolean v3, v5, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 3595
    move/from16 v4, p5

    iput-boolean v4, v5, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    .line 3597
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    invoke-direct {v0, v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3600
    .local v0, "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    nop

    .line 3601
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3602
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v15

    .line 3601
    move-object/from16 v2, p1

    invoke-direct {v1, v2, v6, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/app/wallpaper/WallpaperDescription;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/app/wallpaper/WallpaperDescription;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move v15, v6

    .line 3613
    .local v15, "same":Z
    if-nez p4, :cond_5

    if-eqz v15, :cond_3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    if-ne v7, v6, :cond_4

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    :cond_4
    const/16 v19, 0x0

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    :goto_2
    move/from16 v19, v6

    .line 3615
    .local v19, "forceRebind":Z
    :goto_3
    nop

    .line 3616
    if-nez v8, :cond_6

    :try_start_2
    sget-object v20, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE_TO_CLEAR:Lcom/android/server/wallpaper/WallpaperData$BindSource;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    move-object/from16 v6, v20

    goto :goto_5

    .line 3678
    .end local v0    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .end local v15    # "same":Z
    .end local v19    # "forceRebind":Z
    :catchall_1
    move-exception v0

    move/from16 v20, v3

    goto/16 :goto_a

    .line 3616
    .restart local v0    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .restart local v15    # "same":Z
    .restart local v19    # "forceRebind":Z
    :cond_6
    :try_start_3
    sget-object v20, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_LIVE:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    goto :goto_4

    :goto_5
    iput-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3617
    nop

    .line 3618
    const/4 v4, 0x1

    move-object/from16 v6, p6

    move/from16 v20, v3

    move/from16 v3, v19

    const/16 v19, 0x1

    .end local v19    # "forceRebind":Z
    .local v3, "forceRebind":Z
    .local v20, "systemIsBoth":Z
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    .line 3624
    .local v4, "bindSuccess":Z
    if-eqz v4, :cond_f

    .line 3625
    nop

    nop

    if-eqz v15, :cond_7

    .line 3628
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v6, :cond_8

    .line 3629
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v6, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_6

    .line 3678
    .end local v0    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .end local v3    # "forceRebind":Z
    .end local v4    # "bindSuccess":Z
    .end local v15    # "same":Z
    :catchall_2
    move-exception v0

    goto/16 :goto_a

    .line 3626
    .restart local v0    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .restart local v3    # "forceRebind":Z
    .restart local v4    # "bindSuccess":Z
    .restart local v15    # "same":Z
    :cond_7
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3641
    :cond_8
    :goto_6
    const/4 v2, 0x0

    .line 3642
    .local v2, "lockBitmapCleared":Z
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    .end local v0    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .local v21, "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3643
    invoke-direct {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 3644
    iget v0, v5, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_9

    move/from16 v18, v19

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    :goto_7
    move/from16 v2, v18

    .line 3646
    :cond_a
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v5, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 3647
    invoke-direct {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3648
    nop

    .line 3649
    invoke-direct {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3651
    const/4 v10, 0x1

    .line 3652
    nop

    .line 3658
    const/4 v0, 0x3

    if-ne v7, v0, :cond_e

    .line 3659
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 3660
    const-string v0, "WallpaperManagerService"

    const-string v6, "Lock screen wallpaper changed to same as home"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    :cond_b
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v6, v5, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 3664
    .local v0, "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v0, :cond_c

    .line 3665
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3666
    if-eqz v15, :cond_c

    .line 3667
    invoke-direct {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3670
    :cond_c
    if-nez v2, :cond_d

    .line 3671
    iget v6, v5, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    move-object/from16 v18, v0

    const/4 v0, 0x2

    .end local v0    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .local v18, "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    invoke-direct {v1, v6, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperBitmaps(II)V

    goto :goto_8

    .line 3670
    .end local v18    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v0    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_d
    move-object/from16 v18, v0

    .line 3673
    .end local v0    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v18    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :goto_8
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v6, v5, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 3675
    .end local v18    # "lockedWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;->complete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    .line 3624
    .end local v2    # "lockBitmapCleared":Z
    .end local v21    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .local v0, "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    :cond_f
    move-object/from16 v21, v0

    .line 3678
    .end local v0    # "liveSync":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;
    .end local v3    # "forceRebind":Z
    .end local v15    # "same":Z
    :goto_9
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3679
    nop

    .line 3680
    .end local v13    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v14    # "systemIsStatic":Z
    .end local v16    # "ident":J
    .end local v20    # "systemIsBoth":Z
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3682
    if-eqz v10, :cond_10

    .line 3683
    invoke-virtual {v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3685
    :cond_10
    if-eqz v11, :cond_11

    .line 3686
    const/4 v0, 0x2

    invoke-direct {v1, v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 3689
    :cond_11
    return v4

    .line 3678
    .end local v4    # "bindSuccess":Z
    .local v3, "systemIsBoth":Z
    .restart local v13    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v14    # "systemIsStatic":Z
    .restart local v16    # "ident":J
    :catchall_3
    move-exception v0

    move/from16 v20, v3

    .end local v3    # "systemIsBoth":Z
    .restart local v20    # "systemIsBoth":Z
    :goto_a
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3679
    nop

    .end local v8    # "name":Landroid/content/ComponentName;
    .end local v9    # "userId":I
    .end local v10    # "shouldNotifyColors":Z
    .end local v11    # "shouldNotifyLockscreenColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local p2    # "which":I
    .end local p3    # "userIdIn":I
    .end local p4    # "force":Z
    .end local p5    # "fromForeground":Z
    .end local p6    # "reply":Landroid/os/IRemoteCallback;
    throw v0

    .line 3575
    .end local v5    # "newWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v14    # "systemIsStatic":Z
    .end local v16    # "ident":J
    .end local v20    # "systemIsBoth":Z
    .restart local v8    # "name":Landroid/content/ComponentName;
    .restart local v9    # "userId":I
    .restart local v10    # "shouldNotifyColors":Z
    .restart local v11    # "shouldNotifyLockscreenColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local p2    # "which":I
    .restart local p3    # "userIdIn":I
    .restart local p4    # "force":Z
    .restart local p5    # "fromForeground":Z
    .restart local p6    # "reply":Landroid/os/IRemoteCallback;
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper not yet initialized for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v8    # "name":Landroid/content/ComponentName;
    .end local v9    # "userId":I
    .end local v10    # "shouldNotifyColors":Z
    .end local v11    # "shouldNotifyLockscreenColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local p2    # "which":I
    .end local p3    # "userIdIn":I
    .end local p4    # "force":Z
    .end local p5    # "fromForeground":Z
    .end local p6    # "reply":Landroid/os/IRemoteCallback;
    throw v0

    .line 3680
    .end local v13    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v8    # "name":Landroid/content/ComponentName;
    .restart local v9    # "userId":I
    .restart local v10    # "shouldNotifyColors":Z
    .restart local v11    # "shouldNotifyLockscreenColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local p2    # "which":I
    .restart local p3    # "userIdIn":I
    .restart local p4    # "force":Z
    .restart local p5    # "fromForeground":Z
    .restart local p6    # "reply":Landroid/os/IRemoteCallback;
    :goto_b
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method private updateCurrentWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2
    .param p1, "newWallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 3961
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_1

    .line 3964
    :cond_1
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3965
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 3966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    .line 3967
    :cond_2
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3968
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    .line 3969
    :cond_3
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3970
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 3972
    :cond_4
    :goto_0
    return-void

    .line 3962
    :goto_1
    return-void
.end method

.method private updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 4035
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v0, :cond_0

    .line 4036
    return-void

    .line 4038
    :cond_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4051
    return-void
.end method

.method private updateFallbackConnection(I)V
    .locals 14
    .param p1, "clientUid"    # I

    .line 785
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-nez v0, :cond_1

    :cond_0
    goto/16 :goto_7

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 787
    .local v0, "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 789
    .local v1, "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v2, :cond_2

    .line 790
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .local v2, "lockConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    goto :goto_0

    .line 792
    .end local v2    # "lockConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_2
    const/4 v2, 0x0

    .line 794
    .restart local v2    # "lockConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :goto_0
    const-string v3, "WallpaperManagerService"

    if-nez v1, :cond_3

    .line 795
    const-string v4, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void

    .line 799
    :cond_3
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    .line 800
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    .line 801
    .local v4, "displays":[Landroid/view/Display;
    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_f

    .line 802
    aget-object v8, v4, v6

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    .line 803
    .local v8, "displayId":I
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v9, v8, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(II)Z

    move-result v9

    if-nez v9, :cond_4

    .line 804
    goto/16 :goto_5

    .line 809
    :cond_4
    invoke-virtual {v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v9

    nop

    if-eqz v9, :cond_7

    if-eqz v2, :cond_5

    .line 810
    invoke-virtual {v2, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 811
    :cond_5
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v9

    .line 812
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 813
    .local v9, "fallbackConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-eqz v9, :cond_e

    .line 814
    iget-object v10, v9, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v10, :cond_6

    .line 815
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    .line 817
    :cond_6
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_5

    .line 823
    .end local v9    # "fallbackConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    :cond_7
    const/4 v9, 0x0

    .line 824
    .local v9, "which":I
    invoke-virtual {v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 825
    or-int/lit8 v9, v9, 0x1

    .line 827
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v10

    if-nez v10, :cond_a

    .line 828
    :cond_9
    or-int/lit8 v9, v9, 0x2

    .line 830
    :cond_a
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 832
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v10

    .line 833
    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 835
    .local v10, "fallbackConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-eqz v10, :cond_c

    :try_start_0
    iget-object v11, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v11, :cond_c

    iget v11, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    if-eq v11, v9, :cond_c

    .line 837
    iget-object v11, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v11, v9}, Landroid/service/wallpaper/IWallpaperEngine;->setWallpaperFlags(I)V

    .line 838
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v12, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    and-int/lit8 v13, v9, 0x2

    if-eqz v13, :cond_b

    move v13, v7

    goto :goto_2

    :cond_b
    move v13, v5

    :goto_2
    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 841
    iput v9, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 843
    :catch_0
    move-exception v11

    nop

    .line 844
    .local v11, "e":Landroid/os/RemoteException;
    const-string v12, "Failed to update fallback wallpaper engine flags"

    invoke-static {v3, v12, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 845
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_c
    :goto_3
    nop

    .line 846
    .end local v10    # "fallbackConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    :goto_4
    goto :goto_5

    .line 849
    :cond_d
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 850
    invoke-virtual {v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v10

    .line 851
    .restart local v10    # "fallbackConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-eqz v10, :cond_e

    .line 852
    iput v9, v10, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mWhich:I

    .line 853
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    iget-object v11, v11, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v12, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 801
    .end local v8    # "displayId":I
    .end local v9    # "which":I
    .end local v10    # "fallbackConnector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    :cond_e
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    :cond_f
    nop

    .line 858
    .end local v4    # "displays":[Landroid/view/Display;
    .end local v6    # "i":I
    goto :goto_6

    :cond_10
    invoke-virtual {p0, v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 859
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_12

    .line 860
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 865
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    goto :goto_6

    .line 868
    :cond_11
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$mappendConnectorWithCondition(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 872
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 878
    :cond_12
    :goto_6
    return-void

    .line 785
    .end local v0    # "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v1    # "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v2    # "lockConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :goto_7
    return-void
.end method


# virtual methods
.method public addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .locals 3
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3070
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 3071
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3073
    :goto_0
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object v0

    .line 3074
    .local v0, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-nez v0, :cond_2

    return-void

    .line 3075
    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3076
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {v2, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V

    .line 3077
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    invoke-interface {v0, p2}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V

    .line 3079
    return-void

    .line 3077
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .line 3754
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    .line 3755
    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v2

    .line 3754
    move-object v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    .local v3, "force":Z
    .local v4, "fromUser":Z
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .local v6, "reply":Landroid/os/IRemoteCallback;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p2

    return p2
.end method

.method bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 26
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .line 3764
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {p1 .. p1}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3766
    .local v4, "componentName":Landroid/content/ComponentName;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WallpaperManagerService"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    nop

    .line 3770
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_0

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3771
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v8

    .line 3770
    move-object/from16 v9, p1

    invoke-direct {v1, v9, v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/app/wallpaper/WallpaperDescription;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/app/wallpaper/WallpaperDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    :cond_1
    move v0, v7

    :goto_0
    move v8, v0

    .line 3776
    .local v8, "skipBinding":Z
    if-eqz v8, :cond_3

    .line 3779
    :try_start_0
    const-string v0, "Changing to the same component, ignoring"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    if-eqz v3, :cond_2

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3782
    :catch_0
    move-exception v0

    goto :goto_2

    .line 3784
    :cond_2
    :goto_1
    goto :goto_3

    .line 3782
    :goto_2
    nop

    .line 3783
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "Failed to send callback"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3785
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return v6

    .line 3788
    :cond_3
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 3789
    .local v10, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WPMS.bindWallpaperComponentLocked-"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3791
    if-nez v4, :cond_4

    .line 3792
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    move-object v4, v0

    .line 3793
    nop

    .line 3794
    invoke-virtual {v9}, Landroid/app/wallpaper/WallpaperDescription;->toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v0

    .end local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .local v0, "description":Landroid/app/wallpaper/WallpaperDescription;
    goto :goto_4

    .line 3940
    .end local v0    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    :catchall_0
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_e

    .line 3932
    :catch_1
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_d

    .line 3797
    .end local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .local v9, "description":Landroid/app/wallpaper/WallpaperDescription;
    :cond_4
    :goto_4
    :try_start_2
    iget v0, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    move v11, v0

    .line 3798
    .local v11, "serviceUserId":I
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v12, 0x1080

    invoke-interface {v0, v4, v12, v13, v11}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v12, v0

    .line 3800
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    if-nez v12, :cond_5

    .line 3802
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted wallpaper "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is unavailable"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3803
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3803
    return v7

    .line 3940
    .end local v11    # "serviceUserId":I
    .end local v12    # "si":Landroid/content/pm/ServiceInfo;
    :catchall_1
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_e

    .line 3932
    :catch_2
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_d

    .line 3805
    .restart local v11    # "serviceUserId":I
    .restart local v12    # "si":Landroid/content/pm/ServiceInfo;
    :cond_5
    :try_start_4
    const-string v0, "android.permission.BIND_WALLPAPER"

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_7

    .line 3806
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3809
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_6

    .line 3812
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3813
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3813
    return v7

    .line 3810
    :cond_6
    :try_start_6
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "skipBinding":Z
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3817
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "skipBinding":Z
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_7
    const/16 v17, 0x0

    .line 3819
    .local v17, "wi":Landroid/app/WallpaperInfo;
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-string v13, "android.service.wallpaper.WallpaperService"

    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 3820
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_10

    :try_start_8
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v4, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 3823
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v13, :cond_8

    :try_start_9
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    .line 3824
    invoke-virtual {v4, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 3828
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v0, v13

    move-object v13, v12

    move-object v12, v0

    goto :goto_5

    .line 3830
    :cond_8
    move-object v13, v12

    move-object v12, v0

    .end local v0    # "intent":Landroid/content/Intent;
    .local v12, "intent":Landroid/content/Intent;
    .local v13, "si":Landroid/content/pm/ServiceInfo;
    :goto_5
    move/from16 v16, v11

    .end local v11    # "serviceUserId":I
    .local v16, "serviceUserId":I
    :try_start_a
    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3832
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 3831
    const-wide/16 v14, 0x80

    move/from16 v18, v6

    move-object v6, v13

    move-object v13, v0

    .end local v13    # "si":Landroid/content/pm/ServiceInfo;
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    invoke-interface/range {v11 .. v16}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move/from16 v11, v16

    .line 3833
    .end local v16    # "serviceUserId":I
    .restart local v11    # "serviceUserId":I
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    .line 3834
    .local v13, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_d

    .line 3835
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v15, v0

    .line 3836
    .local v15, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v16, v7

    :try_start_b
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3837
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v0, :cond_b

    .line 3839
    :try_start_c
    new-instance v0, Landroid/app/WallpaperInfo;

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 p1, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .local p1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_d
    move-object/from16 v6, v19

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v7, v6}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object/from16 v17, v0

    .line 3852
    goto :goto_a

    .line 3846
    :catch_3
    move-exception v0

    goto :goto_7

    .line 3840
    :catch_4
    move-exception v0

    goto :goto_8

    .line 3846
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :catch_5
    move-exception v0

    move-object/from16 p1, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_7

    .line 3840
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :catch_6
    move-exception v0

    move-object/from16 p1, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_8

    .line 3846
    :goto_7
    nop

    .line 3847
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_9

    .line 3850
    :try_start_e
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3851
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3851
    return v16

    .line 3848
    :cond_9
    :try_start_f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "skipBinding":Z
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v6

    .line 3840
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "skipBinding":Z
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :goto_8
    nop

    .line 3841
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez p3, :cond_a

    .line 3844
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 3845
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3845
    return v16

    .line 3842
    :cond_a
    :try_start_10
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "skipBinding":Z
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v6

    .line 3837
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "skipBinding":Z
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_b
    move-object/from16 p1, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_9

    .line 3836
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_c
    move-object/from16 p1, v6

    .line 3834
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p1

    move/from16 v7, v16

    goto :goto_6

    .line 3932
    .end local v11    # "serviceUserId":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "i":I
    .end local v17    # "wi":Landroid/app/WallpaperInfo;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_7
    move-exception v0

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_d

    .line 3834
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v11    # "serviceUserId":I
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v13    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "i":I
    .restart local v17    # "wi":Landroid/app/WallpaperInfo;
    :cond_d
    move-object/from16 p1, v6

    move/from16 v16, v7

    .line 3856
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .end local v14    # "i":I
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    :goto_a
    if-nez v17, :cond_f

    .line 3857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3859
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_e

    .line 3862
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 3863
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3863
    return v16

    .line 3860
    :cond_e
    :try_start_11
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "skipBinding":Z
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v6

    .line 3856
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "skipBinding":Z
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_f
    move-object v0, v12

    move-object/from16 v6, v17

    goto :goto_b

    .line 3820
    .end local v13    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "intent":Landroid/content/Intent;
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    :cond_10
    move/from16 v18, v6

    move/from16 v16, v7

    move-object/from16 p1, v12

    .line 3867
    .end local v12    # "si":Landroid/content/pm/ServiceInfo;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    move-object/from16 v6, v17

    .end local v17    # "wi":Landroid/app/WallpaperInfo;
    .local v6, "wi":Landroid/app/WallpaperInfo;
    :goto_b
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 3868
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v12, "android.permission.AMBIENT_WALLPAPER"

    .line 3869
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 3868
    invoke-interface {v7, v12, v13, v11}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 3872
    .local v7, "hasPrivilege":I
    if-eqz v7, :cond_12

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v13, "android.hardware.type.watch"

    .line 3873
    move/from16 v14, v16

    invoke-interface {v12, v13, v14}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_12

    .line 3874
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3877
    .local v12, "msg":Ljava/lang/String;
    if-nez p3, :cond_11

    .line 3880
    invoke-static {v5, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 3881
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3881
    const/16 v16, 0x0

    return v16

    .line 3878
    :cond_11
    :try_start_12
    new-instance v13, Ljava/lang/SecurityException;

    invoke-direct {v13, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "skipBinding":Z
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v13
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 3885
    .end local v7    # "hasPrivilege":I
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v8    # "skipBinding":Z
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_12
    :try_start_13
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    .line 3886
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 3888
    .local v7, "clientOptions":Landroid/app/ActivityOptions;
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3891
    const v15, 0x10401ec

    invoke-virtual {v14, v15}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 3889
    invoke-static {v13, v14}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v21

    .line 3892
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v23

    .line 3893
    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v24

    .line 3888
    const/16 v20, 0x0

    const/high16 v22, 0x4000000

    move-object/from16 v19, v12

    invoke-static/range {v19 .. v24}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 3896
    .local v12, "clientIntent":Landroid/app/PendingIntent;
    sget-boolean v13, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v13, :cond_13

    :try_start_14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Binding to:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 3897
    :cond_13
    :try_start_15
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget v15, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object/from16 v25, v7

    move/from16 v17, v8

    .end local v7    # "clientOptions":Landroid/app/ActivityOptions;
    .end local v8    # "skipBinding":Z
    .local v17, "skipBinding":Z
    .local v25, "clientOptions":Landroid/app/ActivityOptions;
    const-wide/32 v7, 0x10000000

    :try_start_16
    invoke-interface {v13, v14, v7, v8, v15}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    .line 3899
    .local v7, "componentUid":I
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v8, v1, v6, v2, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperData;I)V

    move-object/from16 v21, v8

    .line 3900
    .local v21, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3901
    const-string v8, "android.intent.extra.client_label"

    const v13, 0x1040aa6

    invoke-virtual {v0, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3903
    const-string v8, "android.intent.extra.client_intent"

    invoke-virtual {v0, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3904
    const v8, 0x22001001

    .line 3908
    .local v8, "bindFlags":I
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x11102ab

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 3910
    const/high16 v13, 0x80000

    or-int/2addr v8, v13

    move/from16 v22, v8

    goto :goto_c

    .line 3908
    :cond_14
    move/from16 v22, v8

    .line 3912
    .end local v8    # "bindFlags":I
    .local v22, "bindFlags":I
    :goto_c
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3913
    invoke-direct {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHandlerForBindingWallpaperLocked()Landroid/os/Handler;

    move-result-object v23

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 3912
    move-object/from16 v20, v0

    move-object/from16 v19, v8

    move-object/from16 v24, v13

    .end local v0    # "intent":Landroid/content/Intent;
    .local v20, "intent":Landroid/content/Intent;
    invoke-virtual/range {v19 .. v24}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    move-object/from16 v8, v21

    .line 3914
    .end local v21    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .local v0, "bindSuccess":Z
    .local v8, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v0, :cond_16

    .line 3915
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to bind service: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3916
    .local v13, "msg":Ljava/lang/String;
    if-nez p3, :cond_15

    .line 3919
    invoke-static {v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 3920
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3920
    const/16 v16, 0x0

    return v16

    .line 3940
    .end local v0    # "bindSuccess":Z
    .end local v6    # "wi":Landroid/app/WallpaperInfo;
    .end local v7    # "componentUid":I
    .end local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v11    # "serviceUserId":I
    .end local v12    # "clientIntent":Landroid/app/PendingIntent;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v22    # "bindFlags":I
    .end local v25    # "clientOptions":Landroid/app/ActivityOptions;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    :catchall_2
    move-exception v0

    goto :goto_e

    .line 3932
    :catch_8
    move-exception v0

    goto :goto_d

    .line 3917
    .restart local v0    # "bindSuccess":Z
    .restart local v6    # "wi":Landroid/app/WallpaperInfo;
    .restart local v7    # "componentUid":I
    .restart local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v11    # "serviceUserId":I
    .restart local v12    # "clientIntent":Landroid/app/PendingIntent;
    .restart local v13    # "msg":Ljava/lang/String;
    .restart local v20    # "intent":Landroid/content/Intent;
    .restart local v22    # "bindFlags":I
    .restart local v25    # "clientOptions":Landroid/app/ActivityOptions;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_15
    :try_start_17
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v17    # "skipBinding":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v14

    .line 3922
    .end local v13    # "msg":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v17    # "skipBinding":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_16
    invoke-direct {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->maybeDetachLastWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3923
    nop

    .line 3924
    invoke-virtual {v2, v9}, Lcom/android/server/wallpaper/WallpaperData;->setDescription(Landroid/app/wallpaper/WallpaperDescription;)V

    .line 3928
    iput-object v8, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3929
    iput-object v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 3930
    invoke-direct {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateCurrentWallpapers(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 3931
    invoke-direct {v1, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 3940
    .end local v0    # "bindSuccess":Z
    .end local v6    # "wi":Landroid/app/WallpaperInfo;
    .end local v7    # "componentUid":I
    .end local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v11    # "serviceUserId":I
    .end local v12    # "clientIntent":Landroid/app/PendingIntent;
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v22    # "bindFlags":I
    .end local v25    # "clientOptions":Landroid/app/ActivityOptions;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3941
    nop

    .line 3942
    return v18

    .line 3940
    .end local v17    # "skipBinding":Z
    .local v8, "skipBinding":Z
    :catchall_3
    move-exception v0

    move/from16 v17, v8

    .end local v8    # "skipBinding":Z
    .restart local v17    # "skipBinding":Z
    goto :goto_e

    .line 3932
    .end local v17    # "skipBinding":Z
    .restart local v8    # "skipBinding":Z
    :catch_9
    move-exception v0

    move/from16 v17, v8

    .end local v8    # "skipBinding":Z
    .restart local v17    # "skipBinding":Z
    :goto_d
    nop

    .line 3933
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3934
    .local v6, "msg":Ljava/lang/String;
    if-nez p3, :cond_17

    .line 3937
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 3938
    nop

    .line 3940
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3938
    const/16 v16, 0x0

    return v16

    .line 3935
    :cond_17
    :try_start_19
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v17    # "skipBinding":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 3940
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v4    # "componentName":Landroid/content/ComponentName;
    .restart local v9    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local v10    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v17    # "skipBinding":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :goto_e
    invoke-virtual {v10}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 3941
    throw v0
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 2182
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearWallpaper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    :cond_0
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, p3

    goto :goto_2

    .line 2187
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "clearWallpaper"

    .line 2187
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p3

    .end local p3    # "userId":I
    .local v3, "userId":I
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 2190
    .end local v3    # "userId":I
    .restart local p3    # "userId":I
    const/4 v1, 0x0

    .line 2191
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2192
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFromForegroundApp(Ljava/lang/String;)Z

    move-result v0

    .line 2193
    .local v0, "fromForeground":Z
    const/4 v3, 0x0

    invoke-direct {p0, p2, p3, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    .line 2195
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 2196
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    move-object v1, v3

    goto :goto_0

    .line 2201
    .end local v0    # "fromForeground":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2198
    .restart local v0    # "fromForeground":Z
    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    if-nez v1, :cond_4

    .line 2199
    :cond_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    move-object v1, v3

    .line 2201
    .end local v0    # "fromForeground":Z
    :cond_4
    monitor-exit v2

    .line 2202
    return-void

    .line 2201
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2184
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :cond_5
    move v3, p3

    .line 2185
    .end local p3    # "userId":I
    .restart local v3    # "userId":I
    :goto_2
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4542
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4544
    :cond_0
    const-string v0, "mDefaultWallpaperComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4545
    const-string v0, "mImageWallpaper="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4547
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4548
    :try_start_0
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4550
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V

    .line 4549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4564
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4549
    .restart local v1    # "i":I
    :cond_1
    nop

    .line 4552
    .end local v1    # "i":I
    const-string v1, "Lock wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4553
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4554
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V

    .line 4553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 4556
    .end local v1    # "i":I
    const-string v1, "Fallback wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4557
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    if-eqz v1, :cond_3

    .line 4558
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->dumpWallpaper(Lcom/android/server/wallpaper/WallpaperData;Ljava/io/PrintWriter;)V

    .line 4562
    :cond_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    invoke-virtual {v1, p2}, Lcom/nothing/NtWallpaperManager;->dumpHistory(Ljava/io/PrintWriter;)V

    .line 4564
    monitor-exit v0

    .line 4565
    return-void

    .line 4564
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1820
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1821
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 1823
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 1821
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1825
    .end local v0    # "i":I
    return-void
.end method

.method getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;
    .locals 7
    .param p1, "wallpaperData"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 3288
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3289
    :try_start_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3291
    .local v1, "wallpaperColors":Landroid/app/WallpaperColors;
    if-eqz v1, :cond_0

    .line 3292
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 3294
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    and-int/lit8 v2, v2, -0x3

    .line 3297
    .local v2, "adjustedColorHints":I
    new-instance v3, Landroid/app/WallpaperColors;

    .line 3298
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v5

    .line 3299
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    monitor-exit v0

    .line 3297
    return-object v3

    .line 3302
    .end local v1    # "wallpaperColors":Landroid/app/WallpaperColors;
    .end local v2    # "adjustedColorHints":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3301
    .restart local v1    # "wallpaperColors":Landroid/app/WallpaperColors;
    :cond_0
    monitor-exit v0

    return-object v1

    .line 3302
    .end local v1    # "wallpaperColors":Landroid/app/WallpaperColors;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "bitmapSize"    # Landroid/graphics/Point;
    .param p2, "screenOrientations"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "[I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 2661
    .local p3, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    nop

    .line 2665
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCropMap([ILjava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2666
    .local v0, "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v1

    .line 2667
    .local v1, "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;
    .locals 14
    .param p2, "which"    # I
    .param p3, "originalBitmap"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;IZI)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2578
    .local p1, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getBitmapCrop"

    .line 2578
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move/from16 v2, p4

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2580
    .end local p4    # "userId":I
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2581
    :try_start_0
    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2582
    const/4 v0, 0x2

    move/from16 v3, p2

    if-ne v3, v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    .line 2618
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    :goto_0
    nop

    .line 2584
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    goto/16 :goto_3

    .line 2587
    :cond_2
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 2588
    invoke-virtual {v5, v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    move-result-object v5

    .line 2589
    .local v5, "relativeSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v6, Landroid/graphics/Point;

    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 2590
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget-object v8, v0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 2591
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 2592
    .local v6, "croppedBitmapSize":Landroid/graphics/Point;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Landroid/graphics/Point;->equals(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2596
    monitor-exit v2

    return-object v4

    .line 2598
    :cond_3
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 2599
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2600
    .local v4, "relativeDefaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 2601
    .local v8, "adjustedRelativeSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 2602
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2603
    .local v10, "key":I
    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->contains(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2604
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    invoke-virtual {v8, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2601
    .end local v10    # "key":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 2607
    .end local v9    # "i":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2608
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    move v7, v11

    .line 2610
    .local v7, "rtl":Z
    :cond_6
    iget-object v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2611
    invoke-virtual {v10}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v10

    .line 2612
    .local v10, "defaultDisplayInfo":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Point;

    .line 2613
    .local v12, "displaySize":Landroid/graphics/Point;
    invoke-static {v12, v10, v6, v8, v7}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2615
    nop

    .end local v12    # "displaySize":Landroid/graphics/Point;
    goto :goto_2

    .line 2616
    :cond_7
    if-eqz p3, :cond_8

    invoke-static {v0, v9}, Lcom/android/server/wallpaper/WallpaperCropper;->getOriginalCropHints(Lcom/android/server/wallpaper/WallpaperData;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    move-object v9, v11

    .line 2617
    :cond_8
    monitor-exit v2

    return-object v9

    .line 2585
    .end local v4    # "relativeDefaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v5    # "relativeSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v6    # "croppedBitmapSize":Landroid/graphics/Point;
    .end local v7    # "rtl":Z
    .end local v8    # "adjustedRelativeSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v10    # "defaultDisplayInfo":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    :goto_3
    monitor-exit v2

    return-object v4

    .line 2618
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_1
    move-exception v0

    move/from16 v3, p2

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentBitmapCrops(II)Landroid/os/Bundle;
    .locals 7
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2623
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getBitmapCrop"

    .line 2623
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2625
    .end local v2    # "userId":I
    .restart local p2    # "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2626
    :try_start_0
    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2627
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    .line 2639
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    :goto_0
    nop

    .line 2629
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_2

    .line 2632
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2633
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2634
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2635
    .local v4, "key":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 2636
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2633
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 2638
    .end local v3    # "i":I
    monitor-exit v1

    return-object v2

    .line 2630
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_2
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 2639
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentWallpaperData(II)Lcom/android/server/wallpaper/WallpaperData;
    .locals 3
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1686
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1688
    const/4 v1, 0x1

    nop

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    .line 1690
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1688
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    :goto_0
    nop

    .line 1689
    .local v1, "wallpaperDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperData;>;"
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    monitor-exit v0

    return-object v2

    .line 1690
    .end local v1    # "wallpaperDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperData;>;"
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;
    .locals 8
    .param p1, "bitmapSize"    # Landroid/graphics/Point;
    .param p3, "screenOrientations"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;[I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2645
    .local p2, "displaySizes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    .local p4, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCropMap([ILjava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2646
    .local v0, "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v1

    .line 2647
    .local v1, "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2648
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 2650
    .local v4, "rtl":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2651
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v3

    .line 2652
    .local v3, "defaultDisplayInfo":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 2653
    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-static {v6, v3, p1, v1, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2655
    .end local v6    # "displaySize":Landroid/graphics/Point;
    goto :goto_1

    .line 2656
    :cond_1
    return-object v2
.end method

.method public getHeightHint(I)I
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2425
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2429
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 2430
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v1, :cond_0

    .line 2431
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2432
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v2

    .line 2433
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    monitor-exit v0

    return v3

    .line 2437
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2435
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2427
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "displayId":I
    throw v1

    .line 2437
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "displayId":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1908
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2502
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "callingPkg":Ljava/lang/String;
    .end local p2    # "cb":Landroid/app/IWallpaperManagerCallback;
    .end local p3    # "which":I
    .end local p4    # "outParams":Landroid/os/Bundle;
    .end local p5    # "wallpaperUserId":I
    .local v1, "callingPkg":Ljava/lang/String;
    .local v3, "cb":Landroid/app/IWallpaperManagerCallback;
    .local v4, "which":I
    .local v5, "outParams":Landroid/os/Bundle;
    .local v6, "wallpaperUserId":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .locals 9
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3246
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 3247
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3249
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v7, "getWallpaperColors"

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, p2

    .end local p2    # "userId":I
    .local v4, "userId":I
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 3252
    .end local v4    # "userId":I
    .restart local p2    # "userId":I
    const/4 v2, 0x0

    .line 3255
    .local v2, "wallpaperData":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3256
    if-ne p1, v1, :cond_2

    .line 3257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    move-object v2, v1

    goto :goto_1

    .line 3271
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3262
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 3263
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    move-object v2, v1

    .line 3266
    :cond_3
    if-nez v2, :cond_4

    .line 3267
    monitor-exit v3

    const/4 v0, 0x0

    return-object v0

    .line 3269
    :cond_4
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_5

    iget-boolean v1, v2, Lcom/android/server/wallpaper/WallpaperData;->mIsColorExtractedFromDim:Z

    if-eqz v1, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    nop

    .line 3271
    .local v0, "shouldExtract":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3273
    if-eqz v0, :cond_7

    .line 3274
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 3277
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v1

    return-object v1

    .line 3271
    .end local v0    # "shouldExtract":Z
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWallpaperDimAmount()F
    .locals 4

    .line 3215
    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3216
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 3218
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperData;
    if-nez v1, :cond_0

    .line 3219
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    move-object v1, v2

    .line 3220
    if-nez v1, :cond_0

    .line 3221
    const-string v2, "WallpaperManagerService"

    const-string v3, "getWallpaperDimAmount: wallpaperData is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3226
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3225
    .restart local v1    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :cond_0
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    monitor-exit v0

    return v2

    .line 3226
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWallpaperIdForUser(II)I
    .locals 7
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2785
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperIdForUser"

    .line 2785
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2788
    .end local v2    # "userId":I
    .restart local p2    # "userId":I
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    .line 2789
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2793
    :goto_0
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    move-object v1, v0

    .line 2794
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperData;>;"
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2795
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 2796
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v0, :cond_3

    .line 2797
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    monitor-exit v2

    return v3

    .line 2799
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2796
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_3
    nop

    .line 2799
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    monitor-exit v2

    .line 2800
    const/4 v0, -0x1

    return v0

    .line 2799
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 1
    .param p1, "userId"    # I

    .line 2704
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "userId"    # I

    .line 2766
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2768
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string v4, "wallpaper_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2770
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2771
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 2780
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2774
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    const/high16 v3, 0x10000000

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v1

    .line 2775
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    nop

    .line 2777
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Error getting wallpaper info file"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2779
    nop

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v1

    .line 2780
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2709
    nop

    .line 2710
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInstance(IIZ)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v0

    .line 2711
    .local v0, "instance":Landroid/app/wallpaper/WallpaperInstance;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperInstance;->getInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;
    .locals 1
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2736
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInstance(IIZ)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v0

    return-object v0
.end method

.method getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 4334
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 4335
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperData;>;"
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    .line 4336
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-nez v2, :cond_3

    .line 4341
    if-ne p2, v0, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    .line 4342
    .local v3, "whichLoad":I
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 4343
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    .line 4344
    if-nez v2, :cond_3

    .line 4348
    if-ne p2, v0, :cond_2

    .line 4349
    new-instance v4, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v4, p1, v0}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    move-object v2, v4

    .line 4350
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 4354
    :cond_2
    const-string v0, "WallpaperManagerService"

    const-string v4, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4355
    new-instance v0, Lcom/android/server/wallpaper/WallpaperData;

    const/4 v4, 0x1

    invoke-direct {v0, p1, v4}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    move-object v2, v0

    .line 4356
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4360
    .end local v3    # "whichLoad":I
    :cond_3
    :goto_2
    return-object v2
.end method

.method public getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;
    .locals 19
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p4, "which"    # I
    .param p5, "outParams"    # Landroid/os/Bundle;
    .param p6, "wallpaperUserId"    # I
    .param p7, "getCropped"    # Z

    .line 2510
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2511
    .local v11, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2512
    .local v3, "callingUid":I
    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v18

    .line 2513
    .local v18, "hasPrivilege":Z
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v18, :cond_3

    .line 2514
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v2, "android.permission.MANAGE_EXTERNAL_STORAGE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWallpaperWithFeature from package: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2515
    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasAppOpPermission(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move-object v6, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v13

    goto :goto_1

    .line 2514
    :cond_1
    move-object v6, v1

    .line 2515
    :goto_0
    move v0, v12

    :goto_1
    move v14, v0

    .line 2517
    .local v14, "hasManageExternalStorage":Z
    if-nez v14, :cond_2

    .line 2518
    iget-object v0, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v2, v11

    .end local v11    # "callingPid":I
    .local v2, "callingPid":I
    invoke-virtual/range {v0 .. v5}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z

    .end local v2    # "callingPid":I
    .restart local v11    # "callingPid":I
    goto :goto_2

    .line 2517
    :cond_2
    move-object/from16 v4, p1

    goto :goto_2

    .line 2513
    .end local v14    # "hasManageExternalStorage":Z
    :cond_3
    move-object v6, v1

    .line 2523
    :goto_2
    const-string v16, "getWallpaper"

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move v0, v12

    move v1, v13

    move/from16 v13, p6

    move v12, v3

    .end local v3    # "callingUid":I
    .local v12, "callingUid":I
    invoke-static/range {v11 .. v17}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2526
    .end local v12    # "callingUid":I
    .end local p6    # "wallpaperUserId":I
    .local v2, "wallpaperUserId":I
    .restart local v3    # "callingUid":I
    const/4 v5, 0x2

    if-eq v8, v0, :cond_4

    if-ne v8, v5, :cond_5

    :cond_4
    goto :goto_3

    .line 2527
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2530
    :goto_3
    iget-object v12, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2532
    nop

    nop

    if-ne v8, v5, :cond_6

    :try_start_0
    iget-object v0, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_4

    .line 2572
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 2532
    :cond_6
    iget-object v0, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_4
    move-object v5, v0

    .line 2533
    .local v5, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperData;>;"
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    move-object v13, v0

    .line 2534
    .local v13, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v14, 0x0

    if-nez v13, :cond_7

    .line 2538
    monitor-exit v12

    return-object v14

    .line 2541
    :cond_7
    iget-object v0, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2542
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 2544
    .local v1, "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    if-eqz v9, :cond_8

    .line 2545
    :try_start_1
    const-string v0, "width"

    iget v15, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2546
    const-string v0, "height"

    iget v15, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 2567
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 p6, v14

    goto/16 :goto_9

    .line 2548
    :cond_8
    :goto_5
    if-eqz v7, :cond_9

    .line 2549
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2552
    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v13}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_a
    :try_start_2
    invoke-virtual {v13}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    :goto_6
    nop

    .line 2554
    .local v0, "result":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v15, :cond_b

    .line 2555
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v14

    .line 2560
    :cond_b
    :try_start_4
    sget-boolean v15, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v15, :cond_c

    .line 2561
    const-string v15, "WallpaperManagerService"
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 p6, v14

    :try_start_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v1

    .end local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .local v16, "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :try_start_6
    const-string v1, "getWallpaperWithFeature callingPkg:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", which:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wallpaperUserId:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getCropped:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaper:"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    invoke-virtual {v13}, Lcom/android/server/wallpaper/WallpaperData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2561
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2567
    .end local v0    # "result":Ljava/io/File;
    :catch_1
    move-exception v0

    goto :goto_9

    .end local v16    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :catch_2
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v16    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :goto_7
    goto :goto_9

    .end local v16    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :catch_3
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 p6, v14

    goto :goto_7

    .line 2560
    .restart local v0    # "result":Ljava/io/File;
    :cond_c
    move-object/from16 v16, v1

    move-object/from16 p6, v14

    .line 2566
    .end local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v16    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :goto_8
    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v12

    return-object v1

    .line 2567
    .end local v0    # "result":Ljava/io/File;
    :goto_9
    nop

    .line 2569
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "WallpaperManagerService"

    const-string v14, "Error getting wallpaper"

    invoke-static {v1, v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2571
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    monitor-exit v12

    return-object p6

    .line 2572
    .end local v5    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperData;>;"
    .end local v13    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v16    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :goto_a
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public getWidthHint(I)I
    .locals 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2406
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2410
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 2411
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v1, :cond_0

    .line 2412
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 2413
    invoke-virtual {v2, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v2

    .line 2414
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    monitor-exit v0

    return v3

    .line 2418
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2416
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2408
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "displayId":I
    throw v1

    .line 2418
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "displayId":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .line 2309
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2310
    .local v0, "callingUser":I
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasCrossUserPermission()Z

    move-result v1

    .line 2311
    .local v1, "allowCrossUser":Z
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2312
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasNamedWallpaper() caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cross-user?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2318
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2320
    .local v3, "ident":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2322
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2323
    nop

    .line 2324
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    nop

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2325
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_1

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v9, :cond_1

    .line 2327
    goto :goto_0

    .line 2344
    .end local v3    # "ident":J
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 2331
    .restart local v3    # "ident":J
    .restart local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2332
    goto :goto_0

    .line 2334
    :cond_2
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperData;

    .line 2335
    .local v9, "wd":Lcom/android/server/wallpaper/WallpaperData;
    if-nez v9, :cond_3

    .line 2337
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    const/4 v11, 0x3

    invoke-direct {p0, v10, v8, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 2338
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperData;

    move-object v9, v8

    .line 2340
    :cond_3
    if-eqz v9, :cond_4

    iget-object v8, v9, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2341
    monitor-exit v2

    const/4 v2, 0x1

    return v2

    .line 2343
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "wd":Lcom/android/server/wallpaper/WallpaperData;
    :cond_4
    goto :goto_0

    .line 2344
    .end local v3    # "ident":J
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    monitor-exit v2

    .line 2345
    return v8

    .line 2322
    .restart local v3    # "ident":J
    :catchall_1
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2323
    nop

    .end local v0    # "callingUser":I
    .end local v1    # "allowCrossUser":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    throw v5

    .line 2344
    .end local v3    # "ident":J
    .restart local v0    # "callingUser":I
    .restart local v1    # "allowCrossUser":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method initialize()V
    .locals 5

    .line 1808
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1809
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1814
    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 1815
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 1816
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 4143
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4144
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4145
    .local v1, "uidPackages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 4146
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_0

    .line 4147
    const/4 v3, 0x0

    return v3

    .line 4149
    :cond_0
    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4150
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 4151
    .local v3, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4152
    return v4

    .line 4154
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 4155
    .local v5, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4157
    .local v6, "ident":J
    :try_start_0
    const-class v8, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerInternal;

    .line 4158
    .local v8, "umi":Lcom/android/server/pm/UserManagerInternal;
    const-string v9, "no_set_wallpaper"

    invoke-virtual {v8, v9, v5}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4160
    xor-int/2addr v4, v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4158
    return v4

    .line 4160
    .end local v8    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :catchall_0
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4161
    throw v4
.end method

.method public isStaticWallpaper(I)Z
    .locals 4
    .param p1, "which"    # I

    .line 3124
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3125
    const/4 v1, 0x2

    nop

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    .line 3129
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3125
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_0
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 3126
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperData;

    .line 3127
    .local v1, "wallpaperData":Lcom/android/server/wallpaper/WallpaperData;
    if-nez v1, :cond_1

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 3128
    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 3129
    .end local v1    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperData;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 2
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 4166
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4167
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    goto :goto_0

    .line 4168
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    :goto_0
    nop

    .line 4169
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "connection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 766
    if-nez p2, :cond_0

    .line 767
    const/4 v0, 0x0

    return v0

    .line 770
    :cond_0
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result v0

    return v0

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/DesktopModeHelper;->isDeviceEligibleForDesktopExperienceWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    iget-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperData;)Z

    move-result v0

    return v0

    .line 781
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 4134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4135
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforcePackageBelongsToUid(Ljava/lang/String;I)V

    .line 4137
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public lockScreenWallpaperExists()Z
    .locals 3

    .line 3113
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyGoingToSleep(IILandroid/os/Bundle;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2924
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkCallerIsSystemOrSystemUi()V

    .line 2925
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2926
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2927
    .local v4, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda20;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2926
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2939
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 2940
    return-void

    .line 2939
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyWakingUp(IILandroid/os/Bundle;)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2903
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkCallerIsSystemOrSystemUi()V

    .line 2904
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2905
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2906
    .local v4, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v6, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2905
    .end local v4    # "data":Lcom/android/server/wallpaper/WallpaperData;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2917
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    .line 2918
    return-void

    .line 2917
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 456
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 457
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 1939
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    .line 1941
    const/16 v1, 0x226

    if-ne p1, v1, :cond_0

    .line 1942
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_0

    .line 1943
    :cond_0
    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 1944
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 1946
    :cond_1
    :goto_0
    return-void
.end method

.method onRemoveUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2029
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    .line 2031
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2032
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 2033
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperFiles(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2034
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2035
    monitor-exit v0

    .line 2036
    return-void

    .line 2035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4480
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "in":Ljava/io/FileDescriptor;
    .end local p2    # "out":Ljava/io/FileDescriptor;
    .end local p3    # "err":Ljava/io/FileDescriptor;
    .end local p4    # "args":[Ljava/lang/String;
    .end local p5    # "callback":Landroid/os/ShellCallback;
    .end local p6    # "resultReceiver":Landroid/os/ResultReceiver;
    .local v2, "in":Ljava/io/FileDescriptor;
    .local v3, "out":Ljava/io/FileDescriptor;
    .local v4, "err":Ljava/io/FileDescriptor;
    .local v5, "args":[Ljava/lang/String;
    .local v6, "callback":Landroid/os/ShellCallback;
    .local v7, "resultReceiver":Landroid/os/ResultReceiver;
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4482
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1979
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1980
    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_2

    .line 1981
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHomeWallpaperWaitingForUnlock:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1982
    nop

    .line 1983
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    .line 1984
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 1985
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1987
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1988
    nop

    .line 1989
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_0

    .line 2025
    .end local v1    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1992
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperWaitingForUnlock:Z

    if-eqz v1, :cond_1

    .line 1993
    nop

    .line 1994
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v1

    .line 1995
    .local v1, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 1996
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 1997
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1998
    nop

    .line 1999
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 2007
    .end local v1    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2008
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2009
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 2022
    .local v1, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2025
    .end local v1    # "relabeler":Ljava/lang/Runnable;
    :cond_2
    monitor-exit v0

    .line 2026
    return-void

    .line 2025
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2806
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "registerWallpaperColorsCallback"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2808
    .end local v2    # "userId":I
    .restart local p2    # "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2810
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2811
    .local v0, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-nez v0, :cond_0

    .line 2812
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v2

    .line 2813
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2822
    .end local v0    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2815
    .restart local v0    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    :cond_0
    :goto_0
    nop

    .line 2816
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2817
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-nez v2, :cond_1

    .line 2818
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 2819
    invoke-virtual {v0, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2821
    :cond_1
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2822
    nop

    .end local v0    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v1

    .line 2823
    return-void

    .line 2822
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .locals 6
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3085
    .local p2, "removeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 3086
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3088
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 3089
    .local v0, "callingUser":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p4, :cond_5

    .line 3092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3093
    .local v1, "identity":J
    const/4 v3, 0x0

    .line 3095
    .local v3, "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3096
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {v5, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 3097
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3101
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    goto :goto_3

    .line 3097
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "callingUser":Landroid/os/UserHandle;
    .end local v1    # "identity":J
    .end local v3    # "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "callback":Landroid/app/ILocalWallpaperColorConsumer;
    .end local p2    # "removeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3101
    .restart local v0    # "callingUser":Landroid/os/UserHandle;
    .restart local v1    # "identity":J
    .restart local v3    # "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "callback":Landroid/app/ILocalWallpaperColorConsumer;
    .restart local p2    # "removeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "displayId":I
    :catchall_1
    move-exception v4

    goto :goto_2

    .line 3098
    :catch_0
    move-exception v4

    goto :goto_1

    .line 3101
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3102
    throw v4

    .line 3103
    :goto_3
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object v4

    .line 3104
    .local v4, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-eqz v4, :cond_2

    if-nez v3, :cond_3

    :cond_2
    goto :goto_4

    .line 3105
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v4, v3}, Landroid/service/wallpaper/IWallpaperEngine;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 3106
    :cond_4
    return-void

    .line 3104
    :goto_4
    return-void

    .line 3090
    .end local v1    # "identity":J
    .end local v3    # "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v4    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_5
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling user id does not match"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method saveSettingsLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 4307
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 4308
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPMS.saveSettingsLocked-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4309
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDataParser:Lcom/android/server/wallpaper/WallpaperDataParser;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 4310
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    .line 4309
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperDataParser;->saveSettingsLocked(ILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 4311
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4312
    return-void
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2354
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2355
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    return-void

    .line 2360
    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2361
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2363
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2364
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2365
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    .line 2366
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    if-lez p1, :cond_8

    if-lez p2, :cond_8

    .line 2370
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v4, p4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2374
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v4, p4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v4

    .line 2375
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    iget v5, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    if-ne p1, v5, :cond_1

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-eq p2, v5, :cond_6

    :cond_1
    goto :goto_0

    .line 2399
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 2376
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :goto_0
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 2377
    iput p2, v4, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 2378
    if-nez p4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2379
    :cond_2
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_3

    monitor-exit v0

    return-void

    .line 2380
    :cond_3
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_6

    .line 2381
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2382
    invoke-virtual {v5, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v5

    .line 2383
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 2384
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_1
    if-eqz v6, :cond_5

    .line 2386
    :try_start_1
    invoke-interface {v6, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2389
    goto :goto_2

    .line 2387
    :catch_0
    move-exception v2

    .line 2388
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "WallpaperManagerService"

    const-string v8, "Failed to set desired size"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2390
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_3

    .line 2391
    :cond_5
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    .line 2395
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDimensionsChanged:Z

    .line 2399
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    .end local v6    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_6
    :goto_3
    monitor-exit v0

    .line 2400
    return-void

    .line 2371
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find display with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2367
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2399
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 12
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 2444
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2445
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2446
    return-void

    .line 2448
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2449
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v1, p3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2452
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2453
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    .line 2454
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_8

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_8

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_8

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_8

    .line 2458
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v4, p3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getMaximumSizeDimension(I)I

    move-result v4

    .line 2460
    .local v4, "maxSize":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 2461
    .local v5, "paddingWidth":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 2462
    .local v6, "paddingHeight":I
    if-gt v5, v4, :cond_7

    .line 2466
    if-gt v6, v4, :cond_6

    .line 2471
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v7, p3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v7

    .line 2472
    .local v7, "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 2473
    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2474
    if-nez p3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_0

    .line 2495
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v4    # "maxSize":I
    .end local v5    # "paddingWidth":I
    .end local v6    # "paddingHeight":I
    .end local v7    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 2475
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v4    # "maxSize":I
    .restart local v5    # "paddingWidth":I
    .restart local v6    # "paddingHeight":I
    .restart local v7    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :cond_1
    :goto_0
    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v8, v1, :cond_2

    monitor-exit v0

    return-void

    .line 2476
    :cond_2
    iget-object v8, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v8, :cond_5

    .line 2477
    iget-object v8, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2478
    invoke-virtual {v8, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v8

    .line 2479
    .local v8, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    if-eqz v8, :cond_3

    iget-object v9, v8, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 2480
    .local v9, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_1
    if-eqz v9, :cond_4

    .line 2482
    :try_start_1
    invoke-interface {v9, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2485
    goto :goto_2

    .line 2483
    :catch_0
    move-exception v2

    .line 2484
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v10, "WallpaperManagerService"

    const-string v11, "Failed to set display padding"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_3

    .line 2487
    :cond_4
    iget-object v10, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v10, :cond_5

    if-eqz v8, :cond_5

    .line 2491
    iput-boolean v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mPaddingChanged:Z

    .line 2495
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v4    # "maxSize":I
    .end local v5    # "paddingWidth":I
    .end local v6    # "paddingHeight":I
    .end local v7    # "wpdData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v8    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
    .end local v9    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_5
    :goto_3
    monitor-exit v0

    .line 2496
    return-void

    .line 2467
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v4    # "maxSize":I
    .restart local v5    # "paddingWidth":I
    .restart local v6    # "paddingHeight":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "padding height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " exceeds max height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2463
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "padding width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " exceeds max width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2455
    .end local v4    # "maxSize":I
    .end local v5    # "paddingWidth":I
    .end local v6    # "paddingHeight":I
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2450
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v1

    .line 2495
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setInAmbientMode(ZJ)V
    .locals 8
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 2851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2852
    .local v0, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/service/wallpaper/IWallpaperEngine;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2853
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2854
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 2855
    .local v6, "data":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2856
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 2863
    .end local v6    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2858
    .restart local v6    # "data":Lcom/android/server/wallpaper/WallpaperData;
    :cond_0
    :goto_1
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2859
    invoke-virtual {v7, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 2860
    .local v7, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-eqz v7, :cond_1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2854
    .end local v6    # "data":Lcom/android/server/wallpaper/WallpaperData;
    .end local v7    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2863
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/IWallpaperEngine;

    .line 2866
    .local v2, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2869
    goto :goto_3

    .line 2867
    :catch_0
    move-exception v3

    .line 2868
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WallpaperManagerService"

    const-string v5, "Failed to set ambient mode"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2870
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_2

    .line 2871
    :cond_3
    return-void

    .line 2863
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;[ILjava/util/List;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .locals 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "screenOrientations"    # [I
    .param p5, "allowBackup"    # Z
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "which"    # I
    .param p8, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;Z",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/app/IWallpaperManagerCallback;",
            "I)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .line 3319
    .local p4, "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 3320
    const-string v0, "WallpaperManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWallpaper: name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", callingPackage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", screenOrientations = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3322
    if-nez v4, :cond_0

    move-object v10, v8

    goto :goto_0

    .line 3323
    :cond_0
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v10

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", crops = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", allowBackup = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3320
    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_1
    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/app/IWallpaperManager$Stub;->getCallingUid()I

    move-result v11

    const-string v15, "changing wallpaper"

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v12, p9

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3333
    .end local p9    # "userId":I
    .local v9, "userId":I
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setWallpaper user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", which:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", callingPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/nothing/NtWallpaperManager;->logHistory(Ljava/lang/String;)V

    .line 3335
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3337
    and-int/lit8 v0, v7, 0x3

    if-eqz v0, :cond_a

    .line 3343
    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object/from16 v3, p6

    move-object/from16 v2, p8

    goto/16 :goto_7

    .line 3347
    :cond_2
    invoke-direct {v1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCropMap([ILjava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    move-object v10, v0

    .line 3348
    .local v10, "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 3349
    .local v11, "cropHint":Landroid/graphics/Rect;
    nop

    .line 3350
    invoke-direct {v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFromForegroundApp(Ljava/lang/String;)Z

    move-result v0

    move v12, v0

    .line 3353
    .local v12, "fromForegroundApp":Z
    nop

    .line 3355
    nop

    .line 3363
    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 3364
    :try_start_0
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setWallpaper which=0x"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3416
    :catchall_0
    move-exception v0

    move-object/from16 v3, p6

    move-object/from16 v2, p8

    goto/16 :goto_6

    .line 3366
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    move-object v8, v0

    .line 3367
    .local v8, "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v14, 0x1

    if-eqz v8, :cond_4

    iget-object v15, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3369
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3368
    invoke-virtual {v15, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v14

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    move v15, v0

    .line 3370
    .local v15, "systemIsStatic":Z
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v14

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    move/from16 p9, v0

    .line 3376
    .local p9, "systemIsBoth":Z
    if-ne v7, v14, :cond_6

    if-eqz v15, :cond_6

    if-eqz p9, :cond_6

    .line 3377
    const-string v0, "WallpaperManagerService"

    const-string v14, "Migrating current wallpaper to be lock-only before updating system wallpaper"

    invoke-static {v0, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    invoke-direct {v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateStaticSystemToLockWallpaperLocked(I)V

    .line 3382
    :cond_6
    invoke-virtual {v1, v9, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v0

    move-object v14, v0

    .line 3383
    .local v14, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    if-eqz v0, :cond_7

    .line 3384
    const-string v0, "WallpaperManagerService"

    const-string v3, "Starting new static wp migration before previous migration finished"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_7
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    invoke-direct {v0, v1, v14}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperDestinationChangeHandler;

    .line 3387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3389
    .local v17, "ident":J
    move-object/from16 v3, p6

    :try_start_1
    invoke-virtual {v1, v2, v14, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 3390
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_8

    .line 3391
    move-object/from16 v19, v0

    const/4 v0, 0x1

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v19, "pfd":Landroid/os/ParcelFileDescriptor;
    iput-boolean v0, v14, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3392
    move/from16 v2, p9

    .end local p9    # "systemIsBoth":Z
    .local v2, "systemIsBoth":Z
    :try_start_2
    iput-boolean v2, v14, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 3393
    iput v7, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3394
    move/from16 v16, v2

    move-object/from16 v2, p8

    .end local v2    # "systemIsBoth":Z
    .local v16, "systemIsBoth":Z
    :try_start_3
    iput-object v2, v14, Lcom/android/server/wallpaper/WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 3395
    nop

    .line 3396
    iput-boolean v12, v14, Lcom/android/server/wallpaper/WallpaperData;->fromForegroundApp:Z

    .line 3397
    iget-object v0, v14, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3398
    nop

    .line 3399
    iput-object v10, v14, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 3400
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 3401
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 3402
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayCurrentOrientation()I

    move-result v0

    iput v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mOrientationWhenSet:I

    .line 3404
    iput-boolean v6, v14, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 3405
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDimAmount()F

    move-result v0

    iput v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 3406
    goto :goto_4

    .line 3414
    .end local v19    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v16    # "systemIsBoth":Z
    .restart local v2    # "systemIsBoth":Z
    :catchall_2
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v2, p8

    .end local v2    # "systemIsBoth":Z
    .restart local v16    # "systemIsBoth":Z
    goto :goto_5

    .end local v16    # "systemIsBoth":Z
    .restart local p9    # "systemIsBoth":Z
    :catchall_3
    move-exception v0

    move-object/from16 v2, p8

    move/from16 v16, p9

    .end local p9    # "systemIsBoth":Z
    .restart local v16    # "systemIsBoth":Z
    goto :goto_5

    .line 3390
    .end local v16    # "systemIsBoth":Z
    .restart local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p9    # "systemIsBoth":Z
    :cond_8
    move-object/from16 v2, p8

    move/from16 v16, p9

    move-object/from16 v19, v0

    .line 3410
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p9    # "systemIsBoth":Z
    .restart local v16    # "systemIsBoth":Z
    .restart local v19    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_4
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mNtWallpaperManager:Lcom/nothing/NtWallpaperManager;

    const-string v1, "setWallpaper success"

    invoke-virtual {v0, v1}, Lcom/nothing/NtWallpaperManager;->logHistory(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3412
    nop

    .line 3414
    :try_start_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13

    .line 3412
    return-object v19

    .line 3416
    .end local v8    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v14    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v15    # "systemIsStatic":Z
    .end local v16    # "systemIsBoth":Z
    .end local v17    # "ident":J
    .end local v19    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 3414
    .restart local v8    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v14    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v15    # "systemIsStatic":Z
    .restart local v16    # "systemIsBoth":Z
    .restart local v17    # "ident":J
    :goto_5
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3415
    nop

    .end local v9    # "userId":I
    .end local v10    # "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v11    # "cropHint":Landroid/graphics/Rect;
    .end local v12    # "fromForegroundApp":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "screenOrientations":[I
    .end local p4    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local p5    # "allowBackup":Z
    .end local p6    # "extras":Landroid/os/Bundle;
    .end local p7    # "which":I
    .end local p8    # "completion":Landroid/app/IWallpaperManagerCallback;
    throw v0

    .line 3416
    .end local v8    # "originalSystemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v14    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v15    # "systemIsStatic":Z
    .end local v16    # "systemIsBoth":Z
    .end local v17    # "ident":J
    .restart local v9    # "userId":I
    .restart local v10    # "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .restart local v11    # "cropHint":Landroid/graphics/Rect;
    .restart local v12    # "fromForegroundApp":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "screenOrientations":[I
    .restart local p4    # "crops":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .restart local p5    # "allowBackup":Z
    .restart local p6    # "extras":Landroid/os/Bundle;
    .restart local p7    # "which":I
    .restart local p8    # "completion":Landroid/app/IWallpaperManagerCallback;
    :goto_6
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 3343
    .end local v10    # "cropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v11    # "cropHint":Landroid/graphics/Rect;
    .end local v12    # "fromForegroundApp":Z
    :cond_9
    move-object/from16 v3, p6

    move-object/from16 v2, p8

    .line 3344
    :goto_7
    return-object v8

    .line 3338
    :cond_a
    move-object/from16 v3, p6

    move-object/from16 v2, p8

    const-string v0, "Must specify a valid wallpaper category to set"

    .line 3339
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    const-string v8, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v8, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 3532
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;II)Z

    .line 3533
    return-void
.end method

.method setWallpaperComponent(Landroid/content/ComponentName;Ljava/lang/String;II)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 3538
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    .line 3539
    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0

    .line 3538
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescription(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V
    .locals 1
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 3524
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3525
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescription(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)Z

    .line 3527
    :cond_0
    return-void
.end method

.method setWallpaperDescription(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "description"    # Landroid/app/wallpaper/WallpaperDescription;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "which"    # I
    .param p4, "userId"    # I

    .line 3546
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFromForegroundApp(Ljava/lang/String;)Z

    move-result v5

    .line 3547
    .local v5, "fromForeground":Z
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    .end local p1    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .local v1, "description":Landroid/app/wallpaper/WallpaperDescription;
    .local v2, "which":I
    .local v3, "userId":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDescriptionInternal(Landroid/app/wallpaper/WallpaperDescription;IIZZLandroid/os/IRemoteCallback;)Z

    move-result p1

    return p1
.end method

.method public setWallpaperDimAmount(F)V
    .locals 1
    .param p1, "dimAmount"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmountForUid(IF)V

    .line 3141
    return-void
.end method

.method public setWallpaperDimAmountForUid(IF)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "dimAmount"    # F

    .line 3153
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3154
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3156
    .local v3, "ident":J
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 3157
    .local v5, "pendingColorExtraction":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3159
    :try_start_1
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/16 v7, -0x2710

    const/4 v8, 0x0

    if-eq v0, v7, :cond_0

    .line 3160
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    goto :goto_0

    .line 3204
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 3160
    :cond_0
    move v0, v8

    .line 3161
    .local v0, "userId":I
    :goto_0
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperData;

    .line 3162
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperData;

    .line 3164
    .local v9, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-nez v10, :cond_1

    .line 3165
    iget-object v10, v7, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 3167
    :cond_1
    iget-object v10, v7, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3170
    :goto_1
    iget-object v10, v7, Lcom/android/server/wallpaper/WallpaperData;->mUidToDimAmount:Landroid/util/SparseArray;

    invoke-direct {v1, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHighestDimAmountFromMap(Landroid/util/SparseArray;)F

    move-result v10

    .line 3171
    .local v10, "maxDimAmount":F
    iget v11, v7, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    cmpl-float v11, v11, v10

    if-nez v11, :cond_2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3209
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3171
    return-void

    .line 3172
    :cond_2
    :try_start_2
    iput v10, v7, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 3175
    if-eqz v9, :cond_3

    .line 3176
    iput v10, v9, Lcom/android/server/wallpaper/WallpaperData;->mWallpaperDimAmount:F

    .line 3179
    :cond_3
    const/4 v11, 0x0

    .line 3180
    .local v11, "changed":Z
    invoke-direct {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getActiveWallpapers()[Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v12

    array-length v13, v12

    :goto_2
    if-ge v8, v13, :cond_5

    aget-object v14, v12, v8

    .line 3181
    .local v14, "wp":Lcom/android/server/wallpaper/WallpaperData;
    if-eqz v14, :cond_4

    iget-object v15, v14, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v15, :cond_4

    .line 3182
    iget-object v15, v14, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move/from16 v16, v0

    .end local v0    # "userId":I
    .local v16, "userId":I
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {v15, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3194
    nop

    .line 3195
    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mIsColorExtractedFromDim:Z

    .line 3196
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    const/4 v0, 0x1

    move v11, v0

    .end local v11    # "changed":Z
    .local v0, "changed":Z
    goto :goto_3

    .line 3181
    .end local v16    # "userId":I
    .local v0, "userId":I
    .restart local v11    # "changed":Z
    :cond_4
    move/from16 v16, v0

    .line 3180
    .end local v0    # "userId":I
    .end local v14    # "wp":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v16    # "userId":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v16

    goto :goto_2

    .line 3201
    .end local v16    # "userId":I
    .restart local v0    # "userId":I
    :cond_5
    move/from16 v16, v0

    .end local v0    # "userId":I
    .restart local v16    # "userId":I
    if-eqz v11, :cond_6

    .line 3202
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3204
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v9    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v10    # "maxDimAmount":F
    .end local v11    # "changed":Z
    .end local v16    # "userId":I
    :cond_6
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3205
    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperData;

    .line 3206
    .local v6, "wp":Lcom/android/server/wallpaper/WallpaperData;
    invoke-virtual {v1, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3207
    .end local v6    # "wp":Lcom/android/server/wallpaper/WallpaperData;
    goto :goto_4

    .line 3209
    .end local v5    # "pendingColorExtraction":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 3205
    .restart local v5    # "pendingColorExtraction":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :cond_7
    nop

    .line 3209
    .end local v5    # "pendingColorExtraction":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3210
    nop

    .line 3211
    return-void

    .line 3204
    .restart local v5    # "pendingColorExtraction":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    :goto_5
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "ident":J
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "uid":I
    .end local p2    # "dimAmount":F
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3209
    .end local v5    # "pendingColorExtraction":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperData;>;"
    .restart local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "dimAmount":F
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3210
    throw v0
.end method

.method public settingsRestored()V
    .locals 10

    .line 4405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 4410
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    const-string v1, "settingsRestored"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    :cond_0
    const/4 v1, 0x0

    .line 4412
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    const/4 v2, 0x0

    .line 4413
    .local v2, "success":Z
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4414
    const/4 v0, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4, v4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZI)V

    .line 4415
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, v0

    .line 4416
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .local v8, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :try_start_1
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v8, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 4417
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 4419
    invoke-virtual {v8}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4420
    nop

    .line 4422
    .local v0, "componentName":Landroid/content/ComponentName;
    nop

    .line 4425
    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 4427
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 4463
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :catchall_0
    move-exception v0

    move-object v1, v8

    goto :goto_0

    .end local v8    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_1
    move-exception v0

    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 4406
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v2    # "success":Z
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 1916
    if-eqz p1, :cond_0

    .line 1917
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 1919
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1922
    :cond_0
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1925
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1926
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1927
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1928
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1929
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 2039
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_switch-user-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2044
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2045
    :try_start_1
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_0

    .line 2046
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2103
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2046
    return-void

    .line 2076
    :catchall_0
    move-exception v2

    goto/16 :goto_6

    .line 2048
    :cond_0
    :try_start_2
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2049
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v3

    .line 2050
    .local v3, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 2051
    move-object v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    .line 2054
    .local v4, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :goto_0
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v5, :cond_2

    .line 2055
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 2056
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v5}, Landroid/os/FileObserver;->startWatching()V

    .line 2058
    :cond_2
    nop

    .line 2059
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 2060
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 2061
    const/4 v5, 0x0

    if-ne v4, v3, :cond_3

    .line 2062
    invoke-virtual {p0, v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    goto :goto_4

    .line 2064
    :cond_3
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/KeyguardManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 2065
    .local v6, "km":Landroid/app/KeyguardManager;
    if-eqz v6, :cond_4

    invoke-virtual {v6, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v2, v5

    :goto_1
    nop

    .line 2066
    .local v2, "isDeviceSecure":Z
    if-eqz v2, :cond_5

    move-object v7, v4

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    invoke-virtual {p0, v7, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2067
    if-eqz v2, :cond_6

    move-object v7, v3

    goto :goto_3

    :cond_6
    move-object v7, v4

    :goto_3
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2068
    .end local v2    # "isDeviceSecure":Z
    .end local v6    # "km":Landroid/app/KeyguardManager;
    nop

    .line 2075
    :goto_4
    iput-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInitialUserSwitch:Z

    .line 2076
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2080
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2089
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->sourceExists()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ""

    const-string v2, "persist.sys.wallpaper_os_version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2090
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 2103
    .end local v3    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v4    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperData;
    :catchall_1
    move-exception v1

    goto :goto_7

    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2104
    nop

    .line 2105
    return-void

    .line 2076
    :goto_6
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "userId":I
    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2103
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "reply":Landroid/os/IRemoteCallback;
    :goto_7
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2104
    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 10
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 2108
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2109
    :try_start_0
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHomeWallpaperWaitingForUnlock:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2148
    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    goto :goto_2

    .line 2110
    :cond_0
    :goto_0
    :try_start_2
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperWaitingForUnlock:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2112
    :cond_1
    nop

    .line 2113
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getDescription()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v0

    .line 2114
    .local v3, "description":Landroid/app/wallpaper/WallpaperDescription;
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .local v7, "reply":Landroid/os/IRemoteCallback;
    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperDescriptionLocked(Landroid/app/wallpaper/WallpaperDescription;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p1, :cond_2

    .line 2117
    const/4 p1, 0x0

    .line 2119
    .local p1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_6
    iget-object p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/app/wallpaper/WallpaperDescription;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v4, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    const-wide/32 v8, 0x40000

    invoke-interface {p2, v0, v8, v9, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object p1, p2

    .line 2123
    goto :goto_1

    .line 2148
    .end local v3    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2121
    .restart local v3    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    move-object p2, v0

    nop

    .line 2122
    .local p2, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v0, "WallpaperManagerService"

    const-string v4, "Failure starting previous wallpaper; clearing"

    invoke-static {v0, v4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2124
    .end local p2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-direct {p0, v6, v7, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onSwitchWallpaperFailLocked(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/content/pm/ServiceInfo;)V

    .line 2126
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    monitor-exit v1

    return-void

    .line 2148
    .end local v3    # "description":Landroid/app/wallpaper/WallpaperDescription;
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local v7    # "reply":Landroid/os/IRemoteCallback;
    .local p1, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .local p2, "reply":Landroid/os/IRemoteCallback;
    :catchall_2
    move-exception v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    .restart local v7    # "reply":Landroid/os/IRemoteCallback;
    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method systemReady()V
    .locals 7

    .line 1828
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    const-string v1, "WallpaperManagerService"

    if-eqz v0, :cond_0

    const-string v0, "systemReady"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1831
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 1835
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperData;
    nop

    .line 1836
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    nop

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1837
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    nop

    .line 1841
    .local v3, "isImageComponent":Z
    if-eqz v3, :cond_6

    .line 1843
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1844
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1845
    const-string v4, "No crop; regenerating from source"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_3
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v4, v0}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 1850
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1851
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 1852
    const-string v4, "Unable to regenerate crop; resetting"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_5
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v2, v2, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(IIZLandroid/os/IRemoteCallback;)V

    goto :goto_2

    .line 1857
    :cond_6
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 1858
    const-string v2, "Nondefault wallpaper component; gracefully ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_7
    :goto_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1863
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1864
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1875
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1876
    .local v4, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v6, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1891
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$6;

    invoke-direct {v6, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$6;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v5, v6, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    goto :goto_3

    .line 1899
    :catch_0
    move-exception v1

    .line 1900
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1902
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2828
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "unregisterWallpaperColorsCallback"

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2830
    .end local v2    # "userId":I
    .restart local p2    # "userId":I
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2832
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 2833
    .local v0, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v0, :cond_0

    .line 2834
    nop

    .line 2835
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2836
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v2, :cond_0

    .line 2837
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 2840
    .end local v0    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 2841
    return-void

    .line 2840
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3487
    const-string v0, "WallpaperManagerService"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 3489
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget v2, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 3490
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3491
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 3492
    nop

    .line 3493
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 3492
    const/4 v4, -0x1

    const/16 v5, 0x1f9

    invoke-static {v3, v5, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 3514
    .end local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3497
    .restart local v2    # "dir":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v3

    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 3499
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorecon failed for wallpaper file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3500
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    return-object v1

    .line 3504
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 3505
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 3506
    if-eqz p3, :cond_3

    .line 3507
    const-string v4, "android.service.wallpaper.extra.ID"

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3510
    :cond_3
    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWallpaperBitmapLocked() : id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3512
    invoke-virtual {p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3511
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3513
    return-object v3

    .line 3514
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    nop

    .line 3515
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Error setting wallpaper"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3517
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method
