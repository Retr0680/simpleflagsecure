.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightness/clamper/BrightnessClamperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifiersAggregatedState"
.end annotation


# instance fields
.field mMaxBrightness:F

.field mMaxBrightnessReason:I

.field mMaxDesiredHdrRatio:F

.field mMaxHdrBrightness:F

.field mSdrHdrRatioSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    .line 446
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    .line 447
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    .line 449
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    .line 451
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    return-void
.end method
