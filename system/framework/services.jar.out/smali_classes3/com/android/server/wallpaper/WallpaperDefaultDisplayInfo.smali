.class public final Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
.super Ljava/lang/Object;
.source "WallpaperDefaultDisplayInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    }
.end annotation


# instance fields
.field public final defaultDisplaySizes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field final foldableOrientations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;",
            ">;"
        }
    .end annotation
.end field

.field public final isFoldable:Z

.field public final isLargeScreen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->getPossibleMaximumWindowMetrics(I)Ljava/util/Set;

    move-result-object v1

    .line 89
    .local v1, "metrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    const v2, 0x1070078

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 90
    .local v0, "isFoldable":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 91
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldableOrientations(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    .line 95
    :goto_0
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getDisplaySizes(Ljava/util/Set;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 96
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen(Ljava/util/Set;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    .line 98
    return-void
.end method

.method private static getDisplaySizes(Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 144
    .local p0, "displayMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 145
    .local v0, "displaySizes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowMetrics;

    .line 146
    .local v2, "metric":Landroid/view/WindowMetrics;
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 147
    .local v3, "bounds":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 148
    .local v4, "displaySize":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->y:I

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 149
    .local v5, "reversedDisplaySize":Landroid/graphics/Point;
    invoke-static {v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 150
    .local v7, "point":Landroid/graphics/Point;
    invoke-static {v7}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v8

    .line 152
    .local v8, "orientation":I
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 153
    .local v9, "display":Landroid/graphics/Point;
    if-eqz v9, :cond_0

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v11, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v11

    iget v11, v7, Landroid/graphics/Point;->x:I

    iget v12, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v11, v12

    if-ge v10, v11, :cond_1

    .line 154
    :cond_0
    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    .end local v7    # "point":Landroid/graphics/Point;
    .end local v8    # "orientation":I
    .end local v9    # "display":Landroid/graphics/Point;
    :cond_1
    goto :goto_1

    .line 157
    .end local v2    # "metric":Landroid/view/WindowMetrics;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "displaySize":Landroid/graphics/Point;
    .end local v5    # "reversedDisplaySize":Landroid/graphics/Point;
    :cond_2
    goto :goto_0

    .line 158
    :cond_3
    return-object v0
.end method

.method private static getFoldableOrientations(Ljava/util/Set;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;",
            ">;"
        }
    .end annotation

    .line 178
    .local p0, "defaultDisplayMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "foldableOrientations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;>;"
    const/4 v1, 0x0

    .line 183
    .local v1, "surface":F
    const/4 v2, -0x1

    .line 184
    .local v2, "firstOrientation":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowMetrics;

    .line 185
    .local v4, "metric":Landroid/view/WindowMetrics;
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 186
    .local v5, "bounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-static {v6}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v7

    .line 189
    .local v7, "orientation":I
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    int-to-float v8, v8

    .line 190
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v10

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    .line 191
    .local v8, "newSurface":F
    const/4 v9, 0x0

    cmpg-float v9, v1, v9

    if-gtz v9, :cond_1

    .line 192
    move v1, v8

    .line 193
    move v2, v7

    goto :goto_2

    .line 195
    :cond_1
    cmpl-float v9, v8, v1

    if-lez v9, :cond_2

    .line 196
    new-instance v9, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    invoke-direct {v9, v2, v7}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    goto :goto_1

    .line 197
    :cond_2
    new-instance v9, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    invoke-direct {v9, v7, v2}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    :goto_1
    nop

    .line 198
    .local v9, "orientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    new-instance v10, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    iget v11, v9, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    .line 199
    invoke-static {v11}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v11

    iget v12, v9, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    .line 200
    invoke-static {v12}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;-><init>(II)V

    .line 201
    .local v10, "rotatedOrientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v4    # "metric":Landroid/view/WindowMetrics;
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "displaySize":Landroid/graphics/Point;
    .end local v7    # "orientation":I
    .end local v8    # "newSurface":F
    .end local v9    # "orientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    .end local v10    # "rotatedOrientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    :goto_2
    goto :goto_0

    .line 205
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private static isLargeScreen(Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;)Z"
        }
    .end annotation

    .line 162
    .local p0, "displayMetrics":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/WindowMetrics;>;"
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 163
    .local v0, "smallestWidth":F
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowMetrics;

    .line 164
    .local v2, "metric":Landroid/view/WindowMetrics;
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 165
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v5

    div-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 166
    .end local v2    # "metric":Landroid/view/WindowMetrics;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 167
    :cond_0
    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 103
    :cond_0
    instance-of v1, p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    const/4 v2, 0x0

    nop

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 104
    .local v1, "that":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    iget-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    iget-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 105
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    .line 106
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 104
    :goto_0
    return v0

    .line 103
    .end local v1    # "that":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    :cond_2
    return v2
.end method

.method public getFoldedOrientation(I)I
    .locals 3
    .param p1, "unfoldedOrientation"    # I

    .line 121
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    .line 122
    .local v1, "orientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    if-ne v2, p1, :cond_0

    .line 123
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    return v0

    .line 122
    :cond_0
    nop

    .line 125
    .end local v1    # "orientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getUnfoldedOrientation(I)I
    .locals 3
    .param p1, "foldedOrientation"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;

    .line 136
    .local v1, "orientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->foldedOrientation:I

    if-ne v2, p1, :cond_0

    .line 137
    iget v0, v1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;->unfoldedOrientation:I

    return v0

    .line 136
    :cond_0
    nop

    .line 139
    .end local v1    # "orientations":Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo$FoldableOrientations;
    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->foldableOrientations:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    .line 112
    invoke-virtual {v1}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    return v0
.end method
