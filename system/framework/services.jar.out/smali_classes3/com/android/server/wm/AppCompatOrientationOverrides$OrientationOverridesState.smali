.class Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;
.super Ljava/lang/Object;
.source "AppCompatOrientationOverrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatOrientationOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OrientationOverridesState"
.end annotation


# static fields
.field static final MIN_COUNT_TO_IGNORE_REQUEST_IN_LOOP:I = 0x2

.field static final SET_ORIENTATION_REQUEST_COUNTER_TIMEOUT_MS:I = 0x3e8


# instance fields
.field mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

.field final mIsOverrideAnyOrientationEnabled:Z

.field final mIsOverrideToNosensorOrientationEnabled:Z

.field final mIsOverrideToPortraitOrientationEnabled:Z

.field final mIsOverrideToReverseLandscapeOrientationEnabled:Z

.field private mIsRelaunchingAfterRequestedOrientationChanged:Z

.field private mSetOrientationRequestCounter:I

.field private mTimeMsLastSetOrientationRequest:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetOrientationRequestCounter(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/LongSupplier;)V
    .locals 3
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "currentTimeMillisSupplier"    # Ljava/util/function/LongSupplier;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 226
    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    .line 227
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 228
    const-wide/32 v1, 0xfd27655

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToNosensorOrientationEnabled:Z

    .line 229
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 230
    const-wide/32 v1, 0xfd27b38

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToPortraitOrientationEnabled:Z

    .line 231
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 232
    const-wide/32 v1, 0xfd2aa87

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    .line 233
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 234
    const-wide/32 v1, 0xfdcbe7f

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToReverseLandscapeOrientationEnabled:Z

    .line 235
    return-void
.end method


# virtual methods
.method shouldIgnoreRequestInLoop()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateOrientationRequestLoopState()V
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 250
    .local v0, "currTimeMs":J
    iget-wide v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    sub-long v2, v0, v2

    .line 251
    .local v2, "elapsedTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 252
    iget v4, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    goto :goto_0

    .line 254
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 256
    :goto_0
    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    .line 257
    return-void
.end method
