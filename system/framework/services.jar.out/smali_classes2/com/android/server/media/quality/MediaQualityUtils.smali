.class public final Lcom/android/server/media/quality/MediaQualityUtils;
.super Ljava/lang/Object;
.source "MediaQualityUtils.java"


# static fields
.field private static final MAX_UUID_GENERATION_ATTEMPTS:I = 0xa

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field public static final SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

.field private static final TAG:Ljava/lang/String; = "MediaQualityUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    new-instance v0, Landroid/media/quality/SoundProfileHandle;

    invoke-direct {v0}, Landroid/media/quality/SoundProfileHandle;-><init>()V

    sput-object v0, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    .line 72
    sget-object v0, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    const-wide/16 v1, -0x2710

    iput-wide v1, v0, Landroid/media/quality/SoundProfileHandle;->id:J

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1915
    return-void
.end method

.method public static convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/server/media/quality/BiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/quality/PictureProfile;"
        }
    .end annotation

    .line 1323
    .local p1, "map":Lcom/android/server/media/quality/BiMap;, "Lcom/android/server/media/quality/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getTempId(Lcom/android/server/media/quality/BiMap;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, "tmpId":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    .line 1325
    .local v8, "dbId":Ljava/lang/Long;
    if-nez v8, :cond_0

    .line 1326
    sget-object v0, Landroid/media/quality/PictureProfileHandle;->NONE:Landroid/media/quality/PictureProfileHandle;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/media/quality/PictureProfileHandle;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/media/quality/PictureProfileHandle;-><init>(J)V

    goto :goto_0

    .line 1327
    .local v7, "handle":Landroid/media/quality/PictureProfileHandle;
    :goto_1
    new-instance v0, Landroid/media/quality/PictureProfile;

    .line 1329
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getType(Landroid/database/Cursor;)I

    move-result v2

    .line 1330
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 1331
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getInputId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 1332
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getPackageName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1333
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getSettingsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/media/quality/MediaQualityUtils;->jsonToPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/PictureProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/PictureProfileHandle;)V

    .line 1327
    return-object v0
.end method

