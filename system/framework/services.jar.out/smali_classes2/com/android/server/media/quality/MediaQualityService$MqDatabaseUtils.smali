.class final Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;
.super Ljava/lang/Object;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MqDatabaseUtils"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method static bridge synthetic -$$Nest$mgetCursorAfterQuerying(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getPictureProfile(Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getPictureProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getSoundProfile(Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSoundProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getSoundProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1479
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1480
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method

.method private getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1475
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "columns":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v2, "table":Ljava/lang/String;
    .local v3, "columns":[Ljava/lang/String;
    .local v4, "selection":Ljava/lang/String;
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private getPictureProfile(Ljava/lang/Long;)Landroid/media/quality/PictureProfile;
    .locals 1
    .param p1, "dbId"    # Ljava/lang/Long;

    .line 1393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getPictureProfile(Ljava/lang/Long;Z)Landroid/media/quality/PictureProfile;

    move-result-object v0

    return-object v0
.end method

.method private getPictureProfile(Ljava/lang/Long;Z)Landroid/media/quality/PictureProfile;
    .locals 11
    .param p1, "dbId"    # Ljava/lang/Long;
    .param p2, "includeParams"    # Z

    .line 1397
    const-string v0, "_id = ?"

    .line 1398
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "selectionArguments":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    .line 1402
    invoke-static {p2}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v2

    .line 1400
    const-string/jumbo v3, "picture_quality"

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1404
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    .local v4, "count":I
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1406
    nop

    .line 1417
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1406
    return-object v5

    .line 1408
    :cond_0
    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 1409
    :try_start_1
    const-string v6, "MediaQualityService"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%d entries found for id=%d in %s. Should only ever be 0 or 1."

    .line 1411
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v10}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    filled-new-array {v8, v9, p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1409
    invoke-static {v7, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    nop

    .line 1417
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1412
    return-object v5

    .line 1400
    .end local v4    # "count":I
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1414
    .restart local v4    # "count":I
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1415
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1417
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1415
    return-object v3

    .line 1400
    .end local v4    # "count":I
    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
.end method

.method private getPictureProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/PictureProfile;",
            ">;"
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v0, "picture_quality"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1425
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    .local v1, "pictureProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1427
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToPictureProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/PictureProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1422
    .end local v1    # "pictureProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1430
    .restart local v1    # "pictureProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :cond_0
    nop

    .line 1431
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1430
    return-object v1

    .line 1422
    .end local v1    # "pictureProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/PictureProfile;>;"
    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method

.method private getSoundProfile(Ljava/lang/Long;)Landroid/media/quality/SoundProfile;
    .locals 11
    .param p1, "dbId"    # Ljava/lang/Long;

    .line 1435
    const-string v0, "_id = ?"

    .line 1436
    .local v0, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, "selectionArguments":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    .line 1440
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v3

    .line 1438
    const-string/jumbo v4, "sound_quality"

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1442
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    .local v3, "count":I
    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1444
    nop

    .line 1455
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1444
    return-object v5

    .line 1446
    :cond_0
    const/4 v6, 0x1

    if-le v3, v6, :cond_1

    .line 1447
    :try_start_1
    const-string v6, "MediaQualityService"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%d entries found for id=%s in %s. Should only ever be 0 or 1."

    .line 1448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v10}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    filled-new-array {v8, v9, p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 1447
    invoke-static {v7, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    nop

    .line 1455
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1450
    return-object v5

    .line 1438
    .end local v3    # "count":I
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1452
    .restart local v3    # "count":I
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1453
    iget-object v4, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1455
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1453
    return-object v4

    .line 1438
    .end local v3    # "count":I
    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v3
.end method

.method private getSoundProfilesBasedOnConditions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/quality/SoundProfile;",
            ">;"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;

    const-string/jumbo v1, "sound_quality"

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->getCursorAfterQuerying(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1463
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    .local v1, "soundProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1465
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/media/quality/MediaQualityUtils;->convertCursorToSoundProfileWithTempId(Landroid/database/Cursor;Lcom/android/server/media/quality/BiMap;)Landroid/media/quality/SoundProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1460
    .end local v1    # "soundProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1468
    .restart local v1    # "soundProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :cond_0
    nop

    .line 1469
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1468
    return-object v1

    .line 1460
    .end local v1    # "soundProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/media/quality/SoundProfile;>;"
    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v1
.end method
