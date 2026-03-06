.class Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedBrightnessInfo"
.end annotation


# instance fields
.field public adjustedBrightness:Landroid/util/MutableFloat;

.field public brightness:Landroid/util/MutableFloat;

.field public brightnessMax:Landroid/util/MutableFloat;

.field public brightnessMaxReason:Landroid/util/MutableInt;

.field public brightnessMin:Landroid/util/MutableFloat;

.field public brightnessReason:Landroid/util/MutableInt;

.field public hbmMode:Landroid/util/MutableInt;

.field public hbmTransitionPoint:Landroid/util/MutableFloat;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 4010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4011
    new-instance v0, Landroid/util/MutableFloat;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    .line 4012
    new-instance v0, Landroid/util/MutableFloat;

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    .line 4014
    new-instance v0, Landroid/util/MutableFloat;

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    .line 4016
    new-instance v0, Landroid/util/MutableFloat;

    invoke-direct {v0, v1}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    .line 4018
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    .line 4019
    new-instance v0, Landroid/util/MutableFloat;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v0, v2}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    .line 4021
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    .line 4023
    new-instance v0, Landroid/util/MutableInt;

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public checkAndSetFloat(Landroid/util/MutableFloat;F)Z
    .locals 1
    .param p1, "mf"    # Landroid/util/MutableFloat;
    .param p2, "f"    # F

    .line 4026
    iget v0, p1, Landroid/util/MutableFloat;->value:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 4027
    iput p2, p1, Landroid/util/MutableFloat;->value:F

    .line 4028
    const/4 v0, 0x1

    return v0

    .line 4030
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkAndSetInt(Landroid/util/MutableInt;I)Z
    .locals 1
    .param p1, "mi"    # Landroid/util/MutableInt;
    .param p2, "i"    # I

    .line 4034
    iget v0, p1, Landroid/util/MutableInt;->value:I

    if-eq v0, p2, :cond_0

    .line 4035
    iput p2, p1, Landroid/util/MutableInt;->value:I

    .line 4036
    const/4 v0, 0x1

    return v0

    .line 4038
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
