.class Lcom/android/server/wm/AppSnapshotLoader;
.super Ljava/lang/Object;
.source "AppSnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;


# direct methods
.method constructor <init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0
    .param p1, "persistInfoProvider"    # Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 57
    return-void
.end method


# virtual methods
.method getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .locals 6
    .param p1, "taskWidth"    # I
    .param p2, "legacyScale"    # F
    .param p3, "highResFileExists"    # Z
    .param p4, "loadLowResolutionBitmap"    # Z

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "preRLegacyScale":F
    const/4 v1, 0x0

    .line 97
    .local v1, "forceLoadReducedJpeg":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 98
    .local v4, "isPreRLegacySnapshot":Z
    :goto_0
    if-nez v4, :cond_1

    .line 99
    const/4 v2, 0x0

    return-object v2

    .line 101
    :cond_1
    nop

    nop

    if-eqz v4, :cond_2

    .line 102
    const/4 v5, 0x0

    invoke-static {p2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    nop

    :goto_1
    nop

    .line 104
    .local v2, "isPreQLegacyProto":Z
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_5

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p3, :cond_3

    .line 108
    const v0, 0x3f19999a    # 0.6f

    .line 110
    const/4 v1, 0x1

    goto :goto_4

    .line 113
    :cond_3
    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    move v0, v3

    goto :goto_4

    .line 115
    :cond_5
    if-eqz v4, :cond_8

    .line 117
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 118
    move v0, p2

    .line 120
    const/4 v1, 0x1

    goto :goto_4

    .line 123
    :cond_6
    if-eqz p4, :cond_7

    mul-float/2addr v3, p2

    goto :goto_3

    :cond_7
    move v3, p2

    :goto_3
    move v0, v3

    .line 126
    :cond_8
    :goto_4
    new-instance v3, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {v3, v0, v1}, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;-><init>(FZ)V

    return-object v3
.end method

.method loadTask(IIZ)Landroid/window/TaskSnapshot;
    .locals 36
    .param p1, "id"    # I
    .param p2, "userId"    # I
    .param p3, "loadLowResolutionBitmap"    # Z

    .line 142
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object v24

    .line 143
    .local v24, "protoFile":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v25, 0x0

    if-nez v0, :cond_0

    .line 144
    return-object v25

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 148
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v6

    .line 149
    .local v6, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    iget-object v7, v1, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 150
    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v7

    move-object/from16 v26, v7

    .line 152
    .local v26, "highResBitmap":Ljava/io/File;
    iget v7, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v8, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 153
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v9

    .line 152
    invoke-virtual {v1, v7, v8, v9, v4}, Lcom/android/server/wm/AppSnapshotLoader;->getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;

    move-result-object v7

    .line 155
    .local v7, "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-boolean v9, v7, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "bytes":[B
    .end local v6    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .end local v7    # "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .end local v26    # "highResBitmap":Ljava/io/File;
    :catch_0
    move-exception v0

    move-object v1, v5

    goto/16 :goto_5

    .line 155
    .restart local v0    # "bytes":[B
    .restart local v6    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .restart local v7    # "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .restart local v26    # "highResBitmap":Ljava/io/File;
    :cond_1
    move v9, v8

    :goto_0
    move/from16 v27, v9

    .line 157
    .local v27, "forceLoadReducedJpeg":Z
    if-nez v4, :cond_2

    if-eqz v27, :cond_3

    :cond_2
    goto :goto_1

    .line 159
    :cond_3
    move-object/from16 v9, v26

    goto :goto_2

    .line 158
    :goto_1
    iget-object v9, v1, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v9, v2, v3}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v9

    .line 159
    :goto_2
    move-object/from16 v28, v9

    .line 161
    .local v28, "bitmapFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 162
    return-object v25

    .line 165
    :cond_4
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    nop

    .line 167
    iget-object v10, v1, Lcom/android/server/wm/AppSnapshotLoader;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 166
    invoke-virtual {v10}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v10, :cond_5

    .line 167
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_5
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    iput-object v10, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 168
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 169
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_6

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load bitmap: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v25

    .line 174
    :cond_6
    sget-object v11, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v11, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v29, v8

    .line 175
    .local v29, "hwBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    if-nez v29, :cond_7

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create hardware bitmap: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v25

    .line 180
    :cond_7
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    .line 181
    .local v8, "buffer":Landroid/hardware/HardwareBuffer;
    if-nez v8, :cond_8

    .line 182
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 182
    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-object v25

    .line 187
    :cond_8
    iget-object v11, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 191
    .local v11, "topActivityComponent":Landroid/content/ComponentName;
    if-eqz v7, :cond_9

    .line 192
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget v13, v7, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 193
    .local v12, "taskWidth":I
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    iget v14, v7, Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v13, v14

    float-to-int v13, v13

    .line 194
    .local v13, "taskHeight":I
    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 195
    .end local v12    # "taskWidth":I
    .end local v13    # "taskHeight":I
    .local v14, "taskSize":Landroid/graphics/Point;
    goto :goto_4

    .line 196
    .end local v14    # "taskSize":Landroid/graphics/Point;
    :cond_9
    new-instance v12, Landroid/graphics/Point;

    iget v13, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v14, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object v14, v12

    .line 199
    .restart local v14    # "taskSize":Landroid/graphics/Point;
    :goto_4
    new-instance v4, Landroid/window/TaskSnapshot;

    iget-wide v12, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    move-object v15, v7

    move-object/from16 v16, v10

    move-object v10, v8

    .end local v7    # "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .end local v8    # "buffer":Landroid/hardware/HardwareBuffer;
    .local v10, "buffer":Landroid/hardware/HardwareBuffer;
    .local v15, "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 200
    move-object/from16 v17, v9

    move-object v9, v11

    .end local v11    # "topActivityComponent":Landroid/content/ComponentName;
    .local v9, "topActivityComponent":Landroid/content/ComponentName;
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v11

    move-wide/from16 v18, v12

    iget v12, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v13, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    move-object/from16 v20, v15

    .end local v15    # "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .local v20, "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v30, v0

    .end local v0    # "bytes":[B
    .local v30, "bytes":[B
    iget v0, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v3, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    move-object/from16 v21, v4

    iget v4, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v15, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    iget v3, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    iget v4, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v22, v5

    :try_start_1
    iget v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v1, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v3, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v4, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    iget-boolean v5, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    move-object/from16 v23, v0

    iget v0, v6, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v31, v22

    const/16 v22, 0x0

    move-object/from16 v32, v16

    move-object/from16 v16, v23

    move/from16 v23, v0

    move-object v0, v6

    move-object/from16 v33, v17

    move/from16 v17, p3

    move-wide/from16 v34, v18

    move/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v3, v20

    move-object/from16 v1, v31

    move/from16 v20, v4

    move-object/from16 v31, v33

    move-object/from16 v4, v21

    move/from16 v21, v5

    move-wide/from16 v5, v34

    .end local v6    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .local v0, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .local v3, "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .local v31, "options":Landroid/graphics/BitmapFactory$Options;
    .local v32, "bitmap":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-direct/range {v4 .. v23}, Landroid/window/TaskSnapshot;-><init>(JJLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    return-object v4

    .line 207
    .end local v0    # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .end local v3    # "legacyConfig":Lcom/android/server/wm/AppSnapshotLoader$PreRLegacySnapshotConfig;
    .end local v9    # "topActivityComponent":Landroid/content/ComponentName;
    .end local v10    # "buffer":Landroid/hardware/HardwareBuffer;
    .end local v14    # "taskSize":Landroid/graphics/Point;
    .end local v26    # "highResBitmap":Ljava/io/File;
    .end local v27    # "forceLoadReducedJpeg":Z
    .end local v28    # "bitmapFile":Ljava/io/File;
    .end local v29    # "hwBitmap":Landroid/graphics/Bitmap;
    .end local v30    # "bytes":[B
    .end local v31    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v32    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v1, v22

    :goto_5
    nop

    .line 208
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load task snapshot data for Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-object v25
.end method
