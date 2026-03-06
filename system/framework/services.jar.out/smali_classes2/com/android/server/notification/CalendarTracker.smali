.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field private static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field private static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field private static final DEBUG:Z

.field private static final DEBUG_ATTENDEES:Z = false

.field private static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field private static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field private static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field private mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private final mSystemContext:Landroid/content/Context;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserContext(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 43
    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    .line 48
    const-string v8, "calendar_id"

    const-string v9, "availability"

    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 62
    const-string v0, "attendeeEmail"

    const-string v1, "attendeeStatus"

    const-string v2, "event_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "userContext"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 78
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private static attendeeStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .line 245
    packed-switch p0, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_0
    const-string v0, "ATTENDEE_STATUS_TENTATIVE"

    return-object v0

    .line 249
    :pswitch_1
    const-string v0, "ATTENDEE_STATUS_INVITED"

    return-object v0

    .line 248
    :pswitch_2
    const-string v0, "ATTENDEE_STATUS_DECLINED"

    return-object v0

    .line 247
    :pswitch_3
    const-string v0, "ATTENDEE_STATUS_ACCEPTED"

    return-object v0

    .line 246
    :pswitch_4
    const-string v0, "ATTENDEE_STATUS_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static availabilityToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "availability"    # I

    .line 256
    packed-switch p0, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_0
    const-string v0, "AVAILABILITY_TENTATIVE"

    return-object v0

    .line 258
    :pswitch_1
    const-string v0, "AVAILABILITY_FREE"

    return-object v0

    .line 257
    :pswitch_2
    const-string v0, "AVAILABILITY_BUSY"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCalendarsWithAccess()Landroid/util/ArraySet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 95
    const-string v1, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 96
    .local v2, "start":J
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v4, v0

    .line 97
    .local v4, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 98
    .local v7, "projection":[Ljava/lang/String;
    const-string v11, "calendar_access_level >= 500 AND sync_events = 1"

    .line 101
    .local v11, "selection":Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 105
    :goto_0
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 108
    :catch_0
    move-exception v0

    goto :goto_2

    .line 111
    :cond_0
    if-eqz v12, :cond_1

    .line 112
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 108
    :goto_2
    nop

    .line 109
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v5, "error querying calendar content provider"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    nop

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v12, :cond_1

    .line 112
    goto :goto_1

    .line 115
    :cond_1
    :goto_3
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCalendarsWithAccess took "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    return-object v4

    .line 111
    :goto_4
    if-eqz v12, :cond_3

    .line 112
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_3
    throw v0
.end method

.method private meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .locals 22
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "eventId"    # I
    .param p3, "email"    # Ljava/lang/String;

    .line 185
    move-object/from16 v1, p3

    const-string/jumbo v2, "meetsAttendee took "

    const-string v3, "ConditionProviders.CT"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 186
    .local v4, "start":J
    const-string v9, "event_id = ? AND attendeeEmail = ?"

    .line 187
    .local v9, "selection":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "selectionArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 194
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    move-object/from16 v14, p0

    :try_start_0
    iget-object v0, v14, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 196
    const/4 v0, 0x1

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    move/from16 v17, v0

    move-wide/from16 v19, v4

    move/from16 v16, v13

    move-object/from16 v13, p1

    move/from16 v4, p2

    goto/16 :goto_5

    .line 200
    :cond_0
    const/4 v6, 0x0

    .line 201
    .local v6, "rt":Z
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 203
    .local v7, "rowEventId":J
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 204
    .local v11, "rowEmail":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 205
    .local v15, "status":I
    move/from16 v17, v0

    move/from16 v16, v13

    move-object/from16 v13, p1

    :try_start_1
    iget v0, v13, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v0, v15}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v0

    .line 206
    .local v0, "meetsReply":Z
    sget-boolean v18, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v18, :cond_1

    move/from16 v18, v0

    .end local v0    # "meetsReply":Z
    .local v18, "meetsReply":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v19, v4

    .end local v4    # "start":J
    .local v19, "start":J
    :try_start_2
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "status=%s, meetsReply=%s"

    .line 209
    invoke-static {v15}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v21, v6

    .end local v6    # "rt":Z
    .local v21, "rt":Z
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 208
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 219
    .end local v7    # "rowEventId":J
    .end local v11    # "rowEmail":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v18    # "meetsReply":Z
    .end local v21    # "rt":Z
    :catchall_0
    move-exception v0

    move/from16 v4, p2

    goto/16 :goto_7

    .line 215
    :catch_0
    move-exception v0

    move/from16 v4, p2

    goto/16 :goto_6

    .line 219
    .end local v19    # "start":J
    .restart local v4    # "start":J
    :catchall_1
    move-exception v0

    :goto_1
    move-wide/from16 v19, v4

    move/from16 v4, p2

    .end local v4    # "start":J
    .restart local v19    # "start":J
    goto/16 :goto_7

    .line 215
    .end local v19    # "start":J
    .restart local v4    # "start":J
    :catch_1
    move-exception v0

    move-wide/from16 v19, v4

    :goto_2
    move/from16 v4, p2

    .end local v4    # "start":J
    .restart local v19    # "start":J
    goto/16 :goto_6

    .line 206
    .end local v19    # "start":J
    .restart local v0    # "meetsReply":Z
    .restart local v4    # "start":J
    .restart local v6    # "rt":Z
    .restart local v7    # "rowEventId":J
    .restart local v11    # "rowEmail":Ljava/lang/String;
    .restart local v15    # "status":I
    :cond_1
    move/from16 v18, v0

    move-wide/from16 v19, v4

    move/from16 v21, v6

    .line 210
    .end local v0    # "meetsReply":Z
    .end local v4    # "start":J
    .end local v6    # "rt":Z
    .restart local v18    # "meetsReply":Z
    .restart local v19    # "start":J
    .restart local v21    # "rt":Z
    :goto_3
    move/from16 v4, p2

    int-to-long v5, v4

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    :try_start_3
    invoke-static {v11, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    if-eqz v18, :cond_2

    move/from16 v0, v17

    goto :goto_4

    .line 219
    .end local v7    # "rowEventId":J
    .end local v11    # "rowEmail":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v18    # "meetsReply":Z
    .end local v21    # "rt":Z
    :catchall_2
    move-exception v0

    goto/16 :goto_7

    .line 215
    :catch_2
    move-exception v0

    goto/16 :goto_6

    .line 210
    .restart local v7    # "rowEventId":J
    .restart local v11    # "rowEmail":Ljava/lang/String;
    .restart local v15    # "status":I
    .restart local v18    # "meetsReply":Z
    .restart local v21    # "rt":Z
    :cond_2
    move/from16 v0, v16

    :goto_4
    nop

    .line 212
    .local v0, "eventMeets":Z
    or-int v6, v21, v0

    .line 213
    .end local v0    # "eventMeets":Z
    .end local v7    # "rowEventId":J
    .end local v11    # "rowEmail":Ljava/lang/String;
    .end local v15    # "status":I
    .end local v18    # "meetsReply":Z
    .end local v21    # "rt":Z
    .restart local v6    # "rt":Z
    move/from16 v13, v16

    move/from16 v0, v17

    move-wide/from16 v4, v19

    goto/16 :goto_0

    .line 219
    .end local v6    # "rt":Z
    .end local v19    # "start":J
    .restart local v4    # "start":J
    :catchall_3
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_1

    .line 215
    :catch_3
    move-exception v0

    move-wide/from16 v19, v4

    move/from16 v16, v13

    move-object/from16 v13, p1

    goto :goto_2

    .line 201
    .restart local v6    # "rt":Z
    :cond_3
    move-object/from16 v13, p1

    move-wide/from16 v19, v4

    move/from16 v21, v6

    move/from16 v4, p2

    .line 214
    .end local v4    # "start":J
    .end local v6    # "rt":Z
    .restart local v19    # "start":J
    .restart local v21    # "rt":Z
    nop

    .line 219
    nop

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_4
    return v21

    .line 196
    .end local v19    # "start":J
    .end local v21    # "rt":Z
    .restart local v4    # "start":J
    :cond_5
    move/from16 v17, v0

    move-wide/from16 v19, v4

    move/from16 v16, v13

    move-object/from16 v13, p1

    move/from16 v4, p2

    .line 197
    .end local v4    # "start":J
    .restart local v19    # "start":J
    :goto_5
    :try_start_4
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "No attendees found"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 198
    :cond_6
    nop

    .line 219
    if-eqz v12, :cond_7

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_7
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v19

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_8
    return v17

    .line 215
    :goto_6
    nop

    .line 216
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string v5, "error querying attendees content provider"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 217
    nop

    .line 219
    if-eqz v12, :cond_9

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_9
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v19

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_a
    return v16

    .line 219
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_7
    if-eqz v12, :cond_b

    .line 220
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_b
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v19

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_c
    throw v0
.end method

.method private static meetsReply(II)Z
    .locals 3
    .param p0, "reply"    # I
    .param p1, "attendeeStatus"    # I

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    .line 274
    return v0

    .line 267
    :pswitch_0
    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 269
    :pswitch_1
    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 272
    :pswitch_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRegistered(Z)V
    .locals 5
    .param p1, "registered"    # Z

    .line 227
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 230
    .local v1, "userId":I
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    const-string v3, "ConditionProviders.CT"

    if-eqz v2, :cond_2

    .line 231
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 234
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 235
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRegistered = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz v2, :cond_5

    .line 237
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_4
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 242
    :cond_5
    return-void
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .locals 34
    .param p1, "filter"    # Landroid/service/notification/ZenModeConfig$EventInfo;
    .param p2, "time"    # J

    .line 122
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "ConditionProviders.CT"

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 123
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 124
    const-wide/32 v7, 0x5265c00

    add-long v9, v3, v7

    invoke-static {v6, v9, v10}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 125
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 126
    .local v12, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 127
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v0}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    move-object v10, v0

    .line 128
    .local v10, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    add-long/2addr v7, v3

    iput-wide v7, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 130
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v13, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v16, "begin ASC"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v9, v0

    .line 132
    :try_start_1
    invoke-direct {v1}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v0

    .line 133
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_0
    if-eqz v9, :cond_11

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 134
    const/4 v7, 0x0

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 135
    .local v13, "begin":J
    const/4 v8, 0x1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 136
    .local v17, "end":J
    const/4 v11, 0x2

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v19, v11

    .line 137
    .local v19, "title":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v8, :cond_0

    move v11, v8

    goto :goto_1

    :cond_0
    move v11, v7

    .line 138
    .local v11, "calendarVisible":Z
    :goto_1
    const/4 v15, 0x4

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 139
    .local v15, "eventId":I
    const/4 v7, 0x5

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 140
    .local v25, "name":Ljava/lang/String;
    const/4 v7, 0x6

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 141
    .local v26, "owner":Ljava/lang/String;
    const/4 v7, 0x7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-wide/from16 v29, v20

    .line 142
    .local v29, "calendarId":J
    const/16 v7, 0x8

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 143
    .local v7, "availability":I
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 144
    .local v8, "canAccessCal":Z
    sget-boolean v20, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v20, :cond_1

    .line 145
    move-object/from16 v31, v0

    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v31, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v0, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v13, v14}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v33, v8

    move-object/from16 v32, v9

    move-wide/from16 v8, v17

    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v17    # "end":J
    .local v8, "end":J
    .local v32, "cursor":Landroid/database/Cursor;
    .local v33, "canAccessCal":Z
    :try_start_2
    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 147
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 148
    invoke-static {v7}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 149
    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v6

    move-object/from16 v4, v25

    move-object/from16 v6, v26

    .line 145
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .local v6, "owner":Ljava/lang/String;
    .local v17, "uriBuilder":Landroid/net/Uri$Builder;
    :try_start_3
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "owner":Ljava/lang/String;
    .end local v7    # "availability":I
    .end local v8    # "end":J
    .end local v11    # "calendarVisible":Z
    .end local v13    # "begin":J
    .end local v15    # "eventId":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v29    # "calendarId":J
    .end local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v33    # "canAccessCal":Z
    :catchall_0
    move-exception v0

    move-object/from16 v9, v32

    goto/16 :goto_c

    .line 174
    :catch_0
    move-exception v0

    move-object/from16 v9, v32

    goto/16 :goto_a

    .line 177
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v9, v32

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    goto/16 :goto_c

    .line 174
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v9, v32

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    goto/16 :goto_a

    .line 177
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v32, v9

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_c

    .line 174
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v32, v9

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_a

    .line 144
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v7    # "availability":I
    .local v8, "canAccessCal":Z
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "calendarVisible":Z
    .restart local v13    # "begin":J
    .restart local v15    # "eventId":I
    .local v17, "end":J
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v25    # "name":Ljava/lang/String;
    .restart local v26    # "owner":Ljava/lang/String;
    .restart local v29    # "calendarId":J
    :cond_1
    move-object/from16 v31, v0

    move/from16 v33, v8

    move-object/from16 v32, v9

    move-wide/from16 v8, v17

    move-object/from16 v4, v25

    move-object/from16 v17, v6

    move-object/from16 v6, v26

    .line 151
    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v25    # "name":Ljava/lang/String;
    .end local v26    # "owner":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .local v6, "owner":Ljava/lang/String;
    .local v8, "end":J
    .local v17, "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .restart local v32    # "cursor":Landroid/database/Cursor;
    .restart local v33    # "canAccessCal":Z
    :goto_2
    cmp-long v0, p2, v13

    if-ltz v0, :cond_2

    cmp-long v0, p2, v8

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 152
    .local v0, "meetsTime":Z
    :goto_3
    if-eqz v11, :cond_6

    if-eqz v33, :cond_6

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_4

    :cond_4
    move/from16 v18, v0

    goto :goto_5

    :goto_4
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 154
    move/from16 v18, v0

    .end local v0    # "meetsTime":Z
    .local v18, "meetsTime":Z
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 155
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    .line 152
    .end local v18    # "meetsTime":Z
    .restart local v0    # "meetsTime":Z
    :cond_6
    move/from16 v18, v0

    .line 155
    .end local v0    # "meetsTime":Z
    .restart local v18    # "meetsTime":Z
    :cond_7
    const/4 v0, 0x0

    :goto_6
    nop

    .line 156
    .local v0, "meetsCalendar":Z
    const/4 v3, 0x1

    if-eq v7, v3, :cond_8

    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    .line 157
    .local v16, "meetsAvailability":Z
    :goto_7
    if-eqz v0, :cond_f

    if-eqz v16, :cond_f

    .line 158
    sget-boolean v3, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "  MEETS CALENDAR & AVAILABILITY"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_9
    invoke-direct {v1, v2, v15, v6}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v3

    .line 160
    .local v3, "meetsAttendee":Z
    if-eqz v3, :cond_e

    .line 161
    sget-boolean v20, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v20, :cond_a

    move/from16 v20, v0

    .end local v0    # "meetsCalendar":Z
    .local v20, "meetsCalendar":Z
    const-string v0, "    MEETS ATTENDEE"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v20    # "meetsCalendar":Z
    .restart local v0    # "meetsCalendar":Z
    :cond_a
    move/from16 v20, v0

    .line 162
    .end local v0    # "meetsCalendar":Z
    .restart local v20    # "meetsCalendar":Z
    :goto_8
    if-eqz v18, :cond_c

    .line 163
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "      MEETS TIME"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 166
    :cond_c
    cmp-long v0, v13, p2

    if-lez v0, :cond_d

    iget-wide v0, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v13, v0

    if-gez v0, :cond_d

    .line 167
    iput-wide v13, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_9

    .line 168
    :cond_d
    cmp-long v0, v8, p2

    if-lez v0, :cond_10

    iget-wide v0, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v0, v8, v0

    if-gez v0, :cond_10

    .line 169
    iput-wide v8, v10, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    .line 160
    .end local v20    # "meetsCalendar":Z
    .restart local v0    # "meetsCalendar":Z
    :cond_e
    move/from16 v20, v0

    .end local v0    # "meetsCalendar":Z
    .restart local v20    # "meetsCalendar":Z
    goto :goto_9

    .line 157
    .end local v3    # "meetsAttendee":Z
    .end local v20    # "meetsCalendar":Z
    .restart local v0    # "meetsCalendar":Z
    :cond_f
    move/from16 v20, v0

    .line 173
    .end local v0    # "meetsCalendar":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "owner":Ljava/lang/String;
    .end local v7    # "availability":I
    .end local v8    # "end":J
    .end local v11    # "calendarVisible":Z
    .end local v13    # "begin":J
    .end local v15    # "eventId":I
    .end local v16    # "meetsAvailability":Z
    .end local v18    # "meetsTime":Z
    .end local v19    # "title":Ljava/lang/String;
    .end local v29    # "calendarId":J
    .end local v33    # "canAccessCal":Z
    :cond_10
    :goto_9
    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v6, v17

    move-object/from16 v0, v31

    move-object/from16 v9, v32

    goto/16 :goto_0

    .line 133
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v31    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v32    # "cursor":Landroid/database/Cursor;
    .local v0, "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .local v6, "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_11
    move-object/from16 v31, v0

    move-object/from16 v17, v6

    move-object/from16 v32, v9

    .line 177
    .end local v0    # "calendars":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v32    # "cursor":Landroid/database/Cursor;
    if-eqz v32, :cond_12

    .line 178
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_12
    move-object/from16 v9, v32

    goto :goto_b

    .line 177
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .end local v32    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    goto :goto_c

    .line 174
    .end local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    :catch_3
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "uriBuilder":Landroid/net/Uri$Builder;
    .restart local v17    # "uriBuilder":Landroid/net/Uri$Builder;
    :goto_a
    nop

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "error reading calendar"

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 177
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_13

    .line 178
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_13
    :goto_b
    return-object v10

    .line 177
    :catchall_4
    move-exception v0

    :goto_c
    if-eqz v9, :cond_14

    .line 178
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_14
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 91
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "u="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 92
    return-void
.end method

.method public getUserId()I
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/CalendarTracker$Callback;

    .line 83
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_0

    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 85
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    .line 86
    return-void
.end method
