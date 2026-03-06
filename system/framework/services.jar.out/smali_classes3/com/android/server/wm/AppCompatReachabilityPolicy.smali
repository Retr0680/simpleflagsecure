.class Lcom/android/server/wm/AppCompatReachabilityPolicy;
.super Ljava/lang/Object;
.source "AppCompatReachabilityPolicy.java"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "appCompatConfiguration"    # Lcom/android/server/wm/AppCompatConfiguration;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 56
    iput-object p2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 57
    return-void
.end method

.method private getLetterboxInnerFrame()Landroid/graphics/Rect;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 205
    :goto_0
    return-object v0
.end method

.method private handleHorizontalDoubleTap(I)V
    .locals 8
    .param p1, "x"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v0

    .line 103
    .local v0, "reachabilityOverrides":Lcom/android/server/wm/AppCompatReachabilityOverrides;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 104
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 105
    .local v1, "isInTransition":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_5

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->getLetterboxInnerFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 109
    .local v4, "letterboxInnerFrame":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-gt v5, p1, :cond_3

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-lt v5, p1, :cond_3

    .line 111
    return-void

    .line 113
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 114
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getDeviceStateQuery()Lcom/android/server/wm/AppCompatDeviceStateQuery;

    move-result-object v5

    .line 115
    .local v5, "deviceStateQuery":Lcom/android/server/wm/AppCompatDeviceStateQuery;
    nop

    .line 116
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 117
    invoke-virtual {v6}, Lcom/android/server/wm/AppCompatConfiguration;->getIsAutomaticReachabilityInBookModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    nop

    :goto_1
    nop

    .line 118
    .local v2, "isInFullScreenBookMode":Z
    iget-object v6, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 119
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v6

    .line 120
    .local v6, "letterboxPositionForHorizontalReachability":I
    iget v7, v4, Landroid/graphics/Rect;->left:I

    if-le v7, p1, :cond_7

    .line 122
    iget-object v7, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForHorizontalReachabilityToNextLeftStop(Z)V

    .line 126
    if-ne v6, v3, :cond_5

    .line 127
    goto :goto_2

    .line 128
    :cond_5
    const/4 v3, 0x4

    :goto_2
    nop

    .line 129
    .local v3, "letterboxPositionChangeForLog":I
    invoke-direct {p0, v3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 130
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    .line 131
    .end local v3    # "letterboxPositionChangeForLog":I
    :cond_6
    goto :goto_4

    :cond_7
    iget v7, v4, Landroid/graphics/Rect;->right:I

    if-ge v7, p1, :cond_6

    .line 133
    iget-object v7, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForHorizontalReachabilityToNextRightStop(Z)V

    .line 137
    if-ne v6, v3, :cond_8

    .line 138
    const/4 v3, 0x3

    goto :goto_3

    .line 139
    :cond_8
    const/4 v3, 0x2

    :goto_3
    nop

    .line 140
    .restart local v3    # "letterboxPositionChangeForLog":I
    invoke-direct {p0, v3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 141
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    .line 144
    .end local v3    # "letterboxPositionChangeForLog":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 145
    return-void

    .line 106
    .end local v2    # "isInFullScreenBookMode":Z
    .end local v4    # "letterboxInnerFrame":Landroid/graphics/Rect;
    .end local v5    # "deviceStateQuery":Lcom/android/server/wm/AppCompatDeviceStateQuery;
    .end local v6    # "letterboxPositionForHorizontalReachability":I
    :goto_5
    return-void
.end method

.method private handleVerticalDoubleTap(I)V
    .locals 8
    .param p1, "y"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 149
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v0

    .line 152
    .local v0, "reachabilityOverrides":Lcom/android/server/wm/AppCompatReachabilityOverrides;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 153
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    .local v1, "isInTransition":Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    goto :goto_4

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->getLetterboxInnerFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 158
    .local v3, "letterboxInnerFrame":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-gt v4, p1, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v4, p1, :cond_3

    .line 160
    return-void

    .line 162
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 163
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatController;->getDeviceStateQuery()Lcom/android/server/wm/AppCompatDeviceStateQuery;

    move-result-object v4

    .line 164
    .local v4, "deviceStateQuery":Lcom/android/server/wm/AppCompatDeviceStateQuery;
    nop

    .line 165
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndSeparatingHinge()Z

    move-result v5

    .line 166
    .local v5, "isInFullScreenTabletopMode":Z
    iget-object v6, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 167
    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v6

    .line 168
    .local v6, "letterboxPositionForVerticalReachability":I
    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-le v7, p1, :cond_6

    .line 170
    iget-object v7, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForVerticalReachabilityToNextTopStop(Z)V

    .line 174
    if-ne v6, v2, :cond_4

    .line 175
    const/4 v2, 0x5

    goto :goto_1

    .line 176
    :cond_4
    const/16 v2, 0x8

    :goto_1
    nop

    .line 177
    .local v2, "letterboxPositionChangeForLog":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 178
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    .line 179
    .end local v2    # "letterboxPositionChangeForLog":I
    :cond_5
    goto :goto_3

    :cond_6
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v7, p1, :cond_5

    .line 181
    iget-object v7, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/AppCompatConfiguration;->movePositionForVerticalReachabilityToNextBottomStop(Z)V

    .line 185
    if-ne v6, v2, :cond_7

    .line 186
    const/4 v2, 0x7

    goto :goto_2

    .line 187
    :cond_7
    const/4 v2, 0x6

    :goto_2
    nop

    .line 188
    .restart local v2    # "letterboxPositionChangeForLog":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->logLetterboxPositionChange(I)V

    .line 189
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->setDoubleTapEvent()V

    .line 192
    .end local v2    # "letterboxPositionChangeForLog":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 193
    return-void

    .line 155
    .end local v3    # "letterboxInnerFrame":Landroid/graphics/Rect;
    .end local v4    # "deviceStateQuery":Lcom/android/server/wm/AppCompatDeviceStateQuery;
    .end local v5    # "isInFullScreenTabletopMode":Z
    .end local v6    # "letterboxPositionForVerticalReachability":I
    :goto_4
    return-void
.end method

.method private logLetterboxPositionChange(I)V
    .locals 2
    .param p1, "letterboxPositionChangeForLog"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 200
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->logLetterboxPositionChange(Lcom/android/server/wm/ActivityRecord;I)V

    .line 201
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 81
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v0

    .line 82
    .local v0, "reachabilityOverrides":Lcom/android/server/wm/AppCompatReachabilityOverrides;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isVerticalThinLetterboxed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalThinLetterboxed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isHorizontalThinLetterboxed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalThinLetterboxed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isHorizontalReachabilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isHorizontalReachabilityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isVerticalReachabilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isVerticalReachabilityEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxHorizontalPositionMultiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 92
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxVerticalPositionMultiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 95
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getVerticalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method handleDoubleTap(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleHorizontalDoubleTap(I)V

    .line 76
    invoke-direct {p0, p2}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->handleVerticalDoubleTap(I)V

    .line 77
    return-void
.end method

.method setLetterboxInnerBoundsSupplier(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "letterboxInnerBoundsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/graphics/Rect;>;"
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mLetterboxInnerBoundsSupplier:Ljava/util/function/Supplier;

    .line 66
    return-void
.end method
