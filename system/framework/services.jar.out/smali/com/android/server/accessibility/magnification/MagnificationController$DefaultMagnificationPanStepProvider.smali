.class public Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationPanStepProvider;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMagnificationPanStepProvider"
.end annotation


# static fields
.field private static final DEFAULT_SCALE:F = 2.0f

.field private static final PAN_STEP_AT_DEFAULT_SCALE_DIP:F = 40.0f

.field private static final SCALE_FOR_1_DIP_PAN:F = 20.0f


# instance fields
.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mPanStepIntercepts:Landroid/util/SparseDoubleArray;

.field private mPanStepSlopes:Landroid/util/SparseDoubleArray;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 281
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 282
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    .line 283
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    .line 284
    return-void
.end method

.method private updateForDisplay(I)V
    .locals 8
    .param p1, "displayId"    # I

    .line 312
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 313
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 317
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 318
    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 320
    .local v2, "panStepAtDefaultScaleInPx":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v1}, Landroid/util/TypedValue;->convertDimensionToPixels(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 322
    .local v3, "panStepAtMaxScaleInPx":F
    sub-float v4, v3, v2

    const/high16 v5, 0x41900000    # 18.0f

    div-float/2addr v4, v5

    .line 324
    .local v4, "panStepSlope":F
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    float-to-double v6, v4

    invoke-virtual {v5, p1, v6, v7}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 325
    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v4

    sub-float v6, v2, v6

    float-to-double v6, v6

    invoke-virtual {v5, p1, v6, v7}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 327
    return-void
.end method


# virtual methods
.method public nextPanStep(FI)F
    .locals 4
    .param p1, "currentScale"    # F
    .param p2, "displayId"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseDoubleArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 305
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    .line 308
    invoke-virtual {v2, p2}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 307
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 288
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    .line 289
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    .line 294
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseDoubleArray;->delete(I)V

    .line 299
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseDoubleArray;->delete(I)V

    .line 300
    return-void
.end method
