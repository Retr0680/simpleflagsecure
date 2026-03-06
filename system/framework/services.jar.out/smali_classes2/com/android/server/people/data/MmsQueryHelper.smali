.class Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "MmsQueryHelper.java"


# static fields
.field private static final MILLIS_PER_SECONDS:J = 0x3e8L

.field private static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "MmsQueryHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

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

.field private mLastMessageTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 44
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .locals 1
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

    .line 58
    .local p2, "eventConsumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/String;Lcom/android/server/people/data/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 61
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private addEvent(Ljava/lang/String;JI)Z
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "msgBox"    # I

    .line 148
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/MmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 152
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v2, Lcom/android/server/people/data/Event;

    invoke-direct {v2, p2, p3, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {v1, p1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    const/4 v1, 0x1

    return v1
.end method

.method private getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "msgBox"    # I

    .line 117
    const-string v1, "MmsQueryHelper"

    invoke-static {p1}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 118
    .local v3, "addressUri":Landroid/net/Uri;
    const-string v0, "address"

    const-string/jumbo v8, "type"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 120
    .local v9, "address":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 123
    :try_start_1
    const-string v0, "Cursor is null when querying MMS address table."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    nop

    .line 138
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 124
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v10

    .line 120
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_2

    .line 126
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, "typeIndex":I
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 131
    .local v6, "type":I
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    const/16 v7, 0x89

    if-eq v6, v7, :cond_3

    :cond_2
    const/4 v7, 0x2

    if-ne p2, v7, :cond_4

    const/16 v7, 0x97

    if-ne v6, v7, :cond_4

    .line 134
    :cond_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 135
    .local v7, "addrIndex":I
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v11

    .line 137
    .end local v5    # "typeIndex":I
    .end local v6    # "type":I
    .end local v7    # "addrIndex":I
    :cond_4
    goto :goto_1

    .line 138
    :cond_5
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 140
    .end local v2    # "cursor":Landroid/database/Cursor;
    goto :goto_5

    .line 120
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    nop

    .end local v3    # "addressUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/MmsQueryHelper;
    .end local p1    # "msgId":Ljava/lang/String;
    .end local p2    # "msgBox":I
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 138
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "addressUri":Landroid/net/Uri;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v9    # "address":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/people/data/MmsQueryHelper;
    .restart local p1    # "msgId":Ljava/lang/String;
    .restart local p2    # "msgBox":I
    :goto_4
    nop

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception when querying MMS address table."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 142
    return-object v10

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v9, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validateEvent(Ljava/lang/String;JI)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "msgBox"    # I

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 159
    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0
.end method


# virtual methods
.method getLastMessageTimestamp()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method querySince(J)Z
    .locals 21
    .param p1, "sinceTime"    # J

    .line 70
    move-object/from16 v1, p0

    const-string v2, "MmsQueryHelper"

    const-string v0, "_id"

    const-string v3, "date"

    const-string/jumbo v4, "msg_box"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .line 71
    .local v8, "projection":[Ljava/lang/String;
    const-string v9, "date > ?"

    .line 73
    .local v9, "selection":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    div-long v5, p1, v12

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, "selectionArgs":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 75
    .local v5, "hasResults":Z
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 77
    :try_start_0
    iget-object v6, v1, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 80
    :try_start_1
    const-string v0, "Cursor is null when querying MMS table."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    nop

    .line 102
    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 103
    :catch_0
    move-exception v0

    goto :goto_5

    .line 106
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 81
    const/4 v0, 0x0

    return v0

    .line 77
    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_3

    .line 83
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 86
    .local v7, "msgIdIndex":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "msgId":Ljava/lang/String;
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 90
    .local v14, "dateIndex":I
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v17, v12

    mul-long v12, v15, v17

    .line 93
    .local v12, "date":J
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 94
    .local v15, "msgBoxIndex":I
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v19, v16

    .line 96
    .local v19, "msgBox":I
    move-object/from16 v16, v3

    move-object/from16 v20, v4

    iget-wide v3, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 97
    move/from16 v3, v19

    .end local v19    # "msgBox":I
    .local v3, "msgBox":I
    invoke-direct {v1, v11, v3}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "address":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-direct {v1, v4, v12, v13, v3}, Lcom/android/server/people/data/MmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v19, :cond_2

    .line 99
    const/4 v5, 0x1

    .line 101
    .end local v3    # "msgBox":I
    .end local v4    # "address":Ljava/lang/String;
    .end local v7    # "msgIdIndex":I
    .end local v11    # "msgId":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v14    # "dateIndex":I
    .end local v15    # "msgBoxIndex":I
    :cond_2
    move-object/from16 v3, v16

    move-wide/from16 v12, v17

    move-object/from16 v4, v20

    goto :goto_1

    .line 102
    :cond_3
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .end local v6    # "cursor":Landroid/database/Cursor;
    nop

    :goto_2
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 107
    goto :goto_6

    .line 77
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :goto_3
    if-eqz v6, :cond_4

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    nop

    .end local v5    # "hasResults":Z
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v9    # "selection":Ljava/lang/String;
    .end local v10    # "selectionArgs":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/MmsQueryHelper;
    .end local p1    # "sinceTime":J
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "hasResults":Z
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v9    # "selection":Ljava/lang/String;
    .restart local v10    # "selectionArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/people/data/MmsQueryHelper;
    .restart local p1    # "sinceTime":J
    :goto_5
    nop

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "Exception when querying MMS table."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 108
    :goto_6
    return v5

    .line 106
    :goto_7
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 107
    throw v0
.end method
