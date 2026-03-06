.class Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "ContactsQueryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsQueryHelper"


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mIsStarred:Z

.field private mLastUpdatedTimestamp:J

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 116
    move-object/from16 v1, p0

    const-string v2, "ContactsQueryHelper"

    const/4 v3, 0x0

    .line 117
    .local v3, "lookupKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 118
    .local v4, "hasPhoneNumber":Z
    const/4 v5, 0x0

    .line 119
    .local v5, "found":Z
    :try_start_0
    iget-object v0, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 121
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    if-nez v6, :cond_1

    .line 122
    :try_start_1
    const-string v7, "Cursor is null when querying contact."

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    nop

    .line 153
    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 157
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 155
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 153
    :catch_2
    move-exception v0

    goto/16 :goto_9

    .line 123
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v0

    .line 119
    :catchall_0
    move-exception v0

    move v7, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_5

    .line 125
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 127
    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 128
    .local v7, "idIndex":I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 131
    .local v8, "contactId":J
    const-string/jumbo v10, "lookup"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 132
    .local v10, "lookupKeyIndex":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 134
    invoke-static {v8, v9, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 137
    const-string/jumbo v11, "starred"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 138
    .local v11, "starredIndex":I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    move v12, v13

    goto :goto_2

    :cond_2
    move v12, v0

    :goto_2
    iput-boolean v12, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 141
    const-string/jumbo v12, "has_phone_number"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 142
    .local v12, "hasPhoneNumIndex":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    move v13, v0

    :goto_3
    move v4, v13

    .line 145
    const-string v13, "contact_last_updated_timestamp"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 147
    .local v13, "lastUpdatedTimestampIndex":I
    if-ltz v13, :cond_4

    .line 148
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :cond_4
    const/4 v5, 0x1

    .line 152
    .end local v7    # "idIndex":I
    .end local v10    # "lookupKeyIndex":I
    .end local v11    # "starredIndex":I
    .end local v12    # "hasPhoneNumIndex":I
    .end local v13    # "lastUpdatedTimestampIndex":I
    goto :goto_1

    .line 153
    .end local v8    # "contactId":J
    :cond_5
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_4
    goto :goto_a

    .line 119
    .end local v3    # "lookupKey":Ljava/lang/String;
    .local v4, "lookupKey":Ljava/lang/String;
    .local v5, "hasPhoneNumber":Z
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .local v7, "found":Z
    :goto_5
    if-eqz v6, :cond_6

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 157
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v0

    move-object v3, v4

    move v4, v5

    move v5, v7

    goto :goto_7

    .line 155
    :catch_4
    move-exception v0

    move-object v3, v4

    move v4, v5

    move v5, v7

    goto :goto_8

    .line 153
    :catch_5
    move-exception v0

    move-object v3, v4

    move v4, v5

    move v5, v7

    goto :goto_9

    .line 119
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :goto_6
    nop

    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "hasPhoneNumber":Z
    .end local v7    # "found":Z
    .end local p0    # "this":Lcom/android/server/people/data/ContactsQueryHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    throw v3
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 157
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "lookupKey":Ljava/lang/String;
    .local v4, "hasPhoneNumber":Z
    .local v5, "found":Z
    .restart local p0    # "this":Lcom/android/server/people/data/ContactsQueryHelper;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :goto_7
    nop

    .line 158
    .local v0, "exception":Ljava/lang/Exception;
    const-string v6, "Exception when querying contacts."

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 155
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_8
    nop

    .line 156
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    const-string v6, "Illegal Argument exception when querying contacts."

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 153
    :goto_9
    nop

    .line 154
    .local v0, "exception":Landroid/database/sqlite/SQLiteException;
    const-string v6, "SQLite exception when querying contacts."

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "exception":Landroid/database/sqlite/SQLiteException;
    goto :goto_4

    .line 160
    :goto_a
    if-eqz v5, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 161
    invoke-direct {v1, v3}, Lcom/android/server/people/data/ContactsQueryHelper;->queryPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 163
    :cond_7
    return v5
.end method

.method private queryPhoneNumber(Ljava/lang/String;)Z
    .locals 9
    .param p1, "lookupKey"    # Ljava/lang/String;

    .line 167
    const-string v1, "ContactsQueryHelper"

    const-string v0, "data4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 169
    .local v5, "projection":[Ljava/lang/String;
    const-string/jumbo v6, "lookup = ?"

    .line 170
    .local v6, "selection":Ljava/lang/String;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 175
    :try_start_1
    const-string v0, "Cursor is null when querying contact phone number."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    nop

    .line 186
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

    .line 176
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 171
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .line 178
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 182
    .local v3, "phoneNumIdx":I
    if-ltz v3, :cond_2

    .line 183
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    .end local v3    # "phoneNumIdx":I
    :cond_2
    goto :goto_1

    .line 186
    :cond_3
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 188
    .end local v2    # "cursor":Landroid/database/Cursor;
    goto :goto_5

    .line 171
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v2, :cond_4

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    nop

    .end local v5    # "projection":[Ljava/lang/String;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/people/data/ContactsQueryHelper;
    .end local p1    # "lookupKey":Ljava/lang/String;
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 186
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "projection":[Ljava/lang/String;
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/people/data/ContactsQueryHelper;
    .restart local p1    # "lookupKey":Ljava/lang/String;
    :goto_4
    nop

    .line 187
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "Exception when querying contact phone number."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_5
    const/4 v0, 0x1

    return v0
.end method

.method private queryWithEmail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .line 102
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 103
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    .local v0, "emailUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private queryWithPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 96
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 97
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 98
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private queryWithUri(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 108
    const-string/jumbo v0, "starred"

    const-string/jumbo v1, "has_phone_number"

    const-string v2, "_id"

    const-string/jumbo v3, "lookup"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method getContactUri()Landroid/net/Uri;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method getLastUpdatedTimestamp()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method isStarred()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    return v0
.end method

.method query(Ljava/lang/String;)Z
    .locals 4
    .param p1, "contactUri"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    return v1

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 58
    :cond_1
    const-string/jumbo v2, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithEmail(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 60
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    invoke-direct {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 63
    :cond_3
    return v1
.end method

.method querySince(J)Z
    .locals 5
    .param p1, "sinceTime"    # J

    .line 69
    const-string/jumbo v0, "has_phone_number"

    const-string v1, "contact_last_updated_timestamp"

    const-string v2, "_id"

    const-string/jumbo v3, "lookup"

    const-string/jumbo v4, "starred"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "projection":[Ljava/lang/String;
    const-string v1, "contact_last_updated_timestamp > ?"

    .line 73
    .local v1, "selection":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method
