.class Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatAspectRatioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppCompatAspectRatioState"
.end annotation


# instance fields
.field private mIsAspectRatioApplied:Z

.field private mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

.field private mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLetterboxBoundsForAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLetterboxBoundsForFixedOrientationAndAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/AppCompatAspectRatioPolicy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;-><init>()V

    return-void
.end method


# virtual methods
.method getLetterboxedContainerBounds()Landroid/graphics/Rect;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    .line 476
    :goto_0
    return-object v0
.end method

.method isLetterboxedForAspectRatioOnly()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLetterboxedForFixedOrientationAndAspectRatio()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mIsAspectRatioApplied:Z

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForFixedOrientationAndAspectRatio:Landroid/graphics/Rect;

    .line 484
    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->mLetterboxBoundsForAspectRatio:Landroid/graphics/Rect;

    .line 485
    return-void
.end method
