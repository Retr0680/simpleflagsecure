.class final Lcom/android/server/input/PointerIconCache;
.super Ljava/lang/Object;
.source "PointerIconCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayDensities:Landroid/util/SparseIntArray;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNative:Lcom/android/server/input/NativeInputManagerService;

.field private mPointerIconFillStyle:I

.field private mPointerIconScale:F

.field private mPointerIconStrokeStyle:I

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private mUseLargePointerIcons:Z


# direct methods
.method public static synthetic $r8$lambda$2YggVB1gczKFYVmfopZRS-vDzlE(Lcom/android/server/input/PointerIconCache;IF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/PointerIconCache;->lambda$setAccessibilityScaleFactor$4(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$7dN69jtffxl50qDVew3T2LrxdDs(Lcom/android/server/input/PointerIconCache;F)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setPointerScale$3(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPcCnkkmK1pCTBxywm2Yo23R20Q(Lcom/android/server/input/PointerIconCache;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setUseLargePointerIcons$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3IzVQEd4YNHZUe4PF8CewYw1h8(Lcom/android/server/input/PointerIconCache;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setPointerFillStyle$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9J3glSzYprX7nOwuvy5tXVUMS8(Lcom/android/server/input/PointerIconCache;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setPointerStrokeStyle$2(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityScaleFactorPerDisplay(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseDoubleArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContexts(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayDensities(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadedPointerIconsByDisplayAndType(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayChanged(Lcom/android/server/input/PointerIconCache;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleDisplayChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDisplayDensityLocked(Lcom/android/server/input/PointerIconCache;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/android/server/input/PointerIconCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/PointerIconCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeService"    # Lcom/android/server/input/NativeInputManagerService;

    .line 105
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/PointerIconCache;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeService"    # Lcom/android/server/input/NativeInputManagerService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 65
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    .line 67
    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    .line 70
    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 76
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    .line 79
    new-instance v0, Lcom/android/server/input/PointerIconCache$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/PointerIconCache$1;-><init>(Lcom/android/server/input/PointerIconCache;)V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 111
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 113
    iput-object p3, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method private getContextForDisplayLocked(I)Landroid/content/Context;
    .locals 4
    .param p1, "displayId"    # I

    .line 188
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object v0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 197
    .local v0, "displayContext":Landroid/content/Context;
    if-nez v0, :cond_3

    .line 198
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    .line 199
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 201
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object v3

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 207
    iget-object v3, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "display":Landroid/view/Display;
    :cond_3
    return-object v0
.end method

.method private handleAccessibilityScaleFactor(IF)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "scale"    # F

    .line 286
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v1

    float-to-double v3, p2

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 288
    monitor-exit v0

    return-void

    .line 293
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    float-to-double v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 292
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 295
    return-void

    .line 293
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    monitor-exit v0

    return-void

    .line 227
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 220
    :cond_0
    sget-object v1, Lcom/android/server/input/PointerIconCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reloading pointer icons due to density change on display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 222
    .local v1, "iconsByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    if-nez v1, :cond_1

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 226
    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 227
    .end local v1    # "iconsByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 229
    return-void

    .line 227
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPointerFillStyle(I)V
    .locals 2
    .param p1, "fillStyle"    # I

    .line 246
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 247
    :try_start_0
    iget v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    if-ne v1, p1, :cond_0

    .line 248
    monitor-exit v0

    return-void

    .line 253
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 250
    :cond_0
    iput p1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    .line 252
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 255
    return-void

    .line 253
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPointerScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 273
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 274
    :try_start_0
    iget v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 275
    monitor-exit v0

    return-void

    .line 280
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 277
    :cond_0
    iput p1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 279
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 282
    return-void

    .line 280
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPointerStrokeStyle(I)V
    .locals 2
    .param p1, "strokeStyle"    # I

    .line 260
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 261
    :try_start_0
    iget v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    if-ne v1, p1, :cond_0

    .line 262
    monitor-exit v0

    return-void

    .line 267
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 264
    :cond_0
    iput p1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    .line 266
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 269
    return-void

    .line 267
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetUseLargePointerIcons(Z)V
    .locals 2
    .param p1, "useLargeIcons"    # Z

    .line 233
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    if-ne v1, p1, :cond_0

    .line 235
    monitor-exit v0

    return-void

    .line 240
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 239
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 242
    return-void

    .line 240
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$setAccessibilityScaleFactor$4(IF)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "scaleFactor"    # F

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/PointerIconCache;->handleAccessibilityScaleFactor(IF)V

    return-void
.end method

.method private synthetic lambda$setPointerFillStyle$1(I)V
    .locals 0
    .param p1, "fillStyle"    # I

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetPointerFillStyle(I)V

    return-void
.end method

.method private synthetic lambda$setPointerScale$3(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetPointerScale(F)V

    return-void
.end method

.method private synthetic lambda$setPointerStrokeStyle$2(I)V
    .locals 0
    .param p1, "strokeStyle"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetPointerStrokeStyle(I)V

    return-void
.end method

.method private synthetic lambda$setUseLargePointerIcons$0(Z)V
    .locals 0
    .param p1, "useLargeIcons"    # Z

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetUseLargePointerIcons(Z)V

    return-void
.end method

.method private updateDisplayDensityLocked(I)Z
    .locals 6
    .param p1, "displayId"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 304
    .local v1, "display":Landroid/view/Display;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 305
    return v2

    .line 307
    :cond_0
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 308
    .local v3, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 309
    iget-object v4, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 310
    .local v4, "oldDensity":I
    iget v5, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v4, v5, :cond_1

    .line 311
    return v2

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v2, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 314
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public getLoadedPointerIcon(II)Landroid/view/PointerIcon;
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "type"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 163
    .local v1, "iconsByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    if-nez v1, :cond_0

    .line 164
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 165
    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 183
    .end local v1    # "iconsByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 167
    .restart local v1    # "iconsByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    .line 168
    .local v2, "icon":Landroid/view/PointerIcon;
    if-nez v2, :cond_1

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/input/PointerIconCache;->getContextForDisplayLocked(I)Landroid/content/Context;

    move-result-object v3

    .line 170
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 171
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 172
    iget v5, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    invoke-static {v5}, Landroid/view/PointerIcon;->vectorFillStyleToResource(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 174
    iget v5, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    invoke-static {v5}, Landroid/view/PointerIcon;->vectorStrokeStyleToResource(I)I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 176
    iget v5, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    iget-object v6, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    .line 177
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v6, p1, v7, v8}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    .line 178
    .local v5, "scale":F
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iget-boolean v7, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    invoke-static {v6, p2, v7, v5}, Landroid/view/PointerIcon;->getLoadedSystemIcon(Landroid/content/Context;IZF)Landroid/view/PointerIcon;

    move-result-object v6

    move-object v2, v6

    .line 180
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "theme":Landroid/content/res/Resources$Theme;
    .end local v5    # "scale":F
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object v2

    .line 183
    .end local v1    # "iconsByType":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/PointerIcon;>;"
    .end local v2    # "icon":Landroid/view/PointerIcon;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public monitor()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAccessibilityScaleFactor(IF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "scaleFactor"    # F

    .line 152
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/PointerIconCache;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public setPointerFillStyle(I)V
    .locals 2
    .param p1, "fillStyle"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/PointerIconCache;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method

.method public setPointerScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 147
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/PointerIconCache;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public setPointerStrokeStyle(I)V
    .locals 2
    .param p1, "strokeStyle"    # I

    .line 142
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/PointerIconCache;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public setUseLargePointerIcons(Z)V
    .locals 2
    .param p1, "useLargeIcons"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/PointerIconCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method public systemRunning()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 120
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 121
    .local v1, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 124
    .end local v2    # "i":I
    return-void
.end method
