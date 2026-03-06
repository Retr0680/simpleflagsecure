.class Lcom/android/server/appop/DiscreteOpsDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DiscreteOpsDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;,
        Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;,
        Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;
    }
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "app_op_history.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DiscreteOpsDbHelper"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseFile"    # Ljava/io/File;

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;

    invoke-direct {v5}, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 51
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    .line 52
    return-void
.end method

.method private bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteRawStatement;
    .param p2, "index"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 137
    if-nez p3, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    .line 142
    :goto_0
    return-void
.end method

.method private buildSql(Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 4
    .param p2, "orderByColumn"    # Ljava/lang/String;
    .param p3, "ascending"    # Z
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;",
            ">;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 260
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT DISTINCT uid,package_name,device_id,op_code,attribution_tag,access_time,access_duration,uid_state,op_flags,attribution_flags,chain_id FROM app_op_accesses"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "sql":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 264
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 265
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    invoke-virtual {v3}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 267
    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    .line 273
    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    if-eqz p3, :cond_2

    const-string v1, " ASC "

    goto :goto_1

    :cond_2
    const-string v1, " DESC "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_3
    if-lez p4, :cond_4

    .line 277
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getDatabaseFile()Ljava/io/File;
    .locals 4

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_op_history.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .locals 2

    .line 55
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    .line 56
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method private prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;
    .locals 9
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "requestFilters"    # I
    .param p6, "uid"    # I
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "opCodes"    # Landroid/util/IntArray;
    .param p10, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/IntArray;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;",
            ">;"
        }
    .end annotation

    .line 292
    move-object/from16 v0, p9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;>;"
    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 295
    new-instance v4, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v5, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->BEGIN_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 298
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->END_TIME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    if-eqz p10, :cond_2

    .line 301
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_FLAGS:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    if-eqz p5, :cond_9

    .line 305
    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_3

    .line 306
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->PACKAGE_NAME:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    move-object/from16 v4, p7

    invoke-direct {v2, v3, v4}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_3
    move-object/from16 v4, p7

    .line 308
    :goto_0
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_4

    .line 309
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->UID:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_4
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_5

    .line 313
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->ATTR_TAG:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    move-object/from16 v5, p8

    invoke-direct {v2, v3, v5}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_5
    move-object/from16 v5, p8

    .line 316
    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 317
    new-instance v2, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v3, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_EQUAL:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 318
    :cond_6
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-le v3, v2, :cond_a

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v2, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    .line 321
    .local v3, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_8

    .line 322
    invoke-virtual {v0, v6}, Landroid/util/IntArray;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v7, v3, -0x1

    if-ge v6, v7, :cond_7

    .line 324
    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    nop

    .line 327
    .end local v6    # "i":I
    new-instance v6, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    sget-object v7, Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;->OP_CODE_IN:Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;-><init>(Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 304
    .end local v2    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "size":I
    :cond_9
    move-object/from16 v4, p7

    move-object/from16 v5, p8

    .line 330
    :cond_a
    :goto_3
    return-object v1
.end method


# virtual methods
.method execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/DiscreteOpsDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 179
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_0

    .line 181
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 183
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    goto :goto_2

    .line 185
    :goto_1
    nop

    .line 186
    .local v0, "exception":Landroid/database/sqlite/SQLiteFullException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t exec sql command, disk is full. Discrete ops db file size (bytes) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    const-string v2, "DiscreteOpsDbHelper"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "exception":Landroid/database/sqlite/SQLiteFullException;
    :goto_2
    return-void
.end method

.method getAllDiscreteOps(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 395
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 396
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    .line 397
    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    .line 398
    .local v4, "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v0

    move v6, v0

    .line 400
    .local v6, "uid":I
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v9

    .line 402
    .local v9, "deviceId":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v10

    .line 403
    .local v10, "opCode":I
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "attributionTag":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v16

    .line 405
    .local v16, "accessTime":J
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v18

    .line 406
    .local v18, "duration":J
    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v13

    .line 407
    .local v13, "uidState":I
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v11

    .line 408
    .local v11, "opFlags":I
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v12

    .line 409
    .local v12, "attributionFlags":I
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v14

    .line 410
    .local v14, "chainId":J
    new-instance v5, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct/range {v5 .. v19}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    .line 413
    .local v5, "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    nop

    .end local v5    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .end local v6    # "uid":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "attributionTag":Ljava/lang/String;
    .end local v9    # "deviceId":Ljava/lang/String;
    .end local v10    # "opCode":I
    .end local v11    # "opFlags":I
    .end local v12    # "attributionFlags":I
    .end local v13    # "uidState":I
    .end local v14    # "chainId":J
    .end local v16    # "accessTime":J
    .end local v18    # "duration":J
    goto :goto_0

    .line 397
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 417
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 418
    nop

    .line 419
    return-object v2

    .line 417
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 397
    .restart local v4    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :goto_1
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    nop

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .end local p1    # "sql":Ljava/lang/String;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 417
    .end local v4    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .restart local p1    # "sql":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 418
    throw v0
.end method

.method getDiscreteOps(IILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IJJILjava/lang/String;Z)Ljava/util/List;
    .locals 32
    .param p1, "requestFilters"    # I
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "opCodesFilter"    # Landroid/util/IntArray;
    .param p6, "opFlagsFilter"    # I
    .param p7, "beginTime"    # J
    .param p9, "endTime"    # J
    .param p11, "limit"    # I
    .param p12, "orderByColumn"    # Ljava/lang/String;
    .param p13, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/IntArray;",
            "IJJI",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;"
        }
    .end annotation

    .line 199
    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/server/appop/DiscreteOpsDbHelper;->prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;

    move-result-object v12

    .line 202
    .local v12, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;>;"
    move/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p13

    invoke-direct {v1, v12, v3, v4, v2}, Lcom/android/server/appop/DiscreteOpsDbHelper;->buildSql(Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "sql":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 204
    .local v6, "startTime":J
    nop

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 208
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 209
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    .line 210
    :try_start_0
    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v0

    .line 211
    .local v10, "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :try_start_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 212
    .local v0, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 213
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;

    .line 217
    .local v13, "condition":Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;
    invoke-static {v13}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmColumnFilter(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Lcom/android/server/appop/DiscreteOpsDbHelper$ColumnFilter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v15, "DiscreteOpsDbHelper"

    packed-switch v14, :pswitch_data_0

    .line 225
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "size":I
    .local v16, "size":I
    const-string/jumbo v0, "unknown sql condition "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    .end local v11    # "i":I
    .end local v13    # "condition":Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;
    .end local v16    # "size":I
    :catchall_0
    move-exception v0

    move-object v11, v0

    goto/16 :goto_3

    .line 224
    .restart local v0    # "size":I
    .restart local v11    # "i":I
    .restart local v13    # "condition":Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;
    :pswitch_0
    move/from16 v16, v0

    .end local v0    # "size":I
    .restart local v16    # "size":I
    const-string v0, "No binding for In operator"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    .end local v16    # "size":I
    .restart local v0    # "size":I
    :pswitch_1
    move/from16 v16, v0

    .end local v0    # "size":I
    .restart local v16    # "size":I
    add-int/lit8 v0, v11, 0x1

    invoke-static {v13}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;

    move-result-object v14

    .line 223
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 222
    invoke-virtual {v10, v0, v14, v15}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    goto :goto_1

    .line 220
    .end local v16    # "size":I
    .restart local v0    # "size":I
    :pswitch_2
    move/from16 v16, v0

    .end local v0    # "size":I
    .restart local v16    # "size":I
    add-int/lit8 v0, v11, 0x1

    invoke-static {v13}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;

    move-result-object v14

    .line 221
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 220
    invoke-virtual {v10, v0, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    goto :goto_1

    .line 218
    .end local v16    # "size":I
    .restart local v0    # "size":I
    :pswitch_3
    move/from16 v16, v0

    .end local v0    # "size":I
    .restart local v16    # "size":I
    add-int/lit8 v0, v11, 0x1

    invoke-static {v13}, Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;->-$$Nest$fgetmFilterValue(Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;)Ljava/lang/Object;

    move-result-object v14

    .line 219
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 218
    invoke-virtual {v10, v0, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    .line 212
    .end local v13    # "condition":Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v16

    goto :goto_0

    .end local v16    # "size":I
    .restart local v0    # "size":I
    :cond_0
    move/from16 v16, v0

    .line 229
    .end local v0    # "size":I
    .end local v11    # "i":I
    .restart local v16    # "size":I
    :goto_2
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v0

    move/from16 v18, v0

    .line 231
    .local v18, "uid":I
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, "packageName":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v21

    .line 233
    .local v21, "deviceId":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v22

    .line 234
    .local v22, "opCode":I
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v20

    .line 235
    .local v20, "attributionTag":Ljava/lang/String;
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v28

    .line 236
    .local v28, "accessTime":J
    const/4 v0, 0x6

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v30

    .line 237
    .local v30, "duration":J
    const/4 v0, 0x7

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v25

    .line 238
    .local v25, "uidState":I
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v23

    .line 239
    .local v23, "opFlags":I
    const/16 v0, 0x9

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v24

    .line 240
    .local v24, "attributionFlags":I
    const/16 v0, 0xa

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v26

    .line 241
    .local v26, "chainId":J
    new-instance v17, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct/range {v17 .. v31}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    move-object/from16 v0, v17

    .line 244
    .local v0, "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    nop

    .end local v0    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .end local v18    # "uid":I
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "attributionTag":Ljava/lang/String;
    .end local v21    # "deviceId":Ljava/lang/String;
    .end local v22    # "opCode":I
    .end local v23    # "opFlags":I
    .end local v24    # "attributionFlags":I
    .end local v25    # "uidState":I
    .end local v26    # "chainId":J
    .end local v28    # "accessTime":J
    .end local v30    # "duration":J
    goto :goto_2

    .line 246
    :cond_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    .end local v16    # "size":I
    :try_start_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    .end local v10    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 249
    nop

    .line 250
    nop

    .line 255
    return-object v9

    .line 248
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 210
    .restart local v10    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :goto_3
    if-eqz v10, :cond_2

    :try_start_4
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_4
    nop

    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "startTime":J
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .end local v12    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;>;"
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .end local p1    # "requestFilters":I
    .end local p2    # "uidFilter":I
    .end local p3    # "packageNameFilter":Ljava/lang/String;
    .end local p4    # "attributionTagFilter":Ljava/lang/String;
    .end local p5    # "opCodesFilter":Landroid/util/IntArray;
    .end local p6    # "opFlagsFilter":I
    .end local p7    # "beginTime":J
    .end local p9    # "endTime":J
    .end local p11    # "limit":I
    .end local p12    # "orderByColumn":Ljava/lang/String;
    .end local p13    # "ascending":Z
    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    .end local v10    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "startTime":J
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    .restart local v12    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsDbHelper$SQLCondition;>;"
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .restart local p1    # "requestFilters":I
    .restart local p2    # "uidFilter":I
    .restart local p3    # "packageNameFilter":Ljava/lang/String;
    .restart local p4    # "attributionTagFilter":Ljava/lang/String;
    .restart local p5    # "opCodesFilter":Landroid/util/IntArray;
    .restart local p6    # "opFlagsFilter":I
    .restart local p7    # "beginTime":J
    .restart local p9    # "endTime":J
    .restart local p11    # "limit":I
    .restart local p12    # "orderByColumn":Ljava/lang/String;
    .restart local p13    # "ascending":Z
    :goto_5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 249
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method getLargestAttributionChainId()J
    .locals 6

    .line 148
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "chainId":J
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 151
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :try_start_1
    const-string v3, "SELECT MAX(chain_id) FROM app_op_accesses"

    .line 153
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .local v3, "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v4

    move-wide v0, v4

    .line 156
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 157
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 160
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 163
    nop

    .line 166
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_5

    .line 164
    :catch_0
    move-exception v2

    goto :goto_4

    .line 162
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 152
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :goto_1
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    nop

    .end local v0    # "chainId":J
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 162
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    .restart local v0    # "chainId":J
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    nop

    .end local v0    # "chainId":J
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    throw v3
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 164
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "chainId":J
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    :goto_4
    nop

    .line 165
    .local v2, "exception":Landroid/database/sqlite/SQLiteException;
    const-string v3, "DiscreteOpsDbHelper"

    const-string v4, "Error reading attribution chain id"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v2    # "exception":Landroid/database/sqlite/SQLiteException;
    :goto_5
    return-wide v0
.end method

.method insertDiscreteOps(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    const-string v0, "Couldn\'t commit transaction when inserting discrete ops, database file size (bytes) : "

    const-string v1, "DiscreteOpsDbHelper"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    const-wide/16 v2, 0x0

    .line 85
    .local v2, "startTime":J
    nop

    .line 89
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 92
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    :try_start_0
    const-string v5, "INSERT INTO app_op_accesses(uid, package_name, device_id, op_code, attribution_tag, access_time, access_duration, uid_state, op_flags, attribution_flags, chain_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 95
    .local v5, "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .local v7, "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 98
    nop

    .line 99
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 98
    const/4 v9, 0x2

    invoke-direct {p0, v5, v9, v8}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 100
    nop

    .line 101
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 100
    const/4 v9, 0x3

    invoke-direct {p0, v5, v9, v8}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 102
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v5, v9, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 103
    nop

    .line 104
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 103
    const/4 v9, 0x5

    invoke-direct {p0, v5, v9, v8}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 105
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAccessTime()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-virtual {v5, v10, v8, v9}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 106
    nop

    .line 107
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v8

    .line 106
    const/4 v10, 0x7

    invoke-virtual {v5, v10, v8, v9}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v8

    const/16 v9, 0x8

    invoke-virtual {v5, v9, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 109
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {v5, v9, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 110
    nop

    .line 111
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v8

    .line 110
    const/16 v9, 0xa

    invoke-virtual {v5, v9, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 112
    invoke-virtual {v7}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v8

    const/16 v10, 0xb

    invoke-virtual {v5, v10, v8, v9}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 113
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    goto :goto_2

    .line 93
    .end local v7    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :catchall_0
    move-exception v6

    goto :goto_6

    .line 117
    .restart local v7    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :catchall_1
    move-exception v6

    goto :goto_3

    .line 114
    :catch_0
    move-exception v8

    nop

    .line 115
    .local v8, "exception":Ljava/lang/Exception;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error inserting the discrete op: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 119
    .end local v7    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .end local v8    # "exception":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_0

    .line 117
    .restart local v7    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V

    .line 118
    nop

    .end local v2    # "startTime":J
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .end local p1    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    throw v6

    .line 120
    .end local v7    # "event":Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .restart local v2    # "startTime":J
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .restart local p1    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 122
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :catchall_2
    move-exception v5

    goto :goto_8

    .line 123
    :cond_2
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 127
    goto :goto_5

    .line 124
    :catch_1
    move-exception v5

    .line 125
    .local v5, "exception":Landroid/database/sqlite/SQLiteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v5    # "exception":Landroid/database/sqlite/SQLiteException;
    nop

    .line 129
    :goto_5
    nop

    .line 134
    return-void

    .line 93
    .local v5, "statement":Landroid/database/sqlite/SQLiteRawStatement;
    :goto_6
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v7

    :try_start_9
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_7
    nop

    .end local v2    # "startTime":J
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .end local p1    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 123
    .end local v5    # "statement":Landroid/database/sqlite/SQLiteRawStatement;
    .restart local v2    # "startTime":J
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteOpsDbHelper;
    .restart local p1    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;>;"
    :goto_8
    :try_start_a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2

    .line 127
    goto :goto_9

    .line 124
    :catch_2
    move-exception v6

    .line 125
    .local v6, "exception":Landroid/database/sqlite/SQLiteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v6    # "exception":Landroid/database/sqlite/SQLiteException;
    :goto_9
    throw v5
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    const-string v0, "PRAGMA synchronous = NORMAL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    const-string v0, "CREATE TABLE IF NOT EXISTS app_op_accesses(id INTEGER PRIMARY KEY,uid INTEGER,package_name TEXT,device_id TEXT NOT NULL,op_code INTEGER,attribution_tag TEXT,access_time INTEGER,access_duration INTEGER,uid_state INTEGER,op_flags INTEGER,attribution_flags INTEGER,chain_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "CREATE INDEX IF NOT EXISTS app_op_access_index ON app_op_accesses (access_time, uid, op_code)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 78
    return-void
.end method
