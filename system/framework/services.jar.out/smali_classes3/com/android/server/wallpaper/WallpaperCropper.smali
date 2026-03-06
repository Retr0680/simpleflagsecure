.class public Lcom/android/server/wallpaper/WallpaperCropper;
.super Ljava/lang/Object;
.source "WallpaperCropper.java"


# static fields
.field static final ADD:I = 0x1

.field static final BALANCE:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEBUG_CROP:Z = true

.field static final MAX_PARALLAX:F = 1.0f

.field static final REMOVE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field private final mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;


# direct methods
.method public static synthetic $r8$lambda$wM11yNEwVRhaK9YEsBDy6GuErGc(IIILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/server/wallpaper/WallpaperCropper;->lambda$generateCropInternal$0(IIILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/wallpaper/WallpaperCropper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wallpaper/WallpaperDisplayHelper;)V
    .locals 1
    .param p1, "wallpaperDisplayHelper"    # Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 91
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 92
    return-void
.end method

.method private generateCropInternal(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 34
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 473
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 476
    .local v3, "success":Z
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 477
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    move-result-object v5

    .line 478
    .local v5, "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    .line 481
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v7, v0

    .line 482
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 483
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 484
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v8, :cond_15

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v8, :cond_0

    move/from16 v20, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    goto/16 :goto_f

    .line 487
    :cond_0
    const/4 v8, 0x0

    .line 490
    .local v8, "needCrop":Z
    new-instance v10, Landroid/graphics/Point;

    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v10, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 491
    .local v10, "bitmapSize":Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v10, Landroid/graphics/Point;->x:I

    iget v13, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v11, v4, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 493
    .local v11, "bitmapRect":Landroid/graphics/Rect;
    nop

    .line 495
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v13, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 496
    iget-object v13, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 497
    .local v13, "orientation":I
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 498
    .local v14, "crop":Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v11, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    goto :goto_1

    .line 495
    .end local v13    # "orientation":I
    .end local v14    # "crop":Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 499
    .restart local v13    # "orientation":I
    .restart local v14    # "crop":Landroid/graphics/Rect;
    :goto_1
    sget-object v15, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid crop "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for orientation "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and bitmap size "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; clearing suggested crops."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 502
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 503
    nop

    .line 512
    .end local v12    # "i":I
    .end local v13    # "orientation":I
    .end local v14    # "crop":Landroid/graphics/Rect;
    :cond_3
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    .line 513
    .local v4, "tempCropHint":Landroid/graphics/Rect;
    if-eqz v4, :cond_4

    .line 514
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 515
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 517
    :cond_4
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 520
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v10}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v0

    .line 522
    .local v0, "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 523
    .local v12, "updatedCropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 524
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 525
    .local v14, "orientation":I
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 526
    .local v15, "defaultCrop":Landroid/graphics/Rect;
    if-eqz v15, :cond_5

    .line 527
    invoke-virtual {v12, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    .end local v14    # "orientation":I
    .end local v15    # "defaultCrop":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 530
    .end local v13    # "i":I
    iput-object v12, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    .line 533
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v13

    .line 534
    .local v13, "cropHint":Landroid/graphics/Rect;
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 539
    .end local v12    # "updatedCropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    move-object v12, v0

    goto :goto_3

    .end local v0    # "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v13    # "cropHint":Landroid/graphics/Rect;
    :cond_7
    nop

    .line 544
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 545
    :cond_8
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 546
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignoring wallpaper.cropHint = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "; not within the bitmap of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 550
    :cond_9
    new-instance v0, Landroid/graphics/Point;

    iget-object v12, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-direct {v0, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 551
    .local v0, "cropSize":Landroid/graphics/Point;
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1, v12, v0}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v12

    .line 552
    .local v12, "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-static {v12}, Lcom/android/server/wallpaper/WallpaperCropper;->getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;

    move-result-object v13

    .line 553
    .restart local v13    # "cropHint":Landroid/graphics/Rect;
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    iget-object v15, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Rect;->offset(II)V

    .line 554
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v14, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 558
    .end local v0    # "cropSize":Landroid/graphics/Point;
    nop

    .line 572
    :goto_3
    nop

    .line 576
    nop

    .line 593
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v14

    nop

    if-gt v0, v14, :cond_b

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 594
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v0, v14, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v8, v0

    .line 597
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v14, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-gt v0, v14, :cond_d

    .line 598
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v14

    if-gt v0, v14, :cond_d

    .line 599
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v14

    if-le v0, v14, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v0, 0x1

    :goto_7
    nop

    .line 601
    .local v0, "needScale":Z
    const v14, 0x7f7fffff    # Float.MAX_VALUE

    .line 602
    .local v14, "sampleSize":F
    nop

    .line 605
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v15, v9, :cond_f

    .line 606
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 607
    .local v9, "orientation":I
    invoke-virtual {v12, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Rect;

    .line 608
    .local v17, "crop":Landroid/graphics/Rect;
    move/from16 v18, v0

    .end local v0    # "needScale":Z
    .local v18, "needScale":Z
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 609
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplaySizes()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 610
    .local v0, "displayForThisOrientation":Landroid/graphics/Point;
    if-nez v0, :cond_e

    move/from16 v20, v3

    move-object/from16 v21, v4

    goto :goto_9

    .line 611
    :cond_e
    nop

    .line 612
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v20, v3

    .end local v3    # "success":Z
    .local v20, "success":Z
    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int v3, v19, v3

    .line 613
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v19

    move-object/from16 v21, v4

    .end local v4    # "tempCropHint":Landroid/graphics/Rect;
    .local v21, "tempCropHint":Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int v4, v19, v4

    .line 611
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 614
    .local v3, "sampleSizeForThisOrientation":F
    nop

    .line 615
    nop

    .line 616
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move/from16 v19, v3

    .end local v3    # "sampleSizeForThisOrientation":F
    .local v19, "sampleSizeForThisOrientation":F
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 617
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    move/from16 v22, v3

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float v3, v22, v3

    .line 615
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 619
    .end local v19    # "sampleSizeForThisOrientation":F
    .restart local v3    # "sampleSizeForThisOrientation":F
    invoke-static {v14, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v14, v4

    .line 605
    .end local v0    # "displayForThisOrientation":Landroid/graphics/Point;
    .end local v3    # "sampleSizeForThisOrientation":F
    .end local v9    # "orientation":I
    .end local v17    # "crop":Landroid/graphics/Rect;
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    move/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_8

    .end local v18    # "needScale":Z
    .end local v20    # "success":Z
    .end local v21    # "tempCropHint":Landroid/graphics/Rect;
    .local v0, "needScale":Z
    .local v3, "success":Z
    .restart local v4    # "tempCropHint":Landroid/graphics/Rect;
    :cond_f
    move/from16 v18, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    .line 623
    .end local v0    # "needScale":Z
    .end local v3    # "success":Z
    .end local v4    # "tempCropHint":Landroid/graphics/Rect;
    .end local v15    # "i":I
    .restart local v18    # "needScale":Z
    .restart local v20    # "success":Z
    .restart local v21    # "tempCropHint":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplayLargestDimension()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 625
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v3

    .line 623
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 626
    .local v0, "maxCropSize":I
    nop

    .line 627
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 628
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 626
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 629
    .local v3, "minimumSampleSize":F
    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 630
    .end local v14    # "sampleSize":F
    .local v9, "sampleSize":F
    cmpl-float v14, v9, v4

    if-lez v14, :cond_10

    const/16 v16, 0x1

    goto :goto_a

    :cond_10
    const/16 v16, 0x0

    :goto_a
    move/from16 v4, v16

    .line 634
    .end local v0    # "maxCropSize":I
    .end local v3    # "minimumSampleSize":F
    .end local v18    # "needScale":Z
    .local v4, "needScale":Z
    nop

    .line 646
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "crop: w="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " h="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "defaultCrops: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    nop

    .line 649
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "meas: w="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "crop?="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, " scale?="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-nez v8, :cond_12

    if-nez v4, :cond_12

    .line 661
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    .line 663
    .end local v20    # "success":Z
    .local v3, "success":Z
    if-nez v3, :cond_11

    .line 664
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 809
    .end local v4    # "needScale":Z
    .end local v8    # "needCrop":Z
    .end local v9    # "sampleSize":F
    .end local v10    # "bitmapSize":Landroid/graphics/Point;
    .end local v11    # "bitmapRect":Landroid/graphics/Rect;
    .end local v12    # "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v13    # "cropHint":Landroid/graphics/Rect;
    .end local v21    # "tempCropHint":Landroid/graphics/Rect;
    :cond_11
    move-object/from16 v24, v5

    move-object/from16 v25, v6

    goto/16 :goto_11

    .line 674
    .end local v3    # "success":Z
    .restart local v4    # "needScale":Z
    .restart local v8    # "needCrop":Z
    .restart local v9    # "sampleSize":F
    .restart local v10    # "bitmapSize":Landroid/graphics/Point;
    .restart local v11    # "bitmapRect":Landroid/graphics/Rect;
    .restart local v12    # "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .restart local v13    # "cropHint":Landroid/graphics/Rect;
    .restart local v20    # "success":Z
    .restart local v21    # "tempCropHint":Landroid/graphics/Rect;
    :cond_12
    const/4 v3, 0x0

    .line 675
    .local v3, "f":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 682
    .local v14, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v15, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    div-int/2addr v0, v15

    .line 683
    .local v0, "actualScale":I
    const/4 v15, 0x1

    .line 684
    .local v15, "scale":I
    :goto_b
    mul-int/lit8 v1, v15, 0x2

    if-gt v1, v0, :cond_13

    .line 685
    mul-int/lit8 v15, v15, 0x2

    move-object/from16 v1, p0

    goto :goto_b

    .line 687
    :cond_13
    iput v15, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 688
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 690
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 691
    .local v1, "estimateCrop":Landroid/graphics/Rect;
    nop

    .line 693
    move/from16 v16, v0

    .end local v0    # "actualScale":I
    .local v16, "actualScale":I
    iget v0, v1, Landroid/graphics/Rect;->left:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    int-to-float v0, v0

    div-float/2addr v0, v9

    move-object/from16 v18, v3

    move/from16 v17, v4

    .end local v3    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "needScale":Z
    .local v17, "needScale":Z
    .local v18, "f":Ljava/io/FileOutputStream;
    float-to-double v3, v0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 694
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 695
    iget v0, v1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 696
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 698
    iget v0, v5, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 699
    .local v0, "hRatio":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 700
    .local v3, "destHeight":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 703
    .local v4, "destWidth":I
    nop

    .line 723
    nop

    .line 725
    move/from16 v19, v0

    .end local v0    # "hRatio":F
    .local v19, "hRatio":F
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v9

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v0, v0, v22

    float-to-int v0, v0

    .line 726
    .local v0, "safeHeight":I
    nop

    .line 728
    move/from16 v23, v3

    .end local v3    # "destHeight":I
    .local v23, "destHeight":I
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float v3, v3, v22

    float-to-int v3, v3

    .line 731
    .local v3, "safeWidth":I
    move/from16 v22, v4

    .end local v4    # "destWidth":I
    .local v22, "destWidth":I
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v24, v5

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .local v24, "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    :try_start_2
    const-string v5, "Decode parameters:"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    nop

    .line 739
    nop

    .line 740
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v25, v6

    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .local v25, "displayInfo":Landroid/view/DisplayInfo;
    :try_start_3
    const-string v6, "  cropHint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  estimateCrop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  sampleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  user defined crops: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  all crops: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  targetSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sget-object v4, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  maxTextureSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wallpaper_orig"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 753
    const-string v4, "decode_record"

    goto :goto_c

    .line 803
    .end local v0    # "safeHeight":I
    .end local v1    # "estimateCrop":Landroid/graphics/Rect;
    .end local v3    # "safeWidth":I
    .end local v15    # "scale":I
    .end local v16    # "actualScale":I
    .end local v19    # "hRatio":F
    .end local v22    # "destWidth":I
    .end local v23    # "destHeight":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_e

    .line 800
    :catch_0
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_d

    .line 753
    .restart local v0    # "safeHeight":I
    .restart local v1    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v3    # "safeWidth":I
    .restart local v15    # "scale":I
    .restart local v16    # "actualScale":I
    .restart local v19    # "hRatio":F
    .restart local v22    # "destWidth":I
    .restart local v23    # "destHeight":I
    :cond_14
    const-string v4, "decode_lock_record"

    :goto_c
    nop

    .line 754
    .local v4, "recordName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget v6, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 755
    .local v5, "record":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 756
    sget-object v6, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    move/from16 v26, v0

    .end local v0    # "safeHeight":I
    .local v26, "safeHeight":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v3

    .end local v3    # "safeWidth":I
    .local v27, "safeWidth":I
    const-string v3, "record path ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", record name ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    nop

    .line 760
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 761
    .local v0, "srcData":Landroid/graphics/ImageDecoder$Source;
    move v3, v15

    .line 762
    .local v3, "finalScale":I
    iget v6, v10, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v6, v9

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    .end local v4    # "recordName":Ljava/lang/String;
    .end local v5    # "record":Ljava/io/File;
    .local v28, "recordName":Ljava/lang/String;
    .local v29, "record":Ljava/io/File;
    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 763
    .local v4, "rescaledBitmapWidth":I
    iget v5, v10, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 764
    .local v5, "rescaledBitmapHeight":I
    new-instance v6, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v4, v5, v1}, Lcom/android/server/wallpaper/WallpaperCropper$$ExternalSyntheticLambda0;-><init>(IIILandroid/graphics/Rect;)V

    invoke-static {v0, v6}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 772
    .local v6, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 774
    nop

    .line 778
    nop

    .line 779
    move-object/from16 v30, v6

    .line 781
    .local v30, "finalCrop":Landroid/graphics/Bitmap;
    nop

    .line 782
    iput v9, v2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 793
    move-object/from16 v31, v0

    .end local v0    # "srcData":Landroid/graphics/ImageDecoder$Source;
    .local v31, "srcData":Landroid/graphics/ImageDecoder$Source;
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v32, v1

    .end local v1    # "estimateCrop":Landroid/graphics/Rect;
    .local v32, "estimateCrop":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    .line 794
    .end local v18    # "f":Ljava/io/FileOutputStream;
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v0, Ljava/io/BufferedOutputStream;

    move/from16 v33, v3

    .end local v3    # "finalScale":I
    .local v33, "finalScale":I
    const v3, 0x8000

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v14, v0

    .line 795
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v3, 0x64

    move-object/from16 v18, v1

    move-object/from16 v1, v30

    .end local v30    # "finalCrop":Landroid/graphics/Bitmap;
    .local v1, "finalCrop":Landroid/graphics/Bitmap;
    .restart local v18    # "f":Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v1, v0, v3, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 797
    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 798
    const/4 v3, 0x1

    .line 803
    .end local v1    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v4    # "rescaledBitmapWidth":I
    .end local v5    # "rescaledBitmapHeight":I
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    .end local v15    # "scale":I
    .end local v16    # "actualScale":I
    .end local v19    # "hRatio":F
    .end local v20    # "success":Z
    .end local v22    # "destWidth":I
    .end local v23    # "destHeight":I
    .end local v26    # "safeHeight":I
    .end local v27    # "safeWidth":I
    .end local v28    # "recordName":Ljava/lang/String;
    .end local v29    # "record":Ljava/io/File;
    .end local v31    # "srcData":Landroid/graphics/ImageDecoder$Source;
    .end local v32    # "estimateCrop":Landroid/graphics/Rect;
    .end local v33    # "finalScale":I
    .local v3, "success":Z
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 805
    goto/16 :goto_11

    .line 803
    .end local v3    # "success":Z
    .end local v18    # "f":Ljava/io/FileOutputStream;
    .local v1, "f":Ljava/io/FileOutputStream;
    .restart local v20    # "success":Z
    :catchall_1
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v3, v18

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v18    # "f":Ljava/io/FileOutputStream;
    goto :goto_e

    .line 800
    .end local v18    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v3, v18

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v18    # "f":Ljava/io/FileOutputStream;
    goto :goto_d

    .line 803
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .local v6, "displayInfo":Landroid/view/DisplayInfo;
    :catchall_2
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v3, v18

    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_e

    .line 800
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catch_2
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v3, v18

    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_d

    .line 803
    .end local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .local v5, "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v3, v18

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_e

    .line 800
    .end local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catch_3
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v3, v18

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_d

    .line 803
    .end local v17    # "needScale":Z
    .end local v18    # "f":Ljava/io/FileOutputStream;
    .end local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .local v3, "f":Ljava/io/FileOutputStream;
    .local v4, "needScale":Z
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_4
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v17, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    .end local v3    # "f":Ljava/io/FileOutputStream;
    .end local v4    # "needScale":Z
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v17    # "needScale":Z
    .restart local v18    # "f":Ljava/io/FileOutputStream;
    .restart local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_e

    .line 800
    .end local v17    # "needScale":Z
    .end local v18    # "f":Ljava/io/FileOutputStream;
    .end local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v4    # "needScale":Z
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :catch_4
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v17, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    .end local v4    # "needScale":Z
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v17    # "needScale":Z
    .restart local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_d
    nop

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v1, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v4, "Error decoding crop"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 803
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 805
    goto :goto_10

    .line 803
    :catchall_5
    move-exception v0

    :goto_e
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 804
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 805
    throw v0

    .line 484
    .end local v8    # "needCrop":Z
    .end local v9    # "sampleSize":F
    .end local v10    # "bitmapSize":Landroid/graphics/Point;
    .end local v11    # "bitmapRect":Landroid/graphics/Rect;
    .end local v12    # "defaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .end local v13    # "cropHint":Landroid/graphics/Rect;
    .end local v14    # "bos":Ljava/io/BufferedOutputStream;
    .end local v17    # "needScale":Z
    .end local v20    # "success":Z
    .end local v21    # "tempCropHint":Landroid/graphics/Rect;
    .end local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v25    # "displayInfo":Landroid/view/DisplayInfo;
    .local v3, "success":Z
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v6    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_15
    move/from16 v20, v3

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    .line 485
    .end local v3    # "success":Z
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .end local v6    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "success":Z
    .restart local v24    # "wpData":Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .restart local v25    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_f
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v1, "Invalid wallpaper data"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_10
    move/from16 v3, v20

    .end local v20    # "success":Z
    .restart local v3    # "success":Z
    :goto_11
    if-nez v3, :cond_16

    .line 810
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to apply new wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 812
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 813
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 814
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    .line 817
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 818
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 823
    :cond_17
    return-void
.end method

.method static getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;
    .locals 19
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "bitmapSize"    # Landroid/graphics/Point;
    .param p2, "screenSize"    # Landroid/graphics/Point;
    .param p3, "parallax"    # Z
    .param p4, "rtl"    # Z
    .param p5, "mode"    # I

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v9, v3

    .line 287
    .local v9, "adjustedCrop":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v10, v3, v4

    .line 288
    .local v10, "cropRatio":F
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v11, v3, v4

    .line 289
    .local v11, "screenRatio":F
    cmpl-float v3, v10, v11

    if-nez v3, :cond_0

    return-object v0

    .line 290
    :cond_0
    cmpl-float v3, v10, v11

    if-lez v3, :cond_4

    .line 291
    if-nez p3, :cond_1

    .line 293
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v3, v4

    .line 294
    .local v12, "newLeft":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int v13, v12, v3

    .line 295
    .local v13, "newRight":I
    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 296
    .local v14, "newTop":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int v15, v14, v3

    .line 297
    .local v15, "newBottom":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v12, v14, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    .local v3, "rotatedCrop":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 299
    .local v4, "rotatedBitmap":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->y:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 300
    .local v5, "rotatedScreen":Landroid/graphics/Point;
    const/4 v6, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v6

    .line 302
    .local v6, "rect":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 303
    .local v7, "resultLeft":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v2, v7, v16

    .line 304
    .local v2, "resultRight":I
    move-object/from16 v16, v3

    .end local v3    # "rotatedCrop":Landroid/graphics/Rect;
    .local v16, "rotatedCrop":Landroid/graphics/Rect;
    iget v3, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v3

    iget v3, v6, Landroid/graphics/Rect;->right:I

    sub-int v3, v17, v3

    .line 305
    .local v3, "resultTop":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v18, v4

    .end local v4    # "rotatedBitmap":Landroid/graphics/Point;
    .local v18, "rotatedBitmap":Landroid/graphics/Point;
    add-int v4, v3, v17

    .line 306
    .local v4, "resultBottom":I
    move-object/from16 v17, v5

    .end local v5    # "rotatedScreen":Landroid/graphics/Point;
    .local v17, "rotatedScreen":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v3, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5

    .line 308
    .end local v2    # "resultRight":I
    .end local v3    # "resultTop":I
    .end local v4    # "resultBottom":I
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v7    # "resultLeft":I
    .end local v12    # "newLeft":I
    .end local v13    # "newRight":I
    .end local v14    # "newTop":I
    .end local v15    # "newBottom":I
    .end local v16    # "rotatedCrop":Landroid/graphics/Rect;
    .end local v17    # "rotatedScreen":Landroid/graphics/Point;
    .end local v18    # "rotatedBitmap":Landroid/graphics/Point;
    :cond_1
    move/from16 v8, p5

    div-float v2, v10, v11

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 309
    .local v2, "additionalWidthForParallax":F
    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    .line 310
    sub-float v3, v2, v3

    mul-float/2addr v3, v11

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    .line 310
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 312
    .local v3, "widthToRemove":I
    if-eqz p4, :cond_2

    .line 313
    iget v4, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v9, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 315
    :cond_2
    iget v4, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 318
    .end local v2    # "additionalWidthForParallax":F
    .end local v3    # "widthToRemove":I
    :cond_3
    :goto_0
    goto/16 :goto_4

    .line 323
    :cond_4
    move/from16 v8, p5

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v8, v3, :cond_5

    move v3, v2

    goto :goto_1

    .line 324
    :cond_5
    const/4 v3, 0x1

    if-ne v8, v3, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_1

    .line 325
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    int-to-double v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v11

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    :goto_1
    nop

    .line 326
    .local v3, "widthToAdd":I
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    .line 327
    .local v4, "availableWidth":I
    if-lt v4, v3, :cond_9

    .line 328
    div-int/lit8 v2, v3, 0x2

    .line 329
    .local v2, "widthToAddLeft":I
    div-int/lit8 v5, v3, 0x2

    rem-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    .line 331
    .local v5, "widthToAddRight":I
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-ge v6, v2, :cond_7

    .line 332
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v6

    add-int/2addr v5, v6

    .line 333
    iget v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 334
    :cond_7
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-ge v6, v5, :cond_8

    .line 335
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    sub-int v6, v5, v6

    add-int/2addr v2, v6

    .line 336
    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v7

    .line 338
    :cond_8
    :goto_2
    iget v6, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 339
    iget v6, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 340
    .end local v2    # "widthToAddLeft":I
    .end local v5    # "widthToAddRight":I
    goto :goto_3

    .line 341
    :cond_9
    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 342
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 344
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v11

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 345
    .local v2, "heightToRemove":I
    iget v5, v9, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v2, 0x2

    rem-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v9, Landroid/graphics/Rect;->top:I

    .line 346
    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    .line 348
    .end local v2    # "heightToRemove":I
    .end local v3    # "widthToAdd":I
    .end local v4    # "availableWidth":I
    :goto_4
    return-object v9
.end method

.method public static getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;
    .locals 18
    .param p0, "displaySize"    # Landroid/graphics/Point;
    .param p1, "defaultDisplayInfo"    # Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    .param p2, "bitmapSize"    # Landroid/graphics/Point;
    .param p4, "rtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;",
            "Landroid/graphics/Point;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;Z)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 120
    .local p3, "suggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move/from16 v4, p4

    invoke-static {v2}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v8

    .line 123
    .local v8, "orientation":I
    const/4 v0, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    goto/16 :goto_5

    .line 162
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 163
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 164
    .local v5, "testCrop":Landroid/graphics/Rect;
    if-eqz v5, :cond_2

    iget v9, v5, Landroid/graphics/Rect;->left:I

    if-ltz v9, :cond_2

    iget v9, v5, Landroid/graphics/Rect;->top:I

    if-ltz v9, :cond_2

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Point;->x:I

    if-gt v9, v10, :cond_2

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    if-le v9, v10, :cond_3

    :cond_2
    goto :goto_1

    .line 162
    .end local v5    # "testCrop":Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .restart local v5    # "testCrop":Landroid/graphics/Rect;
    :goto_1
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid crop: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for bitmap size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v2, v6, v1, v0, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 162
    .end local v5    # "testCrop":Landroid/graphics/Rect;
    :cond_4
    nop

    .line 173
    .end local v3    # "i":I
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 174
    .local v3, "suggestedCrop":Landroid/graphics/Rect;
    if-eqz v3, :cond_5

    .line 175
    move-object v0, v3

    .end local v3    # "suggestedCrop":Landroid/graphics/Rect;
    .local v0, "suggestedCrop":Landroid/graphics/Rect;
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v3

    move-object v2, v0

    .end local v0    # "suggestedCrop":Landroid/graphics/Rect;
    .local v2, "suggestedCrop":Landroid/graphics/Rect;
    return-object v3

    .line 180
    .end local v2    # "suggestedCrop":Landroid/graphics/Rect;
    .restart local v3    # "suggestedCrop":Landroid/graphics/Rect;
    :cond_5
    move-object v2, v3

    .end local v3    # "suggestedCrop":Landroid/graphics/Rect;
    .restart local v2    # "suggestedCrop":Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/app/WallpaperManager;->getRotatedOrientation(I)I

    move-result v9

    .line 181
    .local v9, "rotatedOrientation":I
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/Rect;

    .line 182
    .end local v2    # "suggestedCrop":Landroid/graphics/Rect;
    .local v10, "suggestedCrop":Landroid/graphics/Rect;
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Point;

    .line 183
    .local v11, "suggestedDisplaySize":Landroid/graphics/Point;
    if-eqz v10, :cond_6

    .line 185
    invoke-static {v10, v11, v1, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 186
    .local v0, "adjustedCrop":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3

    .line 191
    .end local v0    # "adjustedCrop":Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {v6, v8}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v12

    .line 192
    .local v12, "unfoldedOrientation":I
    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/graphics/Rect;

    .line 193
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Point;

    .line 194
    if-eqz v10, :cond_9

    .line 196
    invoke-static {v10, v11, v1, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 198
    .restart local v0    # "adjustedCrop":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v3

    .line 200
    move-object v13, v0

    .end local v0    # "adjustedCrop":Landroid/graphics/Rect;
    .local v3, "res":Landroid/graphics/Rect;
    .local v13, "adjustedCrop":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 201
    if-eqz p4, :cond_7

    .line 202
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 204
    :cond_7
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v1, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 207
    :goto_2
    move-object v0, v3

    .end local v3    # "res":Landroid/graphics/Rect;
    .local v0, "res":Landroid/graphics/Rect;
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v3

    .end local v0    # "res":Landroid/graphics/Rect;
    .restart local v3    # "res":Landroid/graphics/Rect;
    goto :goto_3

    .line 200
    :cond_8
    move-object/from16 v1, p2

    move/from16 v4, p4

    move-object v0, v3

    .line 209
    :goto_3
    return-object v3

    .line 215
    .end local v3    # "res":Landroid/graphics/Rect;
    .end local v13    # "adjustedCrop":Landroid/graphics/Rect;
    :cond_9
    invoke-virtual {v6, v8}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldedOrientation(I)I

    move-result v13

    .line 216
    .local v13, "foldedOrientation":I
    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/graphics/Rect;

    .line 217
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Point;

    .line 218
    if-eqz v10, :cond_a

    .line 220
    invoke-static {v10, v11, v1, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 221
    .local v0, "adjustedCrop":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3

    .line 226
    .end local v0    # "adjustedCrop":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v2, p0

    iget-object v3, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 227
    .local v3, "rotatedDisplaySize":Landroid/graphics/Point;
    if-eqz v3, :cond_c

    .line 228
    invoke-virtual {v6, v9}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getFoldedOrientation(I)I

    move-result v5

    .line 229
    .local v5, "rotatedFolded":I
    invoke-virtual {v6, v9}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v14

    .line 230
    .local v14, "rotateUnfolded":I
    filled-new-array {v5, v14}, [I

    move-result-object v15

    :goto_4
    move/from16 v16, v5

    .end local v5    # "rotatedFolded":I
    .local v16, "rotatedFolded":I
    const/4 v5, 0x2

    nop

    if-ge v0, v5, :cond_c

    aget v5, v15, v0

    .line 231
    .local v5, "suggestedOrientation":I
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Landroid/graphics/Rect;

    .line 232
    if-eqz v10, :cond_b

    .line 233
    invoke-static {v3, v6, v1, v7, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 235
    .local v0, "rotatedCrop":Landroid/graphics/Rect;
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 236
    .local v15, "rotatedCropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-virtual {v15, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    invoke-static {v2, v6, v1, v15, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v17

    return-object v17

    .line 232
    .end local v0    # "rotatedCrop":Landroid/graphics/Rect;
    .end local v15    # "rotatedCropMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    :cond_b
    nop

    .line 230
    .end local v5    # "suggestedOrientation":I
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v16

    goto :goto_4

    .line 244
    .end local v14    # "rotateUnfolded":I
    .end local v16    # "rotatedFolded":I
    :cond_c
    sget-object v0, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not find a proper default crop for display: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", bitmap size: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", suggested crops: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", orientation: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", rtl: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", defaultDisplaySizes: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v2, v6, v1, v0, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 124
    .end local v3    # "rotatedDisplaySize":Landroid/graphics/Point;
    .end local v9    # "rotatedOrientation":I
    .end local v10    # "suggestedCrop":Landroid/graphics/Rect;
    .end local v11    # "suggestedDisplaySize":Landroid/graphics/Point;
    .end local v12    # "unfoldedOrientation":I
    .end local v13    # "foldedOrientation":I
    :goto_5
    new-instance v3, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v0, v0, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v3

    .line 128
    .local v9, "crop":Landroid/graphics/Rect;
    invoke-virtual {v6, v8}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->getUnfoldedOrientation(I)I

    move-result v10

    .line 129
    .local v10, "unfoldedOrientation":I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_d

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 132
    .local v0, "newSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-virtual {v0, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    invoke-static {v2, v6, v1, v0, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3

    .line 140
    .end local v0    # "newSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    :cond_d
    iget-boolean v3, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isLargeScreen:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v6, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->isFoldable:Z

    if-nez v3, :cond_e

    const/4 v0, 0x1

    :cond_e
    move v11, v0

    .line 141
    .local v11, "isTablet":Z
    if-eqz v11, :cond_10

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-ge v0, v3, :cond_10

    .line 142
    new-instance v0, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-direct {v0, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v12, v0

    .line 144
    .local v12, "rotatedDisplaySize":Landroid/graphics/Point;
    invoke-static {v12, v6, v1, v7, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    .local v0, "landscapeCrop":Landroid/graphics/Rect;
    invoke-static {v0, v12, v1, v4}, Lcom/android/server/wallpaper/WallpaperCropper;->noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v9

    .line 151
    if-eqz p4, :cond_f

    .line 152
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v9, Landroid/graphics/Rect;->left:I

    goto :goto_6

    .line 154
    :cond_f
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v9, Landroid/graphics/Rect;->right:I

    .line 158
    .end local v0    # "landscapeCrop":Landroid/graphics/Rect;
    .end local v12    # "rotatedDisplaySize":Landroid/graphics/Point;
    :cond_10
    :goto_6
    move-object v0, v9

    .end local v9    # "crop":Landroid/graphics/Rect;
    .local v0, "crop":Landroid/graphics/Rect;
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p2

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method static getOriginalCropHints(Lcom/android/server/wallpaper/WallpaperData;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wallpaper/WallpaperData;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 399
    .local p1, "relativeCropHints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 401
    .local v2, "crop":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 402
    .local v3, "originalRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 403
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 404
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v2    # "crop":Landroid/graphics/Rect;
    .end local v3    # "originalRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 406
    :cond_0
    return-object v0
.end method

.method public static getTotalCrop(Landroid/util/SparseArray;)Landroid/graphics/Rect;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 360
    .local p0, "crops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const v0, 0x7fffffff

    .local v0, "left":I
    const v1, 0x7fffffff

    .line 361
    .local v1, "top":I
    const/high16 v2, -0x80000000

    .local v2, "right":I
    const/high16 v3, -0x80000000

    .line 362
    .local v3, "bottom":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 363
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 364
    .local v5, "rect":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 365
    iget v6, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 366
    iget v6, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 367
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 362
    .end local v5    # "rect":Landroid/graphics/Rect;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 369
    .end local v4    # "i":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private static synthetic lambda$generateCropInternal$0(IIILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0
    .param p0, "finalScale"    # I
    .param p1, "rescaledBitmapWidth"    # I
    .param p2, "rescaledBitmapHeight"    # I
    .param p3, "estimateCrop"    # Landroid/graphics/Rect;
    .param p4, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p5, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p6, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 765
    nop

    .line 766
    nop

    .line 767
    invoke-virtual {p4, p1, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 769
    invoke-virtual {p4, p3}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    .line 770
    return-void
.end method

.method static noParallax(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Z)Landroid/graphics/Rect;
    .locals 6
    .param p0, "crop"    # Landroid/graphics/Rect;
    .param p1, "displaySize"    # Landroid/graphics/Point;
    .param p2, "bitmapSize"    # Landroid/graphics/Point;
    .param p3, "rtl"    # Z

    .line 257
    if-nez p1, :cond_0

    return-object p0

    .line 258
    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v1, p2

    move v4, p3

    .end local p0    # "crop":Landroid/graphics/Rect;
    .end local p1    # "displaySize":Landroid/graphics/Point;
    .end local p2    # "bitmapSize":Landroid/graphics/Point;
    .end local p3    # "rtl":Z
    .local v0, "crop":Landroid/graphics/Rect;
    .local v1, "bitmapSize":Landroid/graphics/Point;
    .local v2, "displaySize":Landroid/graphics/Point;
    .local v4, "rtl":Z
    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperCropper;->getAdjustedCrop(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;ZZI)Landroid/graphics/Rect;

    move-result-object p0

    .line 260
    .local p0, "adjustedCrop":Landroid/graphics/Rect;
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget p2, v2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 261
    .local p1, "suggestedDisplayRatio":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    .line 262
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 263
    .local p2, "widthToRemove":I
    if-eqz v4, :cond_1

    .line 264
    iget p3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p2

    iput p3, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 266
    :cond_1
    iget p3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p2

    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 268
    :goto_0
    return-object p0
.end method


# virtual methods
.method generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 466
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    sget-object v1, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "WPMS.generateCrop"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCropInternal(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 469
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 470
    return-void
.end method

.method getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;
    .locals 9
    .param p2, "bitmapSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Point;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 416
    .local p1, "suggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 417
    .local v0, "cropHint":Landroid/graphics/Rect;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 418
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Point;->x:I

    iget v5, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 419
    .local v3, "bitmapRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 424
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 425
    .local v1, "cropSize":Landroid/graphics/Point;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v2

    .line 426
    .local v2, "relativeDefaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 427
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 426
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 429
    .end local v4    # "i":I
    return-object v2

    .line 420
    .end local v1    # "cropSize":Landroid/graphics/Point;
    .end local v2    # "relativeDefaultCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    :goto_1
    sget-object v1, Lcom/android/server/wallpaper/WallpaperCropper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get default crops from suggested crops "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for bitmap of size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; ignoring suggested crops"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getDefaultCrops(Landroid/util/SparseArray;Landroid/graphics/Point;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1

    .line 432
    .end local v3    # "bitmapRect":Landroid/graphics/Rect;
    :cond_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDefaultDisplaySizes()Landroid/util/SparseArray;

    move-result-object v3

    .line 433
    .local v3, "defaultDisplaySizes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 437
    .local v1, "rtl":Z
    :cond_4
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 438
    .local v2, "adjustedSuggestedCrops":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 439
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 440
    .local v5, "orientation":I
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 441
    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 442
    .local v7, "suggestedCrop":Landroid/graphics/Rect;
    if-eqz v7, :cond_5

    .line 443
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 444
    invoke-static {v6, v8, p2, p1, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 443
    invoke-virtual {v2, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    .end local v5    # "orientation":I
    .end local v6    # "displaySize":Landroid/graphics/Point;
    .end local v7    # "suggestedCrop":Landroid/graphics/Rect;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 449
    .end local v4    # "i":I
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v4

    .line 450
    .local v4, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 451
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 452
    .local v6, "orientation":I
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    .line 453
    :cond_7
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 454
    .local v7, "displaySize":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-static {v7, v8, p2, v2, v1}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v8

    .line 456
    .local v8, "newCrop":Landroid/graphics/Rect;
    invoke-virtual {v4, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    .end local v6    # "orientation":I
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "newCrop":Landroid/graphics/Rect;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    nop

    .line 458
    .end local v5    # "i":I
    return-object v4
.end method

.method getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wallpaper/WallpaperData;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 378
    .local v0, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 379
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 380
    .local v2, "adjustedRect":Landroid/graphics/Rect;
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 381
    nop

    .line 382
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 383
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v5, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 384
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 385
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget v4, p1, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 389
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    .end local v2    # "adjustedRect":Landroid/graphics/Rect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 391
    .end local v1    # "i":I
    return-object v0
.end method

.method isWallpaperCompatibleForDisplay(ILcom/android/server/wallpaper/WallpaperData;)Z
    .locals 19
    .param p1, "displayId"    # I
    .param p2, "wallpaperData"    # Lcom/android/server/wallpaper/WallpaperData;

    .line 836
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 837
    return v3

    .line 840
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile()Ljava/io/File;

    move-result-object v4

    .line 841
    .local v4, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 843
    return v3

    .line 846
    :cond_1
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    invoke-virtual {v5, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v5

    .line 847
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v6, Landroid/graphics/Point;

    iget v7, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 848
    .local v6, "displaySize":Landroid/graphics/Point;
    invoke-static {v6}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result v7

    .line 850
    .local v7, "displayOrientation":I
    new-instance v8, Landroid/graphics/Point;

    iget-object v9, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 851
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    iget-object v10, v2, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 852
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v2, Lcom/android/server/wallpaper/WallpaperData;->mSampleSize:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 853
    .local v8, "wallpaperImageSize":Landroid/graphics/Point;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Landroid/graphics/Point;->equals(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 854
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 855
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 856
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 857
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Point;->set(II)V

    .line 859
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    if-ne v10, v3, :cond_3

    move v10, v3

    goto :goto_0

    :cond_3
    move v10, v9

    .line 861
    .local v10, "isRtl":Z
    :goto_0
    iget-object v11, v0, Lcom/android/server/wallpaper/WallpaperCropper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 862
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    move-result-object v12

    .line 861
    invoke-static {v6, v11, v8, v12, v10}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v11

    .line 864
    .local v11, "croppedImageBound":Landroid/graphics/Rect;
    iget v12, v6, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    iget v14, v6, Landroid/graphics/Point;->y:I

    int-to-double v14, v14

    .line 865
    move/from16 v16, v9

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v9

    move-object/from16 v18, v4

    .end local v4    # "wallpaperFile":Ljava/io/File;
    .local v18, "wallpaperFile":Ljava/io/File;
    int-to-double v3, v9

    div-double/2addr v14, v3

    .line 864
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 866
    .local v3, "maxDisplayToImageRatio":D
    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    cmpl-double v9, v3, v12

    if-lez v9, :cond_4

    .line 867
    return v16

    .line 871
    :cond_4
    const/4 v9, 0x1

    if-ne v7, v9, :cond_6

    .line 872
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-double v12, v9

    iget v9, v8, Landroid/graphics/Point;->y:I

    int-to-double v14, v9

    div-double/2addr v12, v14

    const-wide v14, 0x3feb13b13b13b13bL    # 0.8461538461538461

    cmpl-double v9, v12, v14

    if-ltz v9, :cond_5

    const/16 v16, 0x1

    :cond_5
    return v16

    .line 876
    :cond_6
    const/16 v17, 0x1

    return v17
.end method