.method public static convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/server/media/quality/BiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/quality/SoundProfile;"
        }
    .end annotation

    .line 1343
    .local p1, "map":Lcom/android/server/media/quality/BiMap;, "Lcom/android/server/media/quality/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v0, Landroid/media/quality/SoundProfile;

    .line 1344
    invoke-static {p1, p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getTempId(Lcom/android/server/media/quality/BiMap;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getType(Landroid/database/Cursor;)I

    move-result v2

    .line 1346
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getInputId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getPackageName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 1349
    invoke-static {p0}, Lcom/android/server/media/quality/MediaQualityUtils;->getSettingsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/media/quality/MediaQualityUtils;->jsonToPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    sget-object v7, Lcom/android/server/media/quality/MediaQualityUtils;->SOUND_PROFILE_HANDLE_NONE:Landroid/media/quality/SoundProfileHandle;

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/SoundProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/SoundProfileHandle;)V

    .line 1343
    return-object v0
.end method

.method public static convertParameterToByteArray(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1363
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1365
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1367
    .local v0, "nameMap":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v1, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const-string v2, "brightness"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1370
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1373
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_2
    const-string v3, "contrast"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1376
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_3
    const-string/jumbo v3, "sharpness"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1379
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1381
    :cond_4
    const-string/jumbo v3, "saturation"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_5

    .line 1382
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    :cond_5
    const-string/jumbo v5, "hue"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_6

    .line 1385
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1388
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    :cond_7
    const-string v2, "color_tuner_brightness"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1391
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1393
    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1394
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    :cond_9
    const-string v2, "color_tuner_saturation"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1397
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1399
    :cond_a
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1400
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    :cond_b
    const-string v2, "color_tuner_hue"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1403
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    :cond_c
    const-string v2, "color_tuner_red_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1406
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_d
    const-string v2, "color_tuner_green_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1409
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1411
    :cond_e
    const-string v2, "color_tuner_blue_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1412
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1414
    :cond_f
    const-string v2, "color_tuner_red_gain"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1415
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1417
    :cond_10
    const-string v2, "color_tuner_green_gain"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1418
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    :cond_11
    const-string v2, "color_tuner_blue_gain"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1421
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    :cond_12
    const-string/jumbo v2, "noise_reduction"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1424
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    :cond_13
    const-string/jumbo v2, "mpeg_noise_reduction"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1427
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1429
    :cond_14
    const-string v2, "flesh_tone"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1430
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    :cond_15
    const-string v2, "decontour"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1433
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1435
    :cond_16
    const-string v2, "dynamic_luma_control"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1436
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1438
    :cond_17
    const-string v2, "film_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1439
    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_18
    const-string v2, "blue_stretch"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1442
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_19
    const-string v2, "color_tune"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1445
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1447
    :cond_1a
    const-string v2, "color_temperature"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1448
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    :cond_1b
    const-string/jumbo v2, "global_dimming"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1451
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1453
    :cond_1c
    const-string v2, "auto_picture_quality_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1454
    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1456
    :cond_1d
    const-string v2, "auto_super_resolution_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1457
    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1459
    :cond_1e
    const-string/jumbo v2, "level_range"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1460
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    :cond_1f
    const-string v2, "gamut_mapping"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1463
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_20
    const-string/jumbo v2, "pc_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1466
    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    :cond_21
    const-string/jumbo v2, "low_latency"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1469
    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    :cond_22
    const-string/jumbo v2, "vrr"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1472
    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_23
    const-string v2, "cvrr"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1475
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    :cond_24
    const-string/jumbo v2, "hdmi_rgb_range"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1478
    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    :cond_25
    const-string v2, "color_space"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1481
    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_26
    const-string/jumbo v2, "panel_init_max_lumince_valid"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1484
    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    :cond_27
    const-string v2, "gamma"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1487
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    :cond_28
    const-string v2, "color_temperature_red_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1490
    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1492
    :cond_29
    const-string v2, "color_temperature_green_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1493
    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1495
    :cond_2a
    const-string v2, "color_temperature_blue_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1496
    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_2b
    const-string v2, "eleven_point_red"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1499
    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1501
    :cond_2c
    const-string v2, "eleven_point_green"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1502
    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    :cond_2d
    const-string v2, "eleven_point_blue"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1505
    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    :cond_2e
    const-string/jumbo v2, "low_blue_light"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1508
    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    :cond_2f
    const-string/jumbo v2, "ld_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1511
    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    :cond_30
    const-string/jumbo v2, "osd_red_gain"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1514
    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    :cond_31
    const-string/jumbo v2, "osd_green_gain"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1517
    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    :cond_32
    const-string/jumbo v2, "osd_blue_gain"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1520
    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_33
    const-string/jumbo v2, "osd_red_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1523
    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    :cond_34
    const-string/jumbo v2, "osd_green_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1526
    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_35
    const-string/jumbo v2, "osd_blue_offset"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1529
    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_36
    const-string/jumbo v2, "osd_hue"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1532
    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    :cond_37
    const-string/jumbo v2, "osd_saturation"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1535
    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    :cond_38
    const-string/jumbo v2, "osd_contrast"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1538
    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    :cond_39
    const-string v2, "color_tuner_switch"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1541
    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    :cond_3a
    const-string v2, "color_tuner_hue_red"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1544
    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    :cond_3b
    const-string v2, "color_tuner_hue_green"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1547
    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1549
    :cond_3c
    const-string v2, "color_tuner_hue_blue"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1550
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    :cond_3d
    const-string v2, "color_tuner_hue_cyan"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1553
    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    :cond_3e
    const-string v2, "color_tuner_hue_magenta"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1556
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    :cond_3f
    const-string v2, "color_tuner_hue_yellow"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1559
    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_40
    const-string v2, "color_tuner_hue_flesh"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1562
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_41
    const-string v2, "color_tuner_saturation_red"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1565
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    :cond_42
    const-string v2, "color_tuner_saturation_green"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1568
    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    :cond_43
    const-string v2, "color_tuner_saturation_blue"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1571
    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1573
    :cond_44
    const-string v2, "color_tuner_saturation_cyan"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1574
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1576
    :cond_45
    const-string v2, "color_tuner_saturation_magenta"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1577
    const/16 v2, 0x45

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    :cond_46
    const-string v2, "color_tuner_saturation_yellow"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1580
    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    :cond_47
    const-string v2, "color_tuner_saturation_flesh"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1583
    const/16 v2, 0x47

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    :cond_48
    const-string v2, "color_tuner_luminance_red"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1586
    const/16 v2, 0x48

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    :cond_49
    const-string v2, "color_tuner_luminance_green"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1589
    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    :cond_4a
    const-string v2, "color_tuner_luminance_blue"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1592
    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_4b
    const-string v2, "color_tuner_luminance_cyan"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1595
    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    :cond_4c
    const-string v2, "color_tuner_luminance_magenta"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1598
    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    :cond_4d
    const-string v2, "color_tuner_luminance_yellow"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 1601
    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    :cond_4e
    const-string v2, "color_tuner_luminance_flesh"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1604
    const/16 v2, 0x4e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    :cond_4f
    const-string v2, "balance"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1609
    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1611
    :cond_50
    const-string v2, "bass"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1612
    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    :cond_51
    const-string/jumbo v2, "treble"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1615
    const/16 v2, 0x51

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    :cond_52
    const-string/jumbo v2, "surround_sound"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1618
    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    :cond_53
    const-string v2, "equalizer_detail"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 1621
    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1623
    :cond_54
    const-string/jumbo v2, "speakers"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1624
    const/16 v2, 0x54

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    :cond_55
    const-string/jumbo v2, "speakers_delay_millis"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1627
    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    :cond_56
    const-string v2, "earc"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1630
    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    :cond_57
    const-string v2, "auto_volume_control"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1633
    const/16 v2, 0x57

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    :cond_58
    const-string v2, "down_mix_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1636
    const/16 v2, 0x58

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    :cond_59
    const-string v2, "dts_drc"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1639
    const/16 v2, 0x59

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    :cond_5a
    const-string v2, "dolby_audio_processing"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1642
    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1644
    :cond_5b
    const-string v2, "dialogue_enhancer"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1645
    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_5c
    const-string v2, "dts_virtual_x"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1648
    const/16 v2, 0x5c

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    :cond_5d
    const-string v2, "digital_output_delay_millis"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1651
    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1653
    :cond_5e
    const-string v2, "digital_output_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1654
    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_5f
    const-string/jumbo v2, "sound_style"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1657
    const/16 v2, 0x5f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1660
    :cond_60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 1661
    .local v2, "byteArray":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 1662
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 1661
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_61
    nop

    .line 1664
    .end local v3    # "i":I
    return-object v2
.end method

.method public static convertPersistableBundleToPictureParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/PictureParameter;
    .locals 13
    .param p0, "params"    # Landroid/os/PersistableBundle;

    .line 376
    if-nez p0, :cond_0

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 379
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "pictureParams":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/tv/mediaquality/PictureParameter;>;"
    const-string v1, "brightness"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->brightness(F)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 385
    :cond_1
    const-string v1, "contrast"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->contrast(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 390
    :cond_2
    const-string/jumbo v1, "sharpness"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->sharpness(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 395
    :cond_3
    const-string/jumbo v1, "saturation"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 396
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->saturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 400
    :cond_4
    const-string/jumbo v1, "hue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 401
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->hue(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 405
    :cond_5
    const-string v1, "color_tuner_brightness"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerBrightness(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 410
    :cond_6
    const-string v1, "color_tuner_saturation"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 411
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 415
    :cond_7
    const-string v1, "color_tuner_hue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 416
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHue(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 420
    :cond_8
    const-string v1, "color_tuner_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 421
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 425
    :cond_9
    const-string v1, "color_tuner_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 426
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 430
    :cond_a
    const-string v1, "color_tuner_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 431
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 435
    :cond_b
    const-string v1, "color_tuner_red_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 436
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 440
    :cond_c
    const-string v2, "color_tuner_green_gain"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 441
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 445
    :cond_d
    const-string v3, "color_tuner_blue_gain"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 446
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 450
    :cond_e
    const-string/jumbo v4, "noise_reduction"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 451
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, "noiseReductionString":Ljava/lang/String;
    if-eqz v5, :cond_f

    .line 454
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v6

    .line 455
    .local v6, "noiseReductionByte":B
    invoke-static {v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->noiseReduction(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v6    # "noiseReductionByte":B
    :cond_f
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 459
    .end local v5    # "noiseReductionString":Ljava/lang/String;
    :cond_10
    const-string/jumbo v4, "mpeg_noise_reduction"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 460
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, "mpegNoiseReductionString":Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 463
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v6

    .line 464
    .local v6, "mpegNoiseReductionByte":B
    invoke-static {v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->mpegNoiseReduction(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v6    # "mpegNoiseReductionByte":B
    :cond_11
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 468
    .end local v5    # "mpegNoiseReductionString":Ljava/lang/String;
    :cond_12
    const-string v4, "flesh_tone"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 469
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "fleshToneString":Ljava/lang/String;
    if-eqz v5, :cond_13

    .line 471
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v6

    .line 472
    .local v6, "fleshToneByte":B
    invoke-static {v6}, Landroid/hardware/tv/mediaquality/PictureParameter;->fleshTone(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v6    # "fleshToneByte":B
    :cond_13
    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 476
    .end local v5    # "fleshToneString":Ljava/lang/String;
    :cond_14
    const-string v4, "decontour"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 477
    const-string v4, "decontour"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "decontourString":Ljava/lang/String;
    if-eqz v4, :cond_15

    .line 479
    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v5

    .line 480
    .local v5, "decontourByte":B
    invoke-static {v5}, Landroid/hardware/tv/mediaquality/PictureParameter;->deContour(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v5    # "decontourByte":B
    :cond_15
    const-string v5, "decontour"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 484
    .end local v4    # "decontourString":Ljava/lang/String;
    :cond_16
    const-string v4, "dynamic_luma_control"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 485
    const-string v4, "dynamic_luma_control"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "dynamicLunaControlString":Ljava/lang/String;
    if-eqz v4, :cond_17

    .line 488
    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v5

    .line 489
    .local v5, "dynamicLunaControlByte":B
    invoke-static {v5}, Landroid/hardware/tv/mediaquality/PictureParameter;->dynamicLumaControl(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v5    # "dynamicLunaControlByte":B
    :cond_17
    const-string v5, "dynamic_luma_control"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 493
    .end local v4    # "dynamicLunaControlString":Ljava/lang/String;
    :cond_18
    const-string v4, "film_mode"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 494
    const-string v4, "film_mode"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->filmMode(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v4, "film_mode"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 498
    :cond_19
    const-string v4, "blue_stretch"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 499
    const-string v4, "blue_stretch"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->blueStretch(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v4, "blue_stretch"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 503
    :cond_1a
    const-string v4, "color_tune"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 504
    const-string v4, "color_tune"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTune(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v4, "color_tune"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 508
    :cond_1b
    const-string v4, "color_temperature"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "PictureParams"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_1e

    .line 509
    const-string v4, "color_temperature"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "colorTemperatureString":Ljava/lang/String;
    if-eqz v4, :cond_1d

    .line 513
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1c
    goto/16 :goto_0

    :sswitch_0
    const-string v10, "color_temp_warm_hdr10plus"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "color_temp_standard"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    move v10, v7

    goto :goto_1

    :sswitch_2
    const-string v10, "color_temp_warm"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "color_temp_user"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    move v10, v9

    goto :goto_1

    :sswitch_4
    const-string v10, "color_temp_cool"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    move v10, v6

    goto :goto_1

    :sswitch_5
    const-string v10, "color_temp_cool_hdr10plus"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x5

    goto :goto_1

    :sswitch_6
    const-string v10, "color_temp_standard_hdr10plus"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "color_temp_user_hdr10plus"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x4

    goto :goto_1

    :sswitch_8
    const-string v10, "color_temp_fmmsdr"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/16 v10, 0x8

    goto :goto_1

    :sswitch_9
    const-string v10, "color_temp_fmmhdr"

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/16 v10, 0x9

    goto :goto_1

    :goto_0
    move v10, v8

    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 545
    const/4 v10, 0x2

    .line 546
    .local v10, "colorTemperatureByte":B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid color_temp string: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 542
    .end local v10    # "colorTemperatureByte":B
    :pswitch_0
    const/16 v10, 0x9

    .line 543
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 539
    .end local v10    # "colorTemperatureByte":B
    :pswitch_1
    const/16 v10, 0x8

    .line 540
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 536
    .end local v10    # "colorTemperatureByte":B
    :pswitch_2
    const/4 v10, 0x7

    .line 537
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 533
    .end local v10    # "colorTemperatureByte":B
    :pswitch_3
    const/4 v10, 0x6

    .line 534
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 530
    .end local v10    # "colorTemperatureByte":B
    :pswitch_4
    const/4 v10, 0x5

    .line 531
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 527
    .end local v10    # "colorTemperatureByte":B
    :pswitch_5
    const/4 v10, 0x4

    .line 528
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 524
    .end local v10    # "colorTemperatureByte":B
    :pswitch_6
    const/4 v10, 0x3

    .line 525
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 521
    .end local v10    # "colorTemperatureByte":B
    :pswitch_7
    const/4 v10, 0x2

    .line 522
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 518
    .end local v10    # "colorTemperatureByte":B
    :pswitch_8
    const/4 v10, 0x1

    .line 519
    .restart local v10    # "colorTemperatureByte":B
    goto :goto_2

    .line 515
    .end local v10    # "colorTemperatureByte":B
    :pswitch_9
    const/4 v10, 0x0

    .line 516
    .restart local v10    # "colorTemperatureByte":B
    nop

    .line 549
    :goto_2
    invoke-static {v10}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperature(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .end local v10    # "colorTemperatureByte":B
    :cond_1d
    const-string v10, "color_temperature"

    invoke-virtual {p0, v10}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 553
    .end local v4    # "colorTemperatureString":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v4, "global_dimming"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 554
    const-string/jumbo v4, "global_dimming"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->globeDimming(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    const-string/jumbo v4, "global_dimming"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 558
    :cond_1f
    const-string v4, "auto_picture_quality_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 559
    const-string v4, "auto_picture_quality_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->autoPictureQualityEnabled(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    const-string v4, "auto_picture_quality_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 563
    :cond_20
    const-string v4, "auto_super_resolution_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 564
    const-string v4, "auto_super_resolution_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->autoSuperResolutionEnabled(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    const-string v4, "auto_super_resolution_enabled"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 568
    :cond_21
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 569
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperatureRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 573
    :cond_22
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 574
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperatureGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 578
    :cond_23
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 579
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperatureBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 583
    :cond_24
    const-string/jumbo v1, "level_range"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 584
    const-string/jumbo v1, "level_range"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "levelRangeString":Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 587
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :cond_25
    goto :goto_3

    :sswitch_a
    const-string v2, "LIMITED"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v6

    goto :goto_4

    :sswitch_b
    const-string v2, "FULL"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v7

    goto :goto_4

    :sswitch_c
    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v9

    goto :goto_4

    :goto_3
    move v2, v8

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 598
    const/4 v2, 0x0

    .line 599
    .local v2, "levelRangeByte":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid color_range string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 595
    .end local v2    # "levelRangeByte":B
    :pswitch_a
    const/4 v2, 0x2

    .line 596
    .restart local v2    # "levelRangeByte":B
    goto :goto_5

    .line 592
    .end local v2    # "levelRangeByte":B
    :pswitch_b
    const/4 v2, 0x1

    .line 593
    .restart local v2    # "levelRangeByte":B
    goto :goto_5

    .line 589
    .end local v2    # "levelRangeByte":B
    :pswitch_c
    const/4 v2, 0x0

    .line 590
    .restart local v2    # "levelRangeByte":B
    nop

    .line 602
    :goto_5
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->levelRange(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    .end local v2    # "levelRangeByte":B
    :cond_26
    const-string/jumbo v2, "level_range"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 606
    .end local v1    # "levelRangeString":Ljava/lang/String;
    :cond_27
    const-string v1, "gamut_mapping"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 607
    const-string v1, "gamut_mapping"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->gamutMapping(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    const-string v1, "gamut_mapping"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 611
    :cond_28
    const-string/jumbo v1, "pc_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 612
    const-string/jumbo v1, "pc_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->pcMode(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    const-string/jumbo v1, "pc_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 616
    :cond_29
    const-string/jumbo v1, "low_latency"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 617
    const-string/jumbo v1, "low_latency"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->lowLatency(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    const-string/jumbo v1, "low_latency"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 621
    :cond_2a
    const-string/jumbo v1, "vrr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 622
    const-string/jumbo v1, "vrr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->vrr(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    const-string/jumbo v1, "vrr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 626
    :cond_2b
    const-string v1, "cvrr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 627
    const-string v1, "cvrr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->cvrr(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v1, "cvrr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 631
    :cond_2c
    const-string/jumbo v1, "hdmi_rgb_range"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 632
    const-string/jumbo v1, "hdmi_rgb_range"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "hdmiRgbRangeString":Ljava/lang/String;
    if-eqz v1, :cond_2e

    .line 635
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    :cond_2d
    goto :goto_6

    :sswitch_d
    const-string v2, "LIMITED"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v6

    goto :goto_7

    :sswitch_e
    const-string v2, "FULL"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v7

    goto :goto_7

    :sswitch_f
    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v9

    goto :goto_7

    :goto_6
    move v2, v8

    :goto_7
    packed-switch v2, :pswitch_data_2

    .line 646
    const/4 v2, 0x0

    .line 647
    .local v2, "hdmiRgbRangeByte":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hdmi_rgb_range string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 643
    .end local v2    # "hdmiRgbRangeByte":B
    :pswitch_d
    const/4 v2, 0x2

    .line 644
    .restart local v2    # "hdmiRgbRangeByte":B
    goto :goto_8

    .line 640
    .end local v2    # "hdmiRgbRangeByte":B
    :pswitch_e
    const/4 v2, 0x1

    .line 641
    .restart local v2    # "hdmiRgbRangeByte":B
    goto :goto_8

    .line 637
    .end local v2    # "hdmiRgbRangeByte":B
    :pswitch_f
    const/4 v2, 0x0

    .line 638
    .restart local v2    # "hdmiRgbRangeByte":B
    nop

    .line 650
    :goto_8
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->hdmiRgbRange(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    .end local v2    # "hdmiRgbRangeByte":B
    :cond_2e
    const-string/jumbo v2, "hdmi_rgb_range"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 654
    .end local v1    # "hdmiRgbRangeString":Ljava/lang/String;
    :cond_2f
    const-string v1, "color_space"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 655
    const-string v1, "color_space"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "colorSpaceString":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 658
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    :cond_30
    goto :goto_9

    :sswitch_10
    const-string v2, "BT2020"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x4

    goto :goto_a

    :sswitch_11
    const-string v2, "ADOBE_RGB"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x3

    goto :goto_a

    :sswitch_12
    const-string v2, "AUTO"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v9

    goto :goto_a

    :sswitch_13
    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x6

    goto :goto_a

    :sswitch_14
    const-string v2, "DCI"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v7

    goto :goto_a

    :sswitch_15
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x5

    goto :goto_a

    :sswitch_16
    const-string v2, "S_RGB_BT_709"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    move v2, v6

    goto :goto_a

    :goto_9
    move v2, v8

    :goto_a
    packed-switch v2, :pswitch_data_3

    .line 681
    const/4 v2, 0x6

    .line 682
    .local v2, "colorSpaceByte":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid color_space string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 678
    .end local v2    # "colorSpaceByte":B
    :pswitch_10
    const/4 v2, 0x6

    .line 679
    .restart local v2    # "colorSpaceByte":B
    goto :goto_b

    .line 675
    .end local v2    # "colorSpaceByte":B
    :pswitch_11
    const/4 v2, 0x5

    .line 676
    .restart local v2    # "colorSpaceByte":B
    goto :goto_b

    .line 672
    .end local v2    # "colorSpaceByte":B
    :pswitch_12
    const/4 v2, 0x4

    .line 673
    .restart local v2    # "colorSpaceByte":B
    goto :goto_b

    .line 669
    .end local v2    # "colorSpaceByte":B
    :pswitch_13
    const/4 v2, 0x3

    .line 670
    .restart local v2    # "colorSpaceByte":B
    goto :goto_b

    .line 666
    .end local v2    # "colorSpaceByte":B
    :pswitch_14
    const/4 v2, 0x2

    .line 667
    .restart local v2    # "colorSpaceByte":B
    goto :goto_b

    .line 663
    .end local v2    # "colorSpaceByte":B
    :pswitch_15
    const/4 v2, 0x1

    .line 664
    .restart local v2    # "colorSpaceByte":B
    goto :goto_b

    .line 660
    .end local v2    # "colorSpaceByte":B
    :pswitch_16
    const/4 v2, 0x0

    .line 661
    .restart local v2    # "colorSpaceByte":B
    nop

    .line 685
    :goto_b
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorSpace(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    .end local v2    # "colorSpaceByte":B
    :cond_31
    const-string v2, "color_space"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 689
    .end local v1    # "colorSpaceString":Ljava/lang/String;
    :cond_32
    const-string/jumbo v1, "panel_init_max_lumince_nits"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 690
    nop

    .line 691
    const-string/jumbo v1, "panel_init_max_lumince_nits"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 690
    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->panelInitMaxLuminceNits(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    const-string/jumbo v1, "panel_init_max_lumince_nits"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 694
    :cond_33
    const-string/jumbo v1, "panel_init_max_lumince_valid"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 695
    nop

    .line 696
    const-string/jumbo v1, "panel_init_max_lumince_valid"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 695
    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->panelInitMaxLuminceValid(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    const-string/jumbo v1, "panel_init_max_lumince_valid"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 699
    :cond_34
    const-string v1, "gamma"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 700
    const-string v1, "gamma"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "gammaString":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 703
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4

    :cond_35
    goto :goto_c

    :sswitch_17
    const-string v2, "BRIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v7

    goto :goto_d

    :sswitch_18
    const-string v2, "DARK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v9

    goto :goto_d

    :sswitch_19
    const-string v2, "MIDDLE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    move v2, v6

    goto :goto_d

    :goto_c
    move v2, v8

    :goto_d
    packed-switch v2, :pswitch_data_4

    .line 714
    const/4 v2, 0x0

    .line 715
    .local v2, "gammaByte":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid gamma string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 711
    .end local v2    # "gammaByte":B
    :pswitch_17
    const/4 v2, 0x2

    .line 712
    .restart local v2    # "gammaByte":B
    goto :goto_e

    .line 708
    .end local v2    # "gammaByte":B
    :pswitch_18
    const/4 v2, 0x1

    .line 709
    .restart local v2    # "gammaByte":B
    goto :goto_e

    .line 705
    .end local v2    # "gammaByte":B
    :pswitch_19
    const/4 v2, 0x0

    .line 706
    .restart local v2    # "gammaByte":B
    nop

    .line 717
    :goto_e
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->gamma(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v2    # "gammaByte":B
    :cond_36
    const-string v2, "gamma"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 721
    .end local v1    # "gammaString":Ljava/lang/String;
    :cond_37
    const-string v1, "color_temperature_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 722
    const-string v1, "color_temperature_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperatureRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    const-string v1, "color_temperature_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 726
    :cond_38
    const-string v1, "color_temperature_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 727
    const-string v1, "color_temperature_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperatureGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    const-string v1, "color_temperature_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 731
    :cond_39
    const-string v1, "color_temperature_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 732
    const-string v1, "color_temperature_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTemperatureBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    const-string v1, "color_temperature_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 736
    :cond_3a
    const-string v1, "eleven_point_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 737
    const-string v1, "eleven_point_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->elevenPointRed([I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    const-string v1, "eleven_point_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 741
    :cond_3b
    const-string v1, "eleven_point_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 742
    const-string v1, "eleven_point_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->elevenPointGreen([I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    const-string v1, "eleven_point_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 746
    :cond_3c
    const-string v1, "eleven_point_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 747
    const-string v1, "eleven_point_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->elevenPointBlue([I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    const-string v1, "eleven_point_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 751
    :cond_3d
    const-string/jumbo v1, "low_blue_light"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 752
    const-string/jumbo v1, "low_blue_light"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "lowBlueLightString":Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 754
    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v2

    .line 755
    .local v2, "lowBlueLightByte":B
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->lowBlueLight(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    .end local v2    # "lowBlueLightByte":B
    :cond_3e
    const-string/jumbo v2, "low_blue_light"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 759
    .end local v1    # "lowBlueLightString":Ljava/lang/String;
    :cond_3f
    const-string/jumbo v1, "ld_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 760
    const-string/jumbo v1, "ld_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "ldModeString":Ljava/lang/String;
    if-eqz v1, :cond_40

    .line 762
    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityUtils;->mapQualityLevel(Ljava/lang/String;)B

    move-result v2

    .line 763
    .local v2, "ldModeByte":B
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->LdMode(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    .end local v2    # "ldModeByte":B
    :cond_40
    const-string/jumbo v2, "ld_mode"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 767
    .end local v1    # "ldModeString":Ljava/lang/String;
    :cond_41
    const-string/jumbo v1, "osd_red_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 768
    const-string/jumbo v1, "osd_red_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdRedGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-string/jumbo v1, "osd_red_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 772
    :cond_42
    const-string/jumbo v1, "osd_green_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 773
    const-string/jumbo v1, "osd_green_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdGreenGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    const-string/jumbo v1, "osd_green_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 777
    :cond_43
    const-string/jumbo v1, "osd_blue_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 778
    const-string/jumbo v1, "osd_blue_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdBlueGain(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    const-string/jumbo v1, "osd_blue_gain"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 782
    :cond_44
    const-string/jumbo v1, "osd_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 783
    const-string/jumbo v1, "osd_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdRedOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    const-string/jumbo v1, "osd_red_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 787
    :cond_45
    const-string/jumbo v1, "osd_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 788
    const-string/jumbo v1, "osd_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdGreenOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    const-string/jumbo v1, "osd_green_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 792
    :cond_46
    const-string/jumbo v1, "osd_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 793
    const-string/jumbo v1, "osd_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdBlueOffset(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    const-string/jumbo v1, "osd_blue_offset"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 797
    :cond_47
    const-string/jumbo v1, "osd_hue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 798
    const-string/jumbo v1, "osd_hue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdHue(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    const-string/jumbo v1, "osd_hue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 802
    :cond_48
    const-string/jumbo v1, "osd_saturation"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 803
    const-string/jumbo v1, "osd_saturation"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdSaturation(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    const-string/jumbo v1, "osd_saturation"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 807
    :cond_49
    const-string/jumbo v1, "osd_contrast"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 808
    const-string/jumbo v1, "osd_contrast"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->osdContrast(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    const-string/jumbo v1, "osd_contrast"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 812
    :cond_4a
    const-string v1, "color_tuner_switch"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 813
    const-string v1, "color_tuner_switch"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSwitch(Z)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    const-string v1, "color_tuner_switch"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 817
    :cond_4b
    const-string v1, "color_tuner_hue_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 818
    const-string v1, "color_tuner_hue_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    const-string v1, "color_tuner_hue_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 822
    :cond_4c
    const-string v1, "color_tuner_hue_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 823
    const-string v1, "color_tuner_hue_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v1, "color_tuner_hue_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 827
    :cond_4d
    const-string v1, "color_tuner_hue_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 828
    const-string v1, "color_tuner_hue_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    const-string v1, "color_tuner_hue_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 832
    :cond_4e
    const-string v1, "color_tuner_hue_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 833
    const-string v1, "color_tuner_hue_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    const-string v1, "color_tuner_hue_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 837
    :cond_4f
    const-string v1, "color_tuner_hue_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 838
    const-string v1, "color_tuner_hue_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    const-string v1, "color_tuner_hue_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 842
    :cond_50
    const-string v1, "color_tuner_hue_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 843
    const-string v1, "color_tuner_hue_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    const-string v1, "color_tuner_hue_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 847
    :cond_51
    const-string v1, "color_tuner_hue_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 848
    const-string v1, "color_tuner_hue_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerHueFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    const-string v1, "color_tuner_hue_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 852
    :cond_52
    const-string v1, "color_tuner_saturation_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 853
    const-string v1, "color_tuner_saturation_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    const-string v1, "color_tuner_saturation_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 857
    :cond_53
    const-string v1, "color_tuner_saturation_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 858
    const-string v1, "color_tuner_saturation_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    const-string v1, "color_tuner_saturation_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 862
    :cond_54
    const-string v1, "color_tuner_saturation_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 863
    const-string v1, "color_tuner_saturation_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string v1, "color_tuner_saturation_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 867
    :cond_55
    const-string v1, "color_tuner_saturation_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 868
    const-string v1, "color_tuner_saturation_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    const-string v1, "color_tuner_saturation_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 872
    :cond_56
    const-string v1, "color_tuner_saturation_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 873
    const-string v1, "color_tuner_saturation_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const-string v1, "color_tuner_saturation_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 877
    :cond_57
    const-string v1, "color_tuner_saturation_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 878
    const-string v1, "color_tuner_saturation_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    const-string v1, "color_tuner_saturation_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 882
    :cond_58
    const-string v1, "color_tuner_saturation_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 883
    const-string v1, "color_tuner_saturation_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerSaturationFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    const-string v1, "color_tuner_saturation_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 887
    :cond_59
    const-string v1, "color_tuner_luminance_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 888
    const-string v1, "color_tuner_luminance_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceRed(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    const-string v1, "color_tuner_luminance_red"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 892
    :cond_5a
    const-string v1, "color_tuner_luminance_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 893
    const-string v1, "color_tuner_luminance_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceGreen(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 895
    const-string v1, "color_tuner_luminance_green"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 897
    :cond_5b
    const-string v1, "color_tuner_luminance_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 898
    const-string v1, "color_tuner_luminance_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceBlue(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    const-string v1, "color_tuner_luminance_blue"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 902
    :cond_5c
    const-string v1, "color_tuner_luminance_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 903
    const-string v1, "color_tuner_luminance_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceCyan(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    const-string v1, "color_tuner_luminance_cyan"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 907
    :cond_5d
    const-string v1, "color_tuner_luminance_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 908
    const-string v1, "color_tuner_luminance_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceMagenta(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    const-string v1, "color_tuner_luminance_magenta"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 912
    :cond_5e
    const-string v1, "color_tuner_luminance_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 913
    const-string v1, "color_tuner_luminance_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceYellow(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    const-string v1, "color_tuner_luminance_yellow"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 917
    :cond_5f
    const-string v1, "color_tuner_luminance_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 918
    const-string v1, "color_tuner_luminance_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/hardware/tv/mediaquality/PictureParameter;->colorTunerLuminanceFlesh(I)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    const-string v1, "color_tuner_luminance_flesh"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 922
    :cond_60
    const-string/jumbo v1, "picture_quality_event_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 923
    const-string/jumbo v1, "picture_quality_event_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, "pictureQualityEventTypeString":Ljava/lang/String;
    if-eqz v1, :cond_62

    .line 927
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5

    :cond_61
    goto :goto_f

    :sswitch_1a
    const-string v2, "DOLBY_IQ_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v6, 0x6

    goto :goto_10

    :sswitch_1b
    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    move v6, v9

    goto :goto_10

    :sswitch_1c
    const-string v2, "BBD_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_10

    :sswitch_1d
    const-string v2, "VIDEO_DELAY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    move v6, v7

    goto :goto_10

    :sswitch_1e
    const-string v2, "EXTRA_FRAME_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v6, 0x5

    goto :goto_10

    :sswitch_1f
    const-string v2, "CAPTUREPOINT_INFO_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v6, 0x3

    goto :goto_10

    :sswitch_20
    const-string v2, "DOLBY_APO_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v6, 0x7

    goto :goto_10

    :sswitch_21
    const-string v2, "VIDEOPATH_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v6, 0x4

    goto :goto_10

    :goto_f
    move v6, v8

    :goto_10
    packed-switch v6, :pswitch_data_5

    .line 954
    const/4 v2, 0x0

    .line 955
    .local v2, "pictureQualityEventTypeByte":B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid event type string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 951
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_1a
    const/4 v2, 0x7

    .line 952
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 948
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_1b
    const/4 v2, 0x6

    .line 949
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 945
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_1c
    const/4 v2, 0x5

    .line 946
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 942
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_1d
    const/4 v2, 0x4

    .line 943
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 938
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_1e
    const/4 v2, 0x3

    .line 940
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 935
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_1f
    const/4 v2, 0x2

    .line 936
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 932
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_20
    const/4 v2, 0x1

    .line 933
    .restart local v2    # "pictureQualityEventTypeByte":B
    goto :goto_11

    .line 929
    .end local v2    # "pictureQualityEventTypeByte":B
    :pswitch_21
    const/4 v2, 0x0

    .line 930
    .restart local v2    # "pictureQualityEventTypeByte":B
    nop

    .line 958
    :goto_11
    nop

    .line 959
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/PictureParameter;->pictureQualityEventType(B)Landroid/hardware/tv/mediaquality/PictureParameter;

    move-result-object v3

    .line 958
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    .end local v2    # "pictureQualityEventTypeByte":B
    :cond_62
    const-string/jumbo v2, "picture_quality_event_type"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 963
    .end local v1    # "pictureQualityEventTypeString":Ljava/lang/String;
    :cond_63
    new-array v1, v9, [Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/tv/mediaquality/PictureParameter;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x551c7b61 -> :sswitch_9
        -0x551c5216 -> :sswitch_8
        -0x3915f7d6 -> :sswitch_7
        -0xac75ae4 -> :sswitch_6
        -0x525f9d8 -> :sswitch_5
        0xed2f2f8 -> :sswitch_4
        0xedb2f7a -> :sswitch_3
        0xedbd634 -> :sswitch_2
        0x24a9f2ec -> :sswitch_1
        0x40fd0e64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1ed5af -> :sswitch_c
        0x211a8f -> :sswitch_b
        0x354ae17a -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x1ed5af -> :sswitch_f
        0x211a8f -> :sswitch_e
        0x354ae17a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x31ee5af -> :sswitch_16
        0x9df -> :sswitch_15
        0x107aa -> :sswitch_14
        0x1314f -> :sswitch_13
        0x1ed5af -> :sswitch_12
        0x4d4fe3d -> :sswitch_11
        0x7557044e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7876326b -> :sswitch_19
        0x1fe776 -> :sswitch_18
        0x7545a2fa -> :sswitch_17
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x6da12e31 -> :sswitch_21
        -0x5eeba3ca -> :sswitch_20
        -0x4f96a654 -> :sswitch_1f
        -0x1f9a992f -> :sswitch_1e
        -0x10760890 -> :sswitch_1d
        -0x24b9348 -> :sswitch_1c
        0x24a738 -> :sswitch_1b
        0x4cc0060 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public static convertPersistableBundleToSoundParameterList(Landroid/os/PersistableBundle;)[Landroid/hardware/tv/mediaquality/SoundParameter;
    .locals 5
    .param p0, "params"    # Landroid/os/PersistableBundle;

    .line 1068
    if-nez p0, :cond_0

    .line 1069
    const/4 v0, 0x0

    return-object v0

    .line 1072
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v0, "soundParams":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/tv/mediaquality/SoundParameter;>;"
    const-string v1, "balance"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->balance(I)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1078
    :cond_1
    const-string v1, "bass"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1079
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->bass(I)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1082
    :cond_2
    const-string/jumbo v1, "treble"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1083
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->treble(I)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1087
    :cond_3
    const-string/jumbo v1, "surround_sound"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1088
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->surroundSoundEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1092
    :cond_4
    const-string/jumbo v1, "speakers"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1093
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->speakersEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1097
    :cond_5
    const-string/jumbo v1, "speakers_delay_millis"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1098
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->speakersDelayMs(I)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1102
    :cond_6
    const-string v1, "auto_volume_control"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1103
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->autoVolumeControl(Z)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1107
    :cond_7
    const-string v1, "dts_drc"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1108
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->dtsDrc(Z)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1110
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1112
    :cond_8
    const-string v1, "digital_output_delay_millis"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1113
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->surroundSoundEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1117
    :cond_9
    const-string v1, "earc"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1118
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->enhancedAudioReturnChannelEnabled(Z)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1122
    :cond_a
    const-string v1, "down_mix_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1123
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->downmixMode(B)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1127
    :cond_b
    const-string/jumbo v1, "sound_style"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1128
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->soundStyle(B)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1132
    :cond_c
    const-string v1, "digital_output_mode"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1133
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->digitalOutput(B)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1137
    :cond_d
    const-string v1, "dialogue_enhancer"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1138
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->dolbyDialogueEnhancer(B)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1143
    :cond_e
    new-instance v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    invoke-direct {v1}, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;-><init>()V

    .line 1144
    .local v1, "dab":Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;
    const-string v2, "dolby_audio_processing_sound_mode"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1145
    nop

    .line 1146
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->soundMode:B

    .line 1147
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1149
    :cond_f
    const-string v2, "dolby_audio_processing_volume_leveler"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1150
    nop

    .line 1151
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->volumeLeveler:Z

    .line 1152
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1154
    :cond_10
    const-string v2, "dolby_audio_processing_surround_virtualizer"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1156
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->surroundVirtualizer:Z

    .line 1158
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1160
    :cond_11
    const-string v2, "dolby_audio_processing_dolby_atmos"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1161
    nop

    .line 1162
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->dolbyAtmos:Z

    .line 1163
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1165
    :cond_12
    invoke-static {v1}, Landroid/hardware/tv/mediaquality/SoundParameter;->dolbyAudioProcessing(Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    new-instance v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    invoke-direct {v2}, Landroid/hardware/tv/mediaquality/DtsVirtualX;-><init>()V

    .line 1168
    .local v2, "dts":Landroid/hardware/tv/mediaquality/DtsVirtualX;
    const-string v3, "dts_virtual_x_tbhdx"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1169
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1170
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1173
    :cond_13
    const-string v3, "dts_virtual_x_limiter"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1174
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1175
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1177
    :cond_14
    const-string v3, "dts_virtual_x_tru_surround_x"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1178
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1179
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1181
    :cond_15
    const-string v3, "dts_virtual_x_tru_volume_hd"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1182
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1183
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1185
    :cond_16
    const-string v3, "dts_virtual_x_dialog_clarity"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1186
    const-string v3, "dts_virtual_x_dialog_clarity"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1187
    const-string v3, "dts_virtual_x_dialog_clarity"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1189
    :cond_17
    const-string v3, "dts_virtual_x_definition"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1190
    const-string v3, "dts_virtual_x_definition"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1191
    const-string v3, "dts_virtual_x_definition"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1193
    :cond_18
    const-string v3, "dts_virtual_x_height"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1194
    const-string v3, "dts_virtual_x_height"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    .line 1195
    const-string v3, "dts_virtual_x_height"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 1197
    :cond_19
    invoke-static {v2}, Landroid/hardware/tv/mediaquality/SoundParameter;->dtsVirtualX(Landroid/hardware/tv/mediaquality/DtsVirtualX;)Landroid/hardware/tv/mediaquality/SoundParameter;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    const/4 v3, 0x0

    new-array v3, v3, [Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/tv/mediaquality/SoundParameter;

    return-object v3
.end method

.method public static convertPictureParameterListToPersistableBundle([Landroid/hardware/tv/mediaquality/PictureParameter;)Landroid/os/PersistableBundle;
    .locals 10
    .param p0, "parameters"    # [Landroid/hardware/tv/mediaquality/PictureParameter;

    .line 80
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 81
    .local v0, "bundle":Landroid/os/PersistableBundle;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_50

    aget-object v3, p0, v2

    .line 82
    .local v3, "pp":Landroid/hardware/tv/mediaquality/PictureParameter;
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBrightness()F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 83
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBrightness()F

    move-result v4

    float-to-long v4, v4

    const-string v6, "brightness"

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 85
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getContrast()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 86
    const-string v4, "contrast"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getContrast()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSharpness()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 89
    const-string/jumbo v4, "sharpness"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSharpness()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSaturation()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 92
    const-string/jumbo v4, "saturation"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getSaturation()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 94
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHue()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 95
    const-string/jumbo v4, "hue"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHue()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    :cond_4
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBrightness()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 98
    nop

    .line 99
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBrightness()I

    move-result v4

    .line 98
    const-string v6, "color_tuner_brightness"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturation()I

    move-result v4

    if-le v4, v5, :cond_6

    .line 102
    nop

    .line 103
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturation()I

    move-result v4

    .line 102
    const-string v6, "color_tuner_saturation"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    :cond_6
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHue()I

    move-result v4

    if-le v4, v5, :cond_7

    .line 106
    const-string v4, "color_tuner_hue"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHue()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 108
    :cond_7
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedOffset()I

    move-result v4

    if-le v4, v5, :cond_8

    .line 109
    nop

    .line 110
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedOffset()I

    move-result v4

    .line 109
    const-string v6, "color_tuner_red_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    :cond_8
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenOffset()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 113
    nop

    .line 114
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenOffset()I

    move-result v4

    .line 113
    const-string v6, "color_tuner_green_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :cond_9
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueOffset()I

    move-result v4

    if-le v4, v5, :cond_a

    .line 117
    nop

    .line 118
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueOffset()I

    move-result v4

    .line 117
    const-string v6, "color_tuner_blue_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    :cond_a
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedGain()I

    move-result v4

    const-string v6, "color_tuner_red_gain"

    if-le v4, v5, :cond_b

    .line 121
    nop

    .line 122
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerRedGain()I

    move-result v4

    .line 121
    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    :cond_b
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenGain()I

    move-result v4

    const-string v7, "color_tuner_green_gain"

    if-le v4, v5, :cond_c

    .line 125
    nop

    .line 126
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerGreenGain()I

    move-result v4

    .line 125
    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    :cond_c
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueGain()I

    move-result v4

    const-string v8, "color_tuner_blue_gain"

    if-le v4, v5, :cond_d

    .line 129
    nop

    .line 130
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerBlueGain()I

    move-result v4

    .line 129
    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    :cond_d
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getNoiseReduction()B

    move-result v4

    if-le v4, v5, :cond_e

    .line 133
    nop

    .line 134
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getNoiseReduction()B

    move-result v4

    .line 133
    const-string/jumbo v9, "noise_reduction"

    invoke-virtual {v0, v9, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    :cond_e
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getMpegNoiseReduction()B

    move-result v4

    if-le v4, v5, :cond_f

    .line 137
    nop

    .line 138
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getMpegNoiseReduction()B

    move-result v4

    .line 137
    const-string/jumbo v9, "mpeg_noise_reduction"

    invoke-virtual {v0, v9, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_f
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFleshTone()B

    move-result v4

    if-le v4, v5, :cond_10

    .line 141
    const-string v4, "flesh_tone"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFleshTone()B

    move-result v9

    invoke-virtual {v0, v4, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    :cond_10
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDeContour()B

    move-result v4

    if-le v4, v5, :cond_11

    .line 144
    const-string v4, "decontour"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDeContour()B

    move-result v9

    invoke-virtual {v0, v4, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 146
    :cond_11
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDynamicLumaControl()B

    move-result v4

    if-le v4, v5, :cond_12

    .line 147
    nop

    .line 148
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getDynamicLumaControl()B

    move-result v4

    .line 147
    const-string v9, "dynamic_luma_control"

    invoke-virtual {v0, v9, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 150
    :cond_12
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperature()B

    move-result v4

    if-le v4, v5, :cond_13

    .line 151
    nop

    .line 152
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperature()B

    move-result v4

    .line 151
    const-string v9, "color_temperature"

    invoke-virtual {v0, v9, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 154
    :cond_13
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedGain()I

    move-result v4

    if-le v4, v5, :cond_14

    .line 155
    nop

    .line 156
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedGain()I

    move-result v4

    .line 155
    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 158
    :cond_14
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenGain()I

    move-result v4

    if-le v4, v5, :cond_15

    .line 159
    nop

    .line 160
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenGain()I

    move-result v4

    .line 159
    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 162
    :cond_15
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueGain()I

    move-result v4

    if-le v4, v5, :cond_16

    .line 163
    nop

    .line 164
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueGain()I

    move-result v4

    .line 163
    invoke-virtual {v0, v8, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 166
    :cond_16
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLevelRange()B

    move-result v4

    if-le v4, v5, :cond_17

    .line 167
    const-string/jumbo v4, "level_range"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLevelRange()B

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 169
    :cond_17
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHdmiRgbRange()B

    move-result v4

    if-le v4, v5, :cond_18

    .line 170
    const-string/jumbo v4, "hdmi_rgb_range"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getHdmiRgbRange()B

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 172
    :cond_18
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorSpace()B

    move-result v4

    if-le v4, v5, :cond_19

    .line 173
    const-string v4, "color_space"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorSpace()B

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 175
    :cond_19
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceNits()I

    move-result v4

    if-le v4, v5, :cond_1a

    .line 176
    nop

    .line 177
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceNits()I

    move-result v4

    .line 176
    const-string/jumbo v6, "panel_init_max_lumince_nits"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 179
    :cond_1a
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamma()B

    move-result v4

    if-le v4, v5, :cond_1b

    .line 180
    const-string v4, "gamma"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamma()B

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    :cond_1b
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedOffset()I

    move-result v4

    if-le v4, v5, :cond_1c

    .line 183
    nop

    .line 184
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureRedOffset()I

    move-result v4

    .line 183
    const-string v6, "color_temperature_red_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 186
    :cond_1c
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenOffset()I

    move-result v4

    if-le v4, v5, :cond_1d

    .line 187
    nop

    .line 188
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureGreenOffset()I

    move-result v4

    .line 187
    const-string v6, "color_temperature_green_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 190
    :cond_1d
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueOffset()I

    move-result v4

    if-le v4, v5, :cond_1e

    .line 191
    nop

    .line 192
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTemperatureBlueOffset()I

    move-result v4

    .line 191
    const-string v6, "color_temperature_blue_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 194
    :cond_1e
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowBlueLight()B

    move-result v4

    if-le v4, v5, :cond_1f

    .line 195
    const-string/jumbo v4, "low_blue_light"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowBlueLight()B

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 197
    :cond_1f
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLdMode()B

    move-result v4

    if-le v4, v5, :cond_20

    .line 198
    const-string/jumbo v4, "ld_mode"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLdMode()B

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 200
    :cond_20
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedGain()I

    move-result v4

    if-le v4, v5, :cond_21

    .line 201
    const-string/jumbo v4, "osd_red_gain"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedGain()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    :cond_21
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenGain()I

    move-result v4

    if-le v4, v5, :cond_22

    .line 204
    const-string/jumbo v4, "osd_green_gain"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenGain()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 206
    :cond_22
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueGain()I

    move-result v4

    if-le v4, v5, :cond_23

    .line 207
    const-string/jumbo v4, "osd_blue_gain"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueGain()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 209
    :cond_23
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedOffset()I

    move-result v4

    if-le v4, v5, :cond_24

    .line 210
    const-string/jumbo v4, "osd_red_offset"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdRedOffset()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 212
    :cond_24
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenOffset()I

    move-result v4

    if-le v4, v5, :cond_25

    .line 213
    nop

    .line 214
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdGreenOffset()I

    move-result v4

    .line 213
    const-string/jumbo v6, "osd_green_offset"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    :cond_25
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueOffset()I

    move-result v4

    if-le v4, v5, :cond_26

    .line 217
    const-string/jumbo v4, "osd_blue_offset"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdBlueOffset()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 219
    :cond_26
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdHue()I

    move-result v4

    if-le v4, v5, :cond_27

    .line 220
    const-string/jumbo v4, "osd_hue"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdHue()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 222
    :cond_27
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdSaturation()I

    move-result v4

    if-le v4, v5, :cond_28

    .line 223
    const-string/jumbo v4, "osd_saturation"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdSaturation()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 225
    :cond_28
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdContrast()I

    move-result v4

    if-le v4, v5, :cond_29

    .line 226
    const-string/jumbo v4, "osd_contrast"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getOsdContrast()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    :cond_29
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueRed()I

    move-result v4

    if-le v4, v5, :cond_2a

    .line 229
    nop

    .line 230
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueRed()I

    move-result v4

    .line 229
    const-string v6, "color_tuner_hue_red"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    :cond_2a
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueGreen()I

    move-result v4

    if-le v4, v5, :cond_2b

    .line 233
    nop

    .line 234
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueGreen()I

    move-result v4

    .line 233
    const-string v6, "color_tuner_hue_green"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 236
    :cond_2b
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueBlue()I

    move-result v4

    if-le v4, v5, :cond_2c

    .line 237
    nop

    .line 238
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueBlue()I

    move-result v4

    .line 237
    const-string v6, "color_tuner_hue_blue"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 240
    :cond_2c
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueCyan()I

    move-result v4

    if-le v4, v5, :cond_2d

    .line 241
    nop

    .line 242
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueCyan()I

    move-result v4

    .line 241
    const-string v6, "color_tuner_hue_cyan"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 244
    :cond_2d
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueMagenta()I

    move-result v4

    if-le v4, v5, :cond_2e

    .line 245
    nop

    .line 246
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueMagenta()I

    move-result v4

    .line 245
    const-string v6, "color_tuner_hue_magenta"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 248
    :cond_2e
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueYellow()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 249
    nop

    .line 250
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueYellow()I

    move-result v4

    .line 249
    const-string v6, "color_tuner_hue_yellow"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 252
    :cond_2f
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueFlesh()I

    move-result v4

    if-le v4, v5, :cond_30

    .line 253
    nop

    .line 254
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerHueFlesh()I

    move-result v4

    .line 253
    const-string v6, "color_tuner_hue_flesh"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_30
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationRed()I

    move-result v4

    if-le v4, v5, :cond_31

    .line 257
    nop

    .line 258
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationRed()I

    move-result v4

    .line 257
    const-string v6, "color_tuner_saturation_red"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    :cond_31
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationGreen()I

    move-result v4

    if-le v4, v5, :cond_32

    .line 261
    nop

    .line 262
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationGreen()I

    move-result v4

    .line 261
    const-string v6, "color_tuner_saturation_green"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 264
    :cond_32
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationBlue()I

    move-result v4

    if-le v4, v5, :cond_33

    .line 265
    nop

    .line 266
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationBlue()I

    move-result v4

    .line 265
    const-string v6, "color_tuner_saturation_blue"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 268
    :cond_33
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationCyan()I

    move-result v4

    if-le v4, v5, :cond_34

    .line 269
    nop

    .line 270
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationCyan()I

    move-result v4

    .line 269
    const-string v6, "color_tuner_saturation_cyan"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 272
    :cond_34
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationMagenta()I

    move-result v4

    if-le v4, v5, :cond_35

    .line 273
    nop

    .line 274
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationMagenta()I

    move-result v4

    .line 273
    const-string v6, "color_tuner_saturation_magenta"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 276
    :cond_35
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationYellow()I

    move-result v4

    if-le v4, v5, :cond_36

    .line 277
    nop

    .line 278
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationYellow()I

    move-result v4

    .line 277
    const-string v6, "color_tuner_saturation_yellow"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 280
    :cond_36
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationFlesh()I

    move-result v4

    if-le v4, v5, :cond_37

    .line 281
    nop

    .line 282
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSaturationFlesh()I

    move-result v4

    .line 281
    const-string v6, "color_tuner_saturation_flesh"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 284
    :cond_37
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceRed()I

    move-result v4

    if-le v4, v5, :cond_38

    .line 285
    nop

    .line 286
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceRed()I

    move-result v4

    .line 285
    const-string v6, "color_tuner_luminance_red"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 288
    :cond_38
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceGreen()I

    move-result v4

    if-le v4, v5, :cond_39

    .line 289
    nop

    .line 290
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceGreen()I

    move-result v4

    .line 289
    const-string v6, "color_tuner_luminance_green"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 292
    :cond_39
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceBlue()I

    move-result v4

    if-le v4, v5, :cond_3a

    .line 293
    nop

    .line 294
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceBlue()I

    move-result v4

    .line 293
    const-string v6, "color_tuner_luminance_blue"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 296
    :cond_3a
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceCyan()I

    move-result v4

    if-le v4, v5, :cond_3b

    .line 297
    nop

    .line 298
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceCyan()I

    move-result v4

    .line 297
    const-string v6, "color_tuner_luminance_cyan"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 300
    :cond_3b
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceMagenta()I

    move-result v4

    if-le v4, v5, :cond_3c

    .line 301
    nop

    .line 302
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceMagenta()I

    move-result v4

    .line 301
    const-string v6, "color_tuner_luminance_magenta"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 304
    :cond_3c
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceYellow()I

    move-result v4

    if-le v4, v5, :cond_3d

    .line 305
    nop

    .line 306
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceYellow()I

    move-result v4

    .line 305
    const-string v6, "color_tuner_luminance_yellow"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 308
    :cond_3d
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceFlesh()I

    move-result v4

    if-le v4, v5, :cond_3e

    .line 309
    nop

    .line 310
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerLuminanceFlesh()I

    move-result v4

    .line 309
    const-string v6, "color_tuner_luminance_flesh"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 312
    :cond_3e
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPictureQualityEventType()B

    move-result v4

    if-le v4, v5, :cond_3f

    .line 313
    nop

    .line 314
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPictureQualityEventType()B

    move-result v4

    .line 313
    const-string/jumbo v5, "picture_quality_event_type"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 316
    :cond_3f
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getFilmMode()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_40

    .line 317
    const-string v4, "film_mode"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    :cond_40
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getBlueStretch()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 320
    const-string v4, "blue_stretch"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    :cond_41
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTune()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 323
    const-string v4, "color_tune"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    :cond_42
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGlobeDimming()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 326
    const-string/jumbo v4, "global_dimming"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    :cond_43
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getAutoPictureQualityEnabled()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 329
    const-string v4, "auto_picture_quality_enabled"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    :cond_44
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getAutoSuperResolutionEnabled()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 332
    const-string v4, "auto_super_resolution_enabled"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    :cond_45
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getGamutMapping()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 335
    const-string v4, "gamut_mapping"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    :cond_46
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPcMode()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 338
    const-string/jumbo v4, "pc_mode"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    :cond_47
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getLowLatency()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 341
    const-string/jumbo v4, "low_latency"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    :cond_48
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getVrr()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 344
    const-string/jumbo v4, "vrr"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    :cond_49
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getCvrr()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 347
    const-string v4, "cvrr"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    :cond_4a
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getPanelInitMaxLuminceValid()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 350
    const-string/jumbo v4, "panel_init_max_lumince_valid"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    :cond_4b
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getColorTunerSwitch()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 353
    const-string v4, "color_tuner_switch"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    :cond_4c
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointRed()[I

    move-result-object v4

    const-string v5, "eleven_point_red"

    if-eqz v4, :cond_4d

    .line 356
    nop

    .line 357
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointRed()[I

    move-result-object v4

    .line 356
    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 359
    :cond_4d
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointBlue()[I

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 360
    nop

    .line 361
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointBlue()[I

    move-result-object v4

    .line 360
    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 363
    :cond_4e
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointGreen()[I

    move-result-object v4

    if-eqz v4, :cond_4f

    .line 364
    nop

    .line 365
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/PictureParameter;->getElevenPointGreen()[I

    move-result-object v4

    .line 364
    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 81
    .end local v3    # "pp":Landroid/hardware/tv/mediaquality/PictureParameter;
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 368
    :cond_50
    return-object v0
.end method

.method public static convertSoundParameterListToPersistableBundle([Landroid/hardware/tv/mediaquality/SoundParameter;)Landroid/os/PersistableBundle;
    .locals 8
    .param p0, "parameters"    # [Landroid/hardware/tv/mediaquality/SoundParameter;

    .line 971
    if-nez p0, :cond_0

    .line 972
    const/4 v0, 0x0

    return-object v0

    .line 975
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 976
    .local v0, "bundle":Landroid/os/PersistableBundle;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    .line 977
    .local v3, "sp":Landroid/hardware/tv/mediaquality/SoundParameter;
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSurroundSoundEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 978
    const-string/jumbo v4, "surround_sound"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 980
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 981
    const-string/jumbo v4, "speakers"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 983
    :cond_2
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getAutoVolumeControl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 984
    const-string v4, "auto_volume_control"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsDrc()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 987
    const-string v4, "dts_drc"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 989
    :cond_4
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSurroundSoundEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 990
    const-string v4, "digital_output_delay_millis"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getEnhancedAudioReturnChannelEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 993
    const-string v4, "earc"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 995
    :cond_6
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBalance()I

    move-result v4

    const/4 v6, -0x1

    if-le v4, v6, :cond_7

    .line 996
    const-string v4, "balance"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBalance()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 998
    :cond_7
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBass()I

    move-result v4

    if-le v4, v6, :cond_8

    .line 999
    const-string v4, "bass"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getBass()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    :cond_8
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTreble()I

    move-result v4

    if-le v4, v6, :cond_9

    .line 1002
    const-string/jumbo v4, "treble"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getTreble()I

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1004
    :cond_9
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersDelayMs()I

    move-result v4

    if-le v4, v6, :cond_a

    .line 1005
    nop

    .line 1006
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSpeakersDelayMs()I

    move-result v4

    .line 1005
    const-string/jumbo v7, "speakers_delay_millis"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    :cond_a
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDownmixMode()B

    move-result v4

    if-le v4, v6, :cond_b

    .line 1009
    const-string v4, "down_mix_mode"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDownmixMode()B

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    :cond_b
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSoundStyle()B

    move-result v4

    if-le v4, v6, :cond_c

    .line 1012
    const-string/jumbo v4, "sound_style"

    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getSoundStyle()B

    move-result v7

    invoke-virtual {v0, v4, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1014
    :cond_c
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDigitalOutput()B

    move-result v4

    if-le v4, v6, :cond_d

    .line 1015
    nop

    .line 1016
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDigitalOutput()B

    move-result v4

    .line 1015
    const-string v7, "digital_output_mode"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    :cond_d
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyDialogueEnhancer()B

    move-result v4

    if-le v4, v6, :cond_e

    .line 1019
    nop

    .line 1020
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyDialogueEnhancer()B

    move-result v4

    .line 1019
    const-string v7, "dialogue_enhancer"

    invoke-virtual {v0, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1022
    :cond_e
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    if-eqz v4, :cond_f

    .line 1023
    const-string v4, "dts_virtual_x_tbhdx"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    :cond_f
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->limiter:Z

    if-eqz v4, :cond_10

    .line 1026
    const-string v4, "dts_virtual_x_limiter"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1028
    :cond_10
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truSurroundX:Z

    if-eqz v4, :cond_11

    .line 1029
    const-string v4, "dts_virtual_x_tru_surround_x"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1031
    :cond_11
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truVolumeHd:Z

    if-eqz v4, :cond_12

    .line 1032
    const-string v4, "dts_virtual_x_tru_volume_hd"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1034
    :cond_12
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->dialogClarity:Z

    if-eqz v4, :cond_13

    .line 1035
    const-string v4, "dts_virtual_x_dialog_clarity"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1037
    :cond_13
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->definition:Z

    if-eqz v4, :cond_14

    .line 1038
    const-string v4, "dts_virtual_x_definition"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    :cond_14
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDtsVirtualX()Landroid/hardware/tv/mediaquality/DtsVirtualX;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DtsVirtualX;->height:Z

    if-eqz v4, :cond_15

    .line 1041
    const-string v4, "dts_virtual_x_height"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1043
    :cond_15
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v4

    iget-byte v4, v4, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->soundMode:B

    if-le v4, v6, :cond_16

    .line 1044
    nop

    .line 1045
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v4

    iget-byte v4, v4, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->soundMode:B

    .line 1044
    const-string v6, "dolby_audio_processing_sound_mode"

    invoke-virtual {v0, v6, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    :cond_16
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->volumeLeveler:Z

    if-eqz v4, :cond_17

    .line 1048
    const-string v4, "dolby_audio_processing_volume_leveler"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1051
    :cond_17
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->surroundVirtualizer:Z

    if-eqz v4, :cond_18

    .line 1052
    const-string v4, "dolby_audio_processing_surround_virtualizer"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    :cond_18
    invoke-virtual {v3}, Landroid/hardware/tv/mediaquality/SoundParameter;->getDolbyAudioProcessing()Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    move-result-object v4

    iget-boolean v4, v4, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->dolbyAtmos:Z

    if-eqz v4, :cond_19

    .line 1057
    const-string v4, "dolby_audio_processing_dolby_atmos"

    invoke-virtual {v0, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 976
    .end local v3    # "sp":Landroid/hardware/tv/mediaquality/SoundParameter;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1061
    :cond_1a
    return-object v0
.end method

.method public static convertToCaps(ILandroid/hardware/tv/mediaquality/ParameterRange;)Landroid/os/Bundle;
    .locals 7
    .param p0, "type"    # I
    .param p1, "range"    # Landroid/hardware/tv/mediaquality/ParameterRange;

    .line 1848
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1849
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 1852
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 1853
    const-string/jumbo v1, "max"

    const/4 v2, 0x0

    const-string/jumbo v3, "min"

    const/4 v4, 0x1

    if-nez p0, :cond_2

    .line 1854
    iget-object v5, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {v5}, Landroid/hardware/tv/mediaquality/NumberRange;->getIntMinMax()[I

    move-result-object v5

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1855
    iget-object v2, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {v2}, Landroid/hardware/tv/mediaquality/NumberRange;->getIntMinMax()[I

    move-result-object v2

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1856
    :cond_2
    const/4 v5, 0x2

    if-ne p0, v5, :cond_3

    .line 1857
    iget-object v5, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    .line 1858
    invoke-virtual {v5}, Landroid/hardware/tv/mediaquality/NumberRange;->getDoubleMinMax()[D

    move-result-object v5

    aget-wide v5, v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1857
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1859
    iget-object v2, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    .line 1860
    invoke-virtual {v2}, Landroid/hardware/tv/mediaquality/NumberRange;->getDoubleMinMax()[D

    move-result-object v2

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1859
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1861
    :cond_3
    if-ne p0, v4, :cond_4

    .line 1862
    iget-object v5, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {v5}, Landroid/hardware/tv/mediaquality/NumberRange;->getLongMinMax()[J

    move-result-object v5

    aget-wide v5, v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1863
    iget-object v2, p1, Landroid/hardware/tv/mediaquality/ParameterRange;->numRange:Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-virtual {v2}, Landroid/hardware/tv/mediaquality/NumberRange;->getLongMinMax()[J

    move-result-object v2

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1865
    :cond_4
    :goto_0
    return-object v0

    .line 1850
    :goto_1
    return-object v0
.end method

.method public static getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "dbId"    # Ljava/lang/Long;
    .param p1, "profileType"    # Ljava/lang/Integer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "inputId"    # Ljava/lang/String;
    .param p5, "params"    # Landroid/os/PersistableBundle;

    .line 1279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p0, :cond_0

    .line 1281
    const-string v1, "_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1283
    :cond_0
    if-eqz p1, :cond_1

    .line 1284
    const-string v1, "_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1286
    :cond_1
    if-eqz p2, :cond_2

    .line 1287
    const-string v1, "_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :cond_2
    if-eqz p3, :cond_3

    .line 1290
    const-string v1, "_package"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :cond_3
    if-eqz p4, :cond_4

    .line 1293
    const-string v1, "_input_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_4
    if-eqz p5, :cond_5

    .line 1296
    const-string/jumbo v1, "settings"

    invoke-static {p5}, Lcom/android/server/media/quality/MediaQualityUtils;->persistableBundleToJson(Landroid/os/PersistableBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    :cond_5
    return-object v0
.end method

.method private static getInputId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 1886
    const-string v0, "_input_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1887
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getMediaProfileColumns(Z)[Ljava/lang/String;
    .locals 6
    .param p0, "includeParams"    # Z

    .line 1305
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "_input_id"

    const-string v2, "_package"

    const-string v3, "_id"

    const-string v4, "_type"

    const-string v5, "_name"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1312
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 1313
    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static getName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 1881
    const-string v0, "_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1882
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getPackageName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 1891
    const-string v0, "_package"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1892
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getParameterName(B)Ljava/lang/String;
    .locals 3
    .param p0, "pn"    # B

    .line 1671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1672
    .local v0, "parameterNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "brightness"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "contrast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "sharpness"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1675
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "saturation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "hue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_brightness"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_red_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_green_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_blue_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_red_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_green_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_blue_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "noise_reduction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "mpeg_noise_reduction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "flesh_tone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "decontour"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "dynamic_luma_control"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "film_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "black_stretch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "blue_stretch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tune"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "global_dimming"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "auto_picture_quality_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "auto_super_resolution_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "level_range"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1720
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "gamut_mapping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1722
    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "pc_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "low_latency"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "vrr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "cvrr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "hdmi_rgb_range"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "panel_init_max_lumince_valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "gamma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature_red_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature_green_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature_blue_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature_red_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature_green_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_temperature_blue_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "eleven_point_red"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "eleven_point_green"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "eleven_point_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "low_blue_light"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "ld_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_red_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_green_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_blue_gain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_red_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_green_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_blue_offset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_hue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_saturation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "osd_contrast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_switch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_red"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_green"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_cyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_magenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_yellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_hue_flesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_red"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_green"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_cyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_magenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_yellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_saturation_flesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_red"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_green"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_cyan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_magenta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_yellow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "color_tuner_luminance_flesh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "balance"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "bass"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "treble"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "surround_sound"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "equalizer_detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "speakers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "speakers_delay_millis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "earc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "auto_volume_control"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "down_mix_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "dts_drc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "dolby_audio_processing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "dialogue_enhancer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "dts_virtual_x"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "digital_output_mode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string v2, "digital_output_delay_millis"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const-string/jumbo v2, "sound_style"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private static getSettingsString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 1896
    const-string/jumbo v0, "settings"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1897
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getTempId(Lcom/android/server/media/quality/BiMap;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/media/quality/BiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1869
    .local p0, "map":Lcom/android/server/media/quality/BiMap;, "Lcom/android/server/media/quality/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1870
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1871
    .local v1, "dbId":Ljava/lang/Long;
    :goto_0
    invoke-static {p0, v1}, Lcom/android/server/media/quality/MediaQualityUtils;->populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V

    .line 1872
    invoke-virtual {p0, v1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private static getType(Landroid/database/Cursor;)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 1876
    const-string v0, "_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1877
    .local v0, "colIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static jsonToPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 7
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 1226
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1227
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p0, :cond_6

    .line 1228
    const/4 v1, 0x0

    .line 1230
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1232
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1233
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1235
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1237
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1238
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1249
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1239
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 1240
    move-object v5, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1241
    :cond_1
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 1242
    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1243
    :cond_2
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_3

    .line 1244
    move-object v5, v4

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 1245
    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 1246
    move-object v5, v4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    :goto_1
    goto :goto_0

    .line 1233
    :cond_5
    nop

    .line 1251
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_3

    .line 1249
    :goto_2
    nop

    .line 1250
    .local v2, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1253
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_6
    :goto_3
    return-object v0
.end method

.method private static mapQualityLevel(Ljava/lang/String;)B
    .locals 5
    .param p0, "qualityLevel"    # Ljava/lang/String;

    .line 1901
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "level_medium"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "level_high"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "level_off"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "level_low"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid noise_reduction string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictureParams"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move v1, v4

    goto :goto_2

    .line 1905
    :pswitch_0
    move v1, v2

    goto :goto_2

    .line 1904
    :pswitch_1
    move v1, v3

    goto :goto_2

    .line 1903
    :pswitch_2
    goto :goto_2

    .line 1902
    :pswitch_3
    move v1, v4

    .line 1901
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b2f3e7 -> :sswitch_3
        -0x62b2e9cc -> :sswitch_2
        0xc528d7d -> :sswitch_1
        0x4a33b490 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static persistableBundleToJson(Landroid/os/PersistableBundle;)Ljava/lang/String;
    .locals 7
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 1203
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1204
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1205
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1207
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1208
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 1218
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1209
    :cond_0
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1210
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 1211
    :cond_1
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 1212
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 1213
    :cond_2
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 1214
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 1215
    :cond_3
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 1216
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :cond_4
    :goto_1
    goto :goto_3

    .line 1218
    :goto_2
    nop

    .line 1219
    .local v4, "e":Lorg/json/JSONException;
    const-string v5, "MediaQualityUtils"

    const-string v6, "Unable to serialize "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_3
    goto :goto_0

    .line 1222
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static populateTempIdMap(Lcom/android/server/media/quality/BiMap;Ljava/lang/Long;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/media/quality/BiMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 1260
    .local p0, "map":Lcom/android/server/media/quality/BiMap;, "Lcom/android/server/media/quality/BiMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1262
    const/4 v0, 0x0

    .line 1263
    .local v0, "attempts":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1264
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/media/quality/BiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1266
    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/quality/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1267
    return-void

    .line 1269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1272
    .end local v0    # "attempts":I
    .end local v1    # "uuid":Ljava/lang/String;
    :cond_1
    return-void
.end method
