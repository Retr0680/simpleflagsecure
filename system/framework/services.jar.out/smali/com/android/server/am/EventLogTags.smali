.class public Lcom/android/server/am/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AM_ANR:I = 0x7538

.field public static final AM_BROADCAST_DISCARD_APP:I = 0x7549

.field public static final AM_BROADCAST_DISCARD_FILTER:I = 0x7548

.field public static final AM_CLEAR_APP_DATA_CALLER:I = 0x75a8

.field public static final AM_COMPACT:I = 0x756f

.field public static final AM_CPU:I = 0x7598

.field public static final AM_CRASH:I = 0x7557

.field public static final AM_CREATE_SERVICE:I = 0x754e

.field public static final AM_DESTROY_SERVICE:I = 0x754f

.field public static final AM_DROP_PROCESS:I = 0x7551

.field public static final AM_FOREGROUND_SERVICE_DENIED:I = 0x7595

.field public static final AM_FOREGROUND_SERVICE_START:I = 0x7594

.field public static final AM_FOREGROUND_SERVICE_STOP:I = 0x7596

.field public static final AM_FOREGROUND_SERVICE_TIMED_OUT:I = 0x7597

.field public static final AM_FREEZE:I = 0x7574

.field public static final AM_INTENT_SENDER_REDIRECT_USER:I = 0x759e

.field public static final AM_KILL:I = 0x7547

.field public static final AM_LOW_MEMORY:I = 0x7541

.field public static final AM_MEMINFO:I = 0x755e

.field public static final AM_MEM_FACTOR:I = 0x7562

.field public static final AM_OOM_ADJ_MISC:I = 0x75a1

.field public static final AM_PRE_BOOT:I = 0x755d

.field public static final AM_PROCESS_CRASHED_TOO_MUCH:I = 0x7550

.field public static final AM_PROCESS_START_TIMEOUT:I = 0x7555

.field public static final AM_PROC_BAD:I = 0x753f

.field public static final AM_PROC_BOUND:I = 0x753a

.field public static final AM_PROC_DIED:I = 0x753b

.field public static final AM_PROC_GOOD:I = 0x7540

.field public static final AM_PROC_START:I = 0x753e

.field public static final AM_PROC_STATE_CHANGED:I = 0x75a0

.field public static final AM_PROVIDER_LOST_PROCESS:I = 0x7554

.field public static final AM_PSS:I = 0x755f

.field public static final AM_SCHEDULE_SERVICE_RESTART:I = 0x7553

.field public static final AM_SERVICE_CRASHED_TOO_MUCH:I = 0x7552

.field public static final AM_STOP_IDLE_SERVICE:I = 0x7568

.field public static final AM_SWITCH_USER:I = 0x7559

.field public static final AM_UID_ACTIVE:I = 0x7566

.field public static final AM_UID_IDLE:I = 0x7567

.field public static final AM_UID_RUNNING:I = 0x7564

.field public static final AM_UID_STATE_CHANGED:I = 0x759f

.field public static final AM_UID_STOPPED:I = 0x7565

.field public static final AM_UNFREEZE:I = 0x7575

.field public static final AM_USER_STATE_CHANGED:I = 0x7563

.field public static final AM_WTF:I = 0x7558

.field public static final BOOT_PROGRESS_AMS_READY:I = 0xbe0

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0xbea

.field public static final CONFIGURATION_CHANGED:I = 0xa9f

.field public static final CPU:I = 0xaa1

.field public static final SSM_USER_COMPLETED_EVENT:I = 0x7588

.field public static final SSM_USER_STARTING:I = 0x7582

.field public static final SSM_USER_STOPPED:I = 0x7587

.field public static final SSM_USER_STOPPING:I = 0x7586

.field public static final SSM_USER_SWITCHING:I = 0x7583

.field public static final SSM_USER_UNLOCKED:I = 0x7585

.field public static final SSM_USER_UNLOCKING:I = 0x7584

.field public static final UC_CONTINUE_USER_SWITCH:I = 0x7580

.field public static final UC_DISPATCH_USER_SWITCH:I = 0x757f

.field public static final UC_FINISH_USER_BOOT:I = 0x757e

