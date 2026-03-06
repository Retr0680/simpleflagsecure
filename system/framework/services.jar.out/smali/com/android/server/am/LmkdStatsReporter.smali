.class public final Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "LmkdStatsReporter.java"


# static fields
.field private static final DIRECT_RECL_AND_THRASHING:I = 0x5

.field private static final DIRECT_RECL_STUCK:I = 0x9

.field public static final KILL_OCCURRED_MSG_SIZE:I = 0x50

.field private static final LOW_FILECACHE_AFTER_THRASHING:I = 0x7

.field private static final LOW_MEM:I = 0x8

.field private static final LOW_MEM_AND_SWAP:I = 0x3

.field private static final LOW_MEM_AND_SWAP_UTIL:I = 0x6

.field private static final LOW_MEM_AND_THRASHING:I = 0x4

.field private static final LOW_SWAP_AND_THRASHING:I = 0x2

.field private static final NOT_RESPONDING:I = 0x1

.field private static final PRESSURE_AFTER_KILL:I = 0x0

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logKillOccurred(Ljava/io/DataInputStream;II)V
    .locals 26
    .param p0, "inputData"    # Ljava/io/DataInputStream;
    .param p1, "totalForegroundServices"    # I
    .param p2, "procsWithForegroundServices"    # I

    .line 57
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    move-wide v6, v0

    .line 58
    .local v6, "pgFault":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    .line 59
    .local v8, "pgMajFault":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    .line 60
    .local v10, "rssInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    .line 61
    .local v12, "cacheInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 62
    .local v14, "swapInBytes":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v16

    .line 63
    .local v16, "processStartTimeNS":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 64
    .local v3, "uid":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 65
    .local v5, "oomScore":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 66
    .local v18, "minOomScore":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    .line 67
    .local v19, "freeMemKb":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 68
    .local v20, "freeSwapKb":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 69
    .local v0, "killReason":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 70
    .local v22, "thrashing":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    .line 71
    .local v23, "maxThrashing":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "procName":Ljava/lang/String;
    nop

    .line 74
    invoke-static {v0}, Lcom/android/server/am/LmkdStatsReporter;->mapKillReason(I)I

    move-result v21

    .line 72
    const/16 v2, 0x33

    move/from16 v24, p1

    move/from16 v25, p2

    invoke-static/range {v2 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "killReason":I
    .end local v3    # "uid":I
    .end local v4    # "procName":Ljava/lang/String;
    .end local v5    # "oomScore":I
    .end local v6    # "pgFault":J
    .end local v8    # "pgMajFault":J
    .end local v10    # "rssInBytes":J
    .end local v12    # "cacheInBytes":J
    .end local v14    # "swapInBytes":J
    .end local v16    # "processStartTimeNS":J
    .end local v18    # "minOomScore":I
    .end local v19    # "freeMemKb":I
    .end local v20    # "freeSwapKb":I
    .end local v22    # "thrashing":I
    .end local v23    # "maxThrashing":I
    nop

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private static mapKillReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 103
    :pswitch_0
    const/16 v0, 0xa

    return v0

    .line 101
    :pswitch_1
    const/16 v0, 0x9

    return v0

    .line 99
    :pswitch_2
    const/16 v0, 0x8

    return v0

    .line 97
    :pswitch_3
    const/4 v0, 0x7

    return v0

    .line 95
    :pswitch_4
    const/4 v0, 0x6

    return v0

    .line 93
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 91
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 89
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 87
    :pswitch_8
    const/4 v0, 0x2

    return v0

    .line 85
    :pswitch_9
    const/4 v0, 0x1

    return v0

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
.end method
