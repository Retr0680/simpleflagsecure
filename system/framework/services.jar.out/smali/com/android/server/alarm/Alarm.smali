.class Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/Alarm$Snapshot;
    }
.end annotation


# static fields
.field public static final APP_STANDBY_POLICY_INDEX:I = 0x1

.field public static final BATTERY_SAVER_POLICY_INDEX:I = 0x3

.field public static final DEVICE_IDLE_POLICY_INDEX:I = 0x2

.field static final EXACT_ALLOW_REASON_ALLOW_LIST:I = 0x1

.field static final EXACT_ALLOW_REASON_COMPAT:I = 0x2

.field static final EXACT_ALLOW_REASON_LISTENER:I = 0x4

.field static final EXACT_ALLOW_REASON_NOT_APPLICABLE:I = -0x1

.field static final EXACT_ALLOW_REASON_PERMISSION:I = 0x0

.field static final EXACT_ALLOW_REASON_POLICY_PERMISSION:I = 0x3

.field static final EXACT_ALLOW_REASON_PRIORITIZED:I = 0x5

.field public static final NUM_POLICIES:I = 0x4

.field public static final REQUESTER_POLICY_INDEX:I


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public exactAllowReason:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public mIdleOptions:Landroid/os/Bundle;

.field private mMaxWhenElapsed:J

.field private mPolicyWhenElapsed:[J

.field public mUsingReserveQuota:Z

.field private mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:I

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPolicyWhenElapsed(Lcom/android/server/alarm/Alarm;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    return-object p0
.end method

.method constructor <init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "requestedWhenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "interval"    # J
    .param p10, "op"    # Landroid/app/PendingIntent;
    .param p11, "rec"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "ws"    # Landroid/os/WorkSource;
    .param p14, "flags"    # I
    .param p15, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "uid"    # I
    .param p17, "pkgName"    # Ljava/lang/String;
    .param p18, "idleOptions"    # Landroid/os/Bundle;
    .param p19, "exactAllowReason"    # I

    .line 136
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v1, v0, Lcom/android/server/alarm/Alarm;->type:I

    .line 138
    move-wide/from16 v6, p2

    iput-wide v6, v0, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 139
    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eq v1, v9, :cond_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v10, v8

    goto :goto_1

    :goto_0
    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 141
    const/4 v10, 0x4

    new-array v10, v10, [J

    iput-object v10, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 142
    iget-object v10, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide v2, v10, v8

    .line 143
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 144
    move-wide/from16 v10, p6

    iput-wide v10, v0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 145
    invoke-static/range {p4 .. p7}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 146
    move-wide/from16 v12, p8

    iput-wide v12, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 147
    iput-object v4, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 148
    move-object/from16 v14, p11

    iput-object v14, v0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 149
    iput-object v5, v0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 150
    invoke-static {v4, v5, v1}, Lcom/android/server/alarm/Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 151
    move-object/from16 v15, p13

    iput-object v15, v0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 152
    move/from16 v9, p14

    iput v9, v0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 153
    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 154
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    .line 155
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 156
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 157
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    .line 158
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 159
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    :goto_3
    iput v1, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 161
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 162
    return-void
.end method

.method private static exactReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .line 281
    packed-switch p0, :pswitch_data_0

    .line 297
    const-string v0, "--unknown--"

    return-object v0

    .line 293
    :pswitch_0
    const-string/jumbo v0, "prioritized"

    return-object v0

    .line 291
    :pswitch_1
    const-string/jumbo v0, "listener"

    return-object v0

    .line 289
    :pswitch_2
    const-string/jumbo v0, "policy_permission"

    return-object v0

    .line 285
    :pswitch_3
    const-string v0, "compat"

    return-object v0

    .line 283
    :pswitch_4
    const-string v0, "allow-listed"

    return-object v0

    .line 287
    :pswitch_5
    const-string/jumbo v0, "permission"

    return-object v0

    .line 295
    :pswitch_6
    const-string v0, "N/A"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 165
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "*alarm*:"

    goto :goto_1

    :goto_0
    const-string v0, "*walarm*:"

    :goto_1
    nop

    .line 167
    .local v0, "alarmString":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method static policyIndexToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .line 266
    packed-switch p0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :pswitch_0
    const-string v0, "battery_saver"

    return-object v0

    .line 272
    :pswitch_1
    const-string v0, "device_idle"

    return-object v0

    .line 270
    :pswitch_2
    const-string v0, "app_standby"

    return-object v0

    .line 268
    :pswitch_3
    const-string/jumbo v0, "requester"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 302
    packed-switch p0, :pswitch_data_0

    .line 312
    const-string v0, "--unknown--"

    return-object v0

    .line 308
    :pswitch_0
    const-string v0, "ELAPSED"

    return-object v0

    .line 310
    :pswitch_1
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 304
    :pswitch_2
    const-string v0, "RTC"

    return-object v0

    .line 306
    :pswitch_3
    const-string v0, "RTC_WAKEUP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWhenElapsed()Z
    .locals 10

    .line 233
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 234
    .local v0, "oldWhenElapsed":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 236
    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v5, v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 239
    .end local v2    # "i":I
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 241
    .local v2, "oldMaxWhenElapsed":J
    iget-object v4, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v6

    .line 243
    .local v6, "maxRequestedElapsed":J
    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 245
    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 4
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 317
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 318
    .local v1, "isRtc":Z
    :goto_0
    const-string/jumbo v0, "tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, "type="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v0, " origWhen="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 324
    if-eqz v1, :cond_2

    .line 325
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_2
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 329
    :goto_1
    const-string v0, " window="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 331
    iget v0, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 332
    const-string v0, " exactAllowReason="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->exactReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 335
    :cond_3
    const-string v0, " repeatInterval="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 337
    const-string v0, " count="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 339
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v0, "policyWhenElapsed:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 347
    .end local v0    # "i":I
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 349
    const-string/jumbo v0, "whenElapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 351
    const-string v0, " maxWhenElapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 353
    iget-boolean v0, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz v0, :cond_5

    .line 354
    const-string v0, " usingReserveQuota=true"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 358
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_6

    .line 359
    const-string v0, "Alarm clock:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const-string v0, "  triggerTime="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string v0, "  showIntent="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 367
    :cond_6
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 368
    const-string/jumbo v0, "operation="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 371
    :cond_7
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_8

    .line 372
    const-string/jumbo v0, "listener="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 375
    :cond_8
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 376
    const-string/jumbo v0, "idle-options="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    :cond_9
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "nowElapsed"    # J

    .line 382
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 384
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 385
    const-wide v2, 0x10e00000002L

    iget v4, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 386
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    sub-long/2addr v2, p4

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 387
    const-wide v2, 0x10300000004L

    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 388
    const-wide v2, 0x10300000005L

    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 389
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 390
    const-wide v2, 0x10500000007L

    iget v4, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 391
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x1090000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 401
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 402
    return-void
.end method

.method public getMaxWhenElapsed()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    return-wide v0
.end method

.method getPolicyElapsed(I)J
    .locals 2
    .param p1, "policyIndex"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getRequestedElapsed()J
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getWhenElapsed()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    return-wide v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .line 172
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 174
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPolicyElapsed(IJ)Z
    .locals 1
    .param p1, "policyIndex"    # I
    .param p2, "policyElapsed"    # J

    .line 224
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    .line 225
    invoke-direct {p0}, Lcom/android/server/alarm/Alarm;->updateWhenElapsed()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, " origWhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, " whenElapsed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