.field public static final UC_FINISH_USER_STOPPED:I = 0x757a

.field public static final UC_FINISH_USER_STOPPING:I = 0x7579

.field public static final UC_FINISH_USER_UNLOCKED:I = 0x7577

.field public static final UC_FINISH_USER_UNLOCKED_COMPLETED:I = 0x7578

.field public static final UC_FINISH_USER_UNLOCKING:I = 0x7576

.field public static final UC_SEND_USER_BROADCAST:I = 0x7581

.field public static final UC_START_USER_INTERNAL:I = 0x757c

.field public static final UC_SWITCH_USER:I = 0x757b

.field public static final UC_UNLOCK_USER:I = 0x757d

.field public static final UM_USER_VISIBILITY_CHANGED:I = 0x758b


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAmAnr(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 234
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, p2, v2, p4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7538

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 235
    return-void
.end method

.method public static writeAmBroadcastDiscardApp(IILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "app"    # Ljava/lang/String;

    .line 270
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, p2, v2, p4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7549

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 271
    return-void
.end method

.method public static writeAmBroadcastDiscardFilter(IILjava/lang/String;II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "broadcast"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "receiverNumber"    # I
    .param p4, "broadcastfilter"    # I

    .line 266
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7548

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 267
    return-void
.end method

.method public static writeAmClearAppDataCaller(IILjava/lang/String;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "package_"    # Ljava/lang/String;

    .line 474
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x75a8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 475
    return-void
.end method

.method public static writeAmCompact(ILjava/lang/String;Ljava/lang/String;JJJJJJJJJIJIIJJ)V
    .locals 19
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "beforersstotal"    # J
    .param p5, "beforerssfile"    # J
    .param p7, "beforerssanon"    # J
    .param p9, "beforerssswap"    # J
    .param p11, "deltarsstotal"    # J
    .param p13, "deltarssfile"    # J
    .param p15, "deltarssanon"    # J
    .param p17, "deltarssswap"    # J
    .param p19, "time"    # J
    .param p21, "lastaction"    # I
    .param p22, "lastactiontimestamp"    # J
    .param p24, "setadj"    # I
    .param p25, "procstate"    # I
    .param p26, "beforezramfree"    # J
    .param p28, "deltazramfree"    # J

    .line 358
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static/range {p17 .. p18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static/range {p19 .. p20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {p21 .. p21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {p24 .. p24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static/range {p25 .. p25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {p26 .. p27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x756f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 359
    return-void
.end method

.method public static writeAmCpu(JJLjava/lang/String;JJJ)V
    .locals 6
    .param p0, "pid"    # J
    .param p2, "uid"    # J
    .param p4, "baseName"    # Ljava/lang/String;
    .param p5, "uptime"    # J
    .param p7, "stime"    # J
    .param p9, "utime"    # J

    .line 466
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, p4

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7598

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 467
    return-void
.end method

.method public static writeAmCrash(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "exception"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "file"    # Ljava/lang/String;
    .param p7, "line"    # I
    .param p8, "recoverable"    # I

    .line 306
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7557

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 307
    return-void
.end method

.method public static writeAmCreateService(IILjava/lang/String;II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 274
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x754e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 275
    return-void
.end method

.method public static writeAmDestroyService(III)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "serviceRecord"    # I
    .param p2, "pid"    # I

    .line 278
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x754f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 279
    return-void
.end method

.method public static writeAmDropProcess(I)V
    .locals 1
    .param p0, "pid"    # I

    .line 286
    const/16 v0, 0x7551

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 287
    return-void
.end method

.method public static writeAmForegroundServiceDenied(ILjava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 12
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "allowwhileinuse"    # I
    .param p3, "startreasoncode"    # Ljava/lang/String;
    .param p4, "targetsdk"    # I
    .param p5, "callertargetsdk"    # I
    .param p6, "notificationwasdeferred"    # I
    .param p7, "notificationshown"    # I
    .param p8, "durationms"    # I
    .param p9, "startforegroundcount"    # I
    .param p10, "stopreason"    # Ljava/lang/String;
    .param p11, "fgstype"    # I

    .line 454
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v10, p10

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7595

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 455
    return-void
.end method

.method public static writeAmForegroundServiceStart(ILjava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 12
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "allowwhileinuse"    # I
    .param p3, "startreasoncode"    # Ljava/lang/String;
    .param p4, "targetsdk"    # I
    .param p5, "callertargetsdk"    # I
    .param p6, "notificationwasdeferred"    # I
    .param p7, "notificationshown"    # I
    .param p8, "durationms"    # I
    .param p9, "startforegroundcount"    # I
    .param p10, "stopreason"    # Ljava/lang/String;
    .param p11, "fgstype"    # I

    .line 450
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v10, p10

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7594

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 451
    return-void
.end method

.method public static writeAmForegroundServiceStop(ILjava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 12
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "allowwhileinuse"    # I
    .param p3, "startreasoncode"    # Ljava/lang/String;
    .param p4, "targetsdk"    # I
    .param p5, "callertargetsdk"    # I
    .param p6, "notificationwasdeferred"    # I
    .param p7, "notificationshown"    # I
    .param p8, "durationms"    # I
    .param p9, "startforegroundcount"    # I
    .param p10, "stopreason"    # Ljava/lang/String;
    .param p11, "fgstype"    # I

    .line 458
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v10, p10

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7596

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 459
    return-void
.end method

.method public static writeAmForegroundServiceTimedOut(ILjava/lang/String;ILjava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 12
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "allowwhileinuse"    # I
    .param p3, "startreasoncode"    # Ljava/lang/String;
    .param p4, "targetsdk"    # I
    .param p5, "callertargetsdk"    # I
    .param p6, "notificationwasdeferred"    # I
    .param p7, "notificationshown"    # I
    .param p8, "durationms"    # I
    .param p9, "startforegroundcount"    # I
    .param p10, "stopreason"    # Ljava/lang/String;
    .param p11, "fgstype"    # I

    .line 462
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v10, p10

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7597

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 463
    return-void
.end method

.method public static writeAmFreeze(ILjava/lang/String;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 362
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7574

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 363
    return-void
.end method

.method public static writeAmIntentSenderRedirectUser(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 470
    const/16 v0, 0x759e

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 471
    return-void
.end method

.method public static writeAmKill(IILjava/lang/String;ILjava/lang/String;J)V
    .locals 6
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "rss"    # J

    .line 262
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, p2

    move-object v4, p4

    .end local p2    # "processName":Ljava/lang/String;
    .end local p4    # "reason":Ljava/lang/String;
    .local v2, "processName":Ljava/lang/String;
    .local v4, "reason":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p4, 0x7547

    invoke-static {p4, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 263
    return-void
.end method

.method public static writeAmLowMemory(I)V
    .locals 1
    .param p0, "numProcesses"    # I

    .line 258
    const/16 v0, 0x7541

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 259
    return-void
.end method

.method public static writeAmMemFactor(II)V
    .locals 2
    .param p0, "current"    # I
    .param p1, "previous"    # I

    .line 330
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7562

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 331
    return-void
.end method

.method public static writeAmMeminfo(JJJJJ)V
    .locals 5
    .param p0, "cached"    # J
    .param p2, "free"    # J
    .param p4, "zram"    # J
    .param p6, "kernel"    # J
    .param p8, "native_"    # J

    .line 322
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x755e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 323
    return-void
.end method

.method public static writeAmOomAdjMisc(IIIIIILjava/lang/String;)V
    .locals 7
    .param p0, "event"    # I
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "seq"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 486
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, p6

    .end local p6    # "reason":Ljava/lang/String;
    .local v6, "reason":Ljava/lang/String;
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p6

    const/16 v0, 0x75a1

    invoke-static {v0, p6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 487
    return-void
.end method

.method public static writeAmPreBoot(ILjava/lang/String;)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "package_"    # Ljava/lang/String;

    .line 318
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x755d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 319
    return-void
.end method

.method public static writeAmProcBad(IILjava/lang/String;)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 250
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x753f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 251
    return-void
.end method

.method public static writeAmProcBound(IILjava/lang/String;)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 238
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x753a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 239
    return-void
.end method

.method public static writeAmProcDied(IILjava/lang/String;II)V
    .locals 4
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "oomadj"    # I
    .param p4, "procstate"    # I

    .line 242
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, p2, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x753b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 243
    return-void
.end method

.method public static writeAmProcGood(IILjava/lang/String;)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 254
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7540

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 255
    return-void
.end method

.method public static writeAmProcStart(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "component"    # Ljava/lang/String;

    .line 246
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p3    # "processName":Ljava/lang/String;
    .end local p4    # "type":Ljava/lang/String;
    .end local p5    # "component":Ljava/lang/String;
    .local v3, "processName":Ljava/lang/String;
    .local v4, "type":Ljava/lang/String;
    .local v5, "component":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p3

    const/16 p4, 0x753e

    invoke-static {p4, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 247
    return-void
.end method

.method public static writeAmProcStateChanged(IIIIIIILjava/lang/String;)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "seq"    # I
    .param p3, "procstate"    # I
    .param p4, "oldprocstate"    # I
    .param p5, "oomadj"    # I
    .param p6, "oldoomadj"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 482
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, p7

    .end local p7    # "reason":Ljava/lang/String;
    .local v7, "reason":Ljava/lang/String;
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p7

    const/16 v0, 0x75a0

    invoke-static {v0, p7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 483
    return-void
.end method

.method public static writeAmProcessCrashedTooMuch(ILjava/lang/String;I)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 282
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7550

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 283
    return-void
.end method

.method public static writeAmProcessStartTimeout(IIILjava/lang/String;)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2, p3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7555

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 303
    return-void
.end method

.method public static writeAmProviderLostProcess(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 298
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p1, v1, p3}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 299
    return-void
.end method

.method public static writeAmPss(IILjava/lang/String;JJJJIIJ)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "uss"    # J
    .param p7, "swappss"    # J
    .param p9, "rss"    # J
    .param p11, "stattype"    # I
    .param p12, "procstate"    # I
    .param p13, "timetocollect"    # J

    .line 326
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {p13 .. p14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v2, p2

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x755f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 327
    return-void
.end method

.method public static writeAmScheduleServiceRestart(ILjava/lang/String;J)V
    .locals 2
    .param p0, "user"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7553

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 295
    return-void
.end method

.method public static writeAmServiceCrashedTooMuch(IILjava/lang/String;I)V
    .locals 3
    .param p0, "user"    # I
    .param p1, "crashCount"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 290
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, p2, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7552

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 291
    return-void
.end method

.method public static writeAmStopIdleService(ILjava/lang/String;)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "componentName"    # Ljava/lang/String;

    .line 354
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7568

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 355
    return-void
.end method

.method public static writeAmSwitchUser(I)V
    .locals 1
    .param p0, "id"    # I

    .line 314
    const/16 v0, 0x7559

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 315
    return-void
.end method

.method public static writeAmUidActive(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 346
    const/16 v0, 0x7566

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 347
    return-void
.end method

.method public static writeAmUidIdle(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 350
    const/16 v0, 0x7567

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 351
    return-void
.end method

.method public static writeAmUidRunning(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 338
    const/16 v0, 0x7564

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 339
    return-void
.end method

.method public static writeAmUidStateChanged(IIIIIIILjava/lang/String;)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "seq"    # I
    .param p2, "uidstate"    # I
    .param p3, "olduidstate"    # I
    .param p4, "capability"    # I
    .param p5, "oldcapability"    # I
    .param p6, "flags"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 478
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, p7

    .end local p7    # "reason":Ljava/lang/String;
    .local v7, "reason":Ljava/lang/String;
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p7

    const/16 v0, 0x759f

    invoke-static {v0, p7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 479
    return-void
.end method

.method public static writeAmUidStopped(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 342
    const/16 v0, 0x7565

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 343
    return-void
.end method

.method public static writeAmUnfreeze(ILjava/lang/String;)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "processName"    # Ljava/lang/String;

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7575

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 367
    return-void
.end method

.method public static writeAmUserStateChanged(II)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "state"    # I

    .line 334
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7563

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 335
    return-void
.end method

.method public static writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "user"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .line 310
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "processName":Ljava/lang/String;
    .end local p4    # "tag":Ljava/lang/String;
    .end local p5    # "message":Ljava/lang/String;
    .local v2, "processName":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    .local v5, "message":Ljava/lang/String;
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p4, 0x7558

    invoke-static {p4, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 311
    return-void
.end method

.method public static writeBootProgressAmsReady(J)V
    .locals 1
    .param p0, "time"    # J

    .line 226
    const/16 v0, 0xbe0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 227
    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .locals 1
    .param p0, "time"    # J

    .line 230
    const/16 v0, 0xbea

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 231
    return-void
.end method

.method public static writeConfigurationChanged(I)V
    .locals 1
    .param p0, "configMask"    # I

    .line 218
    const/16 v0, 0xa9f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 219
    return-void
.end method

.method public static writeCpu(IIIIII)V
    .locals 6
    .param p0, "total"    # I
    .param p1, "user"    # I
    .param p2, "system"    # I
    .param p3, "iowait"    # I
    .param p4, "irq"    # I
    .param p5, "softirq"    # I

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xaa1

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 223
    return-void
.end method

.method public static writeSsmUserCompletedEvent(II)V
    .locals 2
    .param p0, "userid"    # I
    .param p1, "eventflag"    # I

    .line 442
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7588

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 443
    return-void
.end method

.method public static writeSsmUserStarting(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 418
    const/16 v0, 0x7582

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 419
    return-void
.end method

.method public static writeSsmUserStopped(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 438
    const/16 v0, 0x7587

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 439
    return-void
.end method

.method public static writeSsmUserStopping(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 434
    const/16 v0, 0x7586

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 435
    return-void
.end method

.method public static writeSsmUserSwitching(II)V
    .locals 2
    .param p0, "olduserid"    # I
    .param p1, "newuserid"    # I

    .line 422
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7583

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 423
    return-void
.end method

.method public static writeSsmUserUnlocked(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 430
    const/16 v0, 0x7585

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 431
    return-void
.end method

.method public static writeSsmUserUnlocking(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 426
    const/16 v0, 0x7584

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 427
    return-void
.end method

.method public static writeUcContinueUserSwitch(II)V
    .locals 2
    .param p0, "olduserid"    # I
    .param p1, "newuserid"    # I

    .line 410
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7580

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 411
    return-void
.end method

.method public static writeUcDispatchUserSwitch(II)V
    .locals 2
    .param p0, "olduserid"    # I
    .param p1, "newuserid"    # I

    .line 406
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x757f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 407
    return-void
.end method

.method public static writeUcFinishUserBoot(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 402
    const/16 v0, 0x757e

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 403
    return-void
.end method

.method public static writeUcFinishUserStopped(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 386
    const/16 v0, 0x757a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 387
    return-void
.end method

.method public static writeUcFinishUserStopping(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 382
    const/16 v0, 0x7579

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 383
    return-void
.end method

.method public static writeUcFinishUserUnlocked(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 374
    const/16 v0, 0x7577

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 375
    return-void
.end method

.method public static writeUcFinishUserUnlockedCompleted(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 378
    const/16 v0, 0x7578

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 379
    return-void
.end method

.method public static writeUcFinishUserUnlocking(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 370
    const/16 v0, 0x7576

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 371
    return-void
.end method

.method public static writeUcSendUserBroadcast(ILjava/lang/String;)V
    .locals 2
    .param p0, "userid"    # I
    .param p1, "intentaction"    # Ljava/lang/String;

    .line 414
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7581

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 415
    return-void
.end method

.method public static writeUcStartUserInternal(III)V
    .locals 3
    .param p0, "userid"    # I
    .param p1, "foreground"    # I
    .param p2, "displayid"    # I

    .line 394
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x757c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 395
    return-void
.end method

.method public static writeUcSwitchUser(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 390
    const/16 v0, 0x757b

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 391
    return-void
.end method

.method public static writeUcUnlockUser(I)V
    .locals 1
    .param p0, "userid"    # I

    .line 398
    const/16 v0, 0x757d

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 399
    return-void
.end method

.method public static writeUmUserVisibilityChanged(II)V
    .locals 2
    .param p0, "userid"    # I
    .param p1, "visible"    # I

    .line 446
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x758b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 447
    return-void
.end method
