.class Lcom/android/server/people/data/CallLogQueryHelper;
.super Ljava/lang/Object;
.source "CallLogQueryHelper.java"


# static fields
.field private static final CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "CallLogQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCallTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 37
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 54
    return-void
.end method

.method private addEvent(Ljava/lang/String;JJI)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "durationSeconds"    # J
    .param p6, "callType"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/server/people/data/CallLogQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 114
    .local v0, "eventType":I
    new-instance v1, Lcom/android/server/people/data/Event$Builder;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    long-to-int v2, p4

    .line 115
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object v1

    .line 117
    .local v1, "event":Lcom/android/server/people/data/Event;
    iget-object v2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {v2, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    const/4 v2, 0x1

    return v2
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "callType"    # I

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 124
    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0
.end method


# virtual methods
.method getLastCallTimestamp()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .locals 26
    .param p1, "sinceTime"    # J

    .line 62
    move-object/from16 v1, p0

    const-string v8, "CallLogQueryHelper"

    const-string/jumbo v0, "normalized_number"

    const-string v9, "date"

    const-string v10, "duration"

    const-string/jumbo v11, "type"

    filled-new-array {v0, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 64
    .local v14, "projection":[Ljava/lang/String;
    const-string v15, "date > ?"

    .line 65
    .local v15, "selection":Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    .line 66
    .local v16, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, "hasResults":Z
    const/16 v18, 0x0

    :try_start_0
    iget-object v3, v1, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v17, "date DESC"

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v3

    .line 70
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 71
    :try_start_1
    const-string v0, "Cursor is null when querying call log."

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    nop

    .line 96
    if-eqz v12, :cond_0

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 99
    .end local v12    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 96
    :catch_1
    move-exception v0

    goto/16 :goto_6

    .line 72
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v18

    .line 67
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2

    .line 70
    :cond_1
    move v13, v2

    .line 74
    .end local v2    # "hasResults":Z
    .local v13, "hasResults":Z
    :goto_1
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 77
    .local v2, "numberIndex":I
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "phoneNumber":Ljava/lang/String;
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 81
    .local v4, "dateIndex":I
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 84
    .local v5, "date":J
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 85
    .local v7, "durationIndex":I
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 88
    .local v19, "durationSeconds":J
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v21, v17

    .line 89
    .local v21, "typeIndex":I
    move-object/from16 v17, v0

    move/from16 v0, v21

    .end local v21    # "typeIndex":I
    .local v0, "typeIndex":I
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 91
    .local v21, "callType":I
    move/from16 v22, v2

    move-object/from16 v23, v3

    .end local v2    # "numberIndex":I
    .end local v3    # "phoneNumber":Ljava/lang/String;
    .local v22, "numberIndex":I
    .local v23, "phoneNumber":Ljava/lang/String;
    iget-wide v2, v1, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    .line 92
    move-wide/from16 v24, v19

    move/from16 v19, v4

    move-wide v3, v5

    move-wide/from16 v5, v24

    move/from16 v20, v7

    move/from16 v7, v21

    move-object/from16 v2, v23

    .end local v4    # "dateIndex":I
    .end local v21    # "callType":I
    .end local v23    # "phoneNumber":Ljava/lang/String;
    .local v2, "phoneNumber":Ljava/lang/String;
    .local v3, "date":J
    .local v5, "durationSeconds":J
    .local v7, "callType":I
    .local v19, "dateIndex":I
    .local v20, "durationIndex":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/people/data/CallLogQueryHelper;->addEvent(Ljava/lang/String;JJI)Z

    move-result v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v21, :cond_2

    .line 93
    const/4 v1, 0x1

    move v13, v1

    .line 95
    .end local v0    # "typeIndex":I
    .end local v2    # "phoneNumber":Ljava/lang/String;
    .end local v3    # "date":J
    .end local v5    # "durationSeconds":J
    .end local v7    # "callType":I
    .end local v19    # "dateIndex":I
    .end local v20    # "durationIndex":I
    .end local v22    # "numberIndex":I
    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v0, v17

    goto :goto_1

    .line 67
    :catchall_1
    move-exception v0

    move-object v1, v0

    move v2, v13

    goto :goto_2

    .line 96
    :cond_3
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 101
    .end local v12    # "cursor":Landroid/database/Cursor;
    goto :goto_5

    .line 99
    :catch_2
    move-exception v0

    move v2, v13

    goto :goto_4

    .line 96
    :catch_3
    move-exception v0

    move v2, v13

    goto :goto_6

    .line 67
    .end local v13    # "hasResults":Z
    .local v2, "hasResults":Z
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v12, :cond_4

    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    nop

    .end local v2    # "hasResults":Z
    .end local v14    # "projection":[Ljava/lang/String;
    .end local v15    # "selection":Ljava/lang/String;
    .end local v16    # "selectionArgs":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/CallLogQueryHelper;
    .end local p1    # "sinceTime":J
    throw v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 99
    .end local v12    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "hasResults":Z
    .restart local v14    # "projection":[Ljava/lang/String;
    .restart local v15    # "selection":Ljava/lang/String;
    .restart local v16    # "selectionArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/people/data/CallLogQueryHelper;
    .restart local p1    # "sinceTime":J
    :goto_4
    nop

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception when querying call log."

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v13, v2

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "hasResults":Z
    .restart local v13    # "hasResults":Z
    :goto_5
    return v13

    .line 96
    .end local v13    # "hasResults":Z
    .restart local v2    # "hasResults":Z
    :goto_6
    nop

    .line 97
    .local v0, "ex":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query call log failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v18
.end method
