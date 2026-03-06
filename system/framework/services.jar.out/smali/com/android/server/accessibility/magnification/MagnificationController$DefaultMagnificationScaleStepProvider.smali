.class public Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationScaleStepProvider;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationController$MagnificationScaleStepProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMagnificationScaleStepProvider"
.end annotation


# static fields
.field public static final ZOOM_STEP_SCALE_FACTOR:F = 1.1892071f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextScaleStep(FI)F
    .locals 7
    .param p1, "currentScale"    # F
    .param p2, "direction"    # I

    .line 240
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 241
    .local v0, "stepDelta":I
    :goto_0
    float-to-double v1, p1

    .line 242
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide v3, 0x3ff306fe00000000L    # 1.1892070770263672

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    .line 241
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 243
    .local v1, "scaleIndex":J
    int-to-long v5, v0

    add-long/2addr v5, v1

    long-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 245
    .local v3, "nextScale":F
    invoke-static {v3}, Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;->constrainScale(F)F

    move-result v4

    return v4
.end method
