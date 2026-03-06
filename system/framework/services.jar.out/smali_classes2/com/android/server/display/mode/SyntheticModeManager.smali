.class public Lcom/android/server/display/mode/SyntheticModeManager;
.super Ljava/lang/Object;
.source "SyntheticModeManager.java"


# static fields
.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final SYNTHETIC_MODE_HIGH_BOUNDARY:F = 60.01f

.field private static final SYNTHETIC_MODE_REFRESH_RATE:F = 60.0f


# instance fields
.field private final mHasArrSupportEnabled:Z

.field private final mSynthetic60HzModesEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1
    .param p1, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSynthetic60HzModesEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    .line 44
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->hasArrSupportFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mHasArrSupportEnabled:Z

    .line 45
    return-void
.end method


# virtual methods
.method public createAppSupportedModes(Lcom/android/server/display/DisplayDeviceConfig;[Landroid/view/Display$Mode;Z)[Landroid/view/Display$Mode;
    .locals 18
    .param p1, "config"    # Lcom/android/server/display/DisplayDeviceConfig;
    .param p2, "modes"    # [Landroid/view/Display$Mode;
    .param p3, "hasArrSupport"    # Z

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/android/server/display/mode/SyntheticModeManager;->mHasArrSupportEnabled:Z

    if-eqz v2, :cond_0

    move/from16 v2, p3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result v2

    .line 55
    .local v2, "isArrSupported":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v3, v0, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    if-nez v3, :cond_2

    :cond_1
    goto/16 :goto_4

    .line 58
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, "appSupportedModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    .local v4, "sizes":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;[I>;"
    const/4 v5, 0x0

    .line 64
    .local v5, "nextModeId":I
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_7

    aget-object v9, v1, v8

    .line 65
    .local v9, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v10

    const v11, 0x42700a3d    # 60.01f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 66
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v10

    if-le v10, v5, :cond_4

    .line 69
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    .line 72
    :cond_4
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v10

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    .line 73
    .local v10, "divisor":F
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3c23d70a    # 0.01f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    move v11, v7

    .line 74
    .local v11, "is60HzAchievable":Z
    :goto_2
    if-eqz v11, :cond_6

    .line 75
    new-instance v12, Landroid/util/Size;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v14

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    .line 76
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v13

    .line 75
    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v9    # "mode":Landroid/view/Display$Mode;
    .end local v10    # "divisor":F
    .end local v11    # "is60HzAchievable":Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 83
    :cond_7
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 84
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Size;[I>;"
    add-int/lit8 v10, v5, 0x1

    .line 85
    .end local v5    # "nextModeId":I
    .local v10, "nextModeId":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 86
    .local v5, "size":Landroid/util/Size;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, [I

    .line 87
    .local v17, "hdrTypes":[I
    new-instance v9, Landroid/view/Display$Mode;

    .line 88
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/4 v15, 0x1

    new-array v13, v7, [F

    move-object/from16 v16, v13

    const/high16 v13, 0x42700000    # 60.0f

    const/high16 v14, 0x42700000    # 60.0f

    invoke-direct/range {v9 .. v17}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    .line 87
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v5    # "size":Landroid/util/Size;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Size;[I>;"
    .end local v17    # "hdrTypes":[I
    move v5, v10

    goto :goto_3

    .line 91
    .end local v10    # "nextModeId":I
    .local v5, "nextModeId":I
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/view/Display$Mode;

    .line 92
    .local v6, "appSupportedModesArr":[Landroid/view/Display$Mode;
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/view/Display$Mode;

    return-object v7

    .line 56
    .end local v3    # "appSupportedModes":Ljava/util/List;, "Ljava/util/List<Landroid/view/Display$Mode;>;"
    .end local v4    # "sizes":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;[I>;"
    .end local v5    # "nextModeId":I
    .end local v6    # "appSupportedModesArr":[Landroid/view/Display$Mode;
    :goto_4
    return-object v1
.end method
