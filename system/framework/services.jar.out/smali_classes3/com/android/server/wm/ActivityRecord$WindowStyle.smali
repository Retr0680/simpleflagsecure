.class Lcom/android/server/wm/ActivityRecord$WindowStyle;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowStyle"
.end annotation


# static fields
.field private static final FLAG_DISABLE_PREVIEW:I = 0x10

.field private static final FLAG_IS_FLOATING:I = 0x2

.field private static final FLAG_IS_TRANSLUCENT:I = 0x1

.field private static final FLAG_NO_DISPLAY:I = 0x8

.field private static final FLAG_OPT_OUT_EDGE_TO_EDGE:I = 0x20

.field private static final FLAG_SHOW_WALLPAPER:I = 0x4


# instance fields
.field final mFlags:I

.field final mSplashScreenBehavior:I


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .line 10176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10177
    const/4 v0, 0x0

    .line 10178
    .local v0, "flags":I
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10179
    or-int/lit8 v0, v0, 0x1

    .line 10181
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10182
    or-int/lit8 v0, v0, 0x2

    .line 10184
    :cond_1
    const/16 v1, 0xe

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10185
    or-int/lit8 v0, v0, 0x4

    .line 10187
    :cond_2
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10188
    or-int/lit8 v0, v0, 0x8

    .line 10190
    :cond_3
    const/16 v1, 0xc

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10191
    or-int/lit8 v0, v0, 0x10

    .line 10193
    :cond_4
    const/16 v1, 0x3f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10194
    or-int/lit8 v0, v0, 0x20

    .line 10196
    :cond_5
    iput v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    .line 10197
    const/16 v1, 0x3d

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mSplashScreenBehavior:I

    .line 10198
    return-void
.end method


# virtual methods
.method disablePreview()Z
    .locals 1

    .line 10217
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFloating()Z
    .locals 1

    .line 10205
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTranslucent()Z
    .locals 2

    .line 10201
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method noDisplay()Z
    .locals 1

    .line 10213
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method optOutEdgeToEdge()Z
    .locals 1

    .line 10221
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method showWallpaper()Z
    .locals 1

    .line 10209
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
