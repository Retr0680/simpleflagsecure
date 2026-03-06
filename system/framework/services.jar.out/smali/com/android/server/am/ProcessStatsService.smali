.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessStatsService$LocalService;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-v2-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mInjectedScreenState:Ljava/lang/Boolean;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field final mLock:Ljava/lang/Object;

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z


# direct methods
.method public static synthetic $r8$lambda$gFOgl7-fhr_FeWQN9TFsgKRPU8g(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->lambda$scheduleRequestPssAllProcs$0(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUidProcStateStatsOverTime(Lcom/android/server/am/ProcessStatsService;J)Landroid/util/SparseArray;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mperformWriteState(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteStateLocked(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 75
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .line 124
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 125
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 126
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 130
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 143
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "aggregateHours"    # I
    .param p5, "now"    # J

    .line 1386
    mul-int/lit8 v0, p4, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1388
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 1389
    return-void

    .line 1391
    :cond_0
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1392
    .local v1, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1393
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1394
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1395
    return-void

    .line 1397
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1398
    .local v3, "token":J
    const/16 v5, 0x1f

    invoke-virtual {v1, p1, p5, p6, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1399
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1400
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z
    .param p12, "section"    # I

    .line 865
    const-wide/16 v2, 0x3c

    mul-long v4, p2, v2

    mul-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 867
    .local v10, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v10, :cond_0

    .line 868
    const-string v0, "Unable to build stats!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    return-void

    .line 871
    :cond_0
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 872
    .local v0, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v10}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v11, v2

    .line 873
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v0, v11}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 874
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 875
    const-string v2, "Failure reading: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    return-void

    .line 878
    :cond_1
    if-eqz p7, :cond_2

    .line 879
    move-object/from16 v2, p6

    move/from16 v9, p12

    invoke-virtual {v0, p1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_1

    .line 881
    :cond_2
    move-object/from16 v2, p6

    move/from16 v9, p12

    if-nez p8, :cond_3

    if-eqz p9, :cond_4

    :cond_3
    goto :goto_0

    .line 885
    :cond_4
    move-object v1, p1

    move-wide/from16 v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 882
    :goto_0
    xor-int/lit8 v5, p9, 0x1

    move-object v1, p1

    move-wide/from16 v3, p4

    move-object/from16 v2, p6

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 888
    :goto_1
    return-void
.end method

.method private dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    move-object/from16 v5, p8

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v11

    .line 510
    .local v11, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 511
    if-eqz p2, :cond_0

    .line 512
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    :cond_0
    move-object/from16 v10, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 516
    const/4 v1, 0x1

    return v1

    .line 518
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 891
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 914
    const-string v0, "    options can be combined to select desired stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 915
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 40
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 953
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 955
    .local v3, "now":J
    const/4 v0, 0x0

    .line 956
    .local v0, "isCheckin":Z
    const/4 v5, 0x0

    .line 957
    .local v5, "isCompact":Z
    const/4 v6, 0x0

    .line 958
    .local v6, "isCsv":Z
    const/4 v7, 0x0

    .line 959
    .local v7, "currentOnly":Z
    const/4 v8, 0x0

    .line 960
    .local v8, "dumpDetails":Z
    const/4 v9, 0x0

    .line 961
    .local v9, "dumpFullDetails":Z
    const/4 v10, 0x0

    .line 962
    .local v10, "dumpAll":Z
    const/4 v11, 0x0

    .line 963
    .local v11, "quit":Z
    const/4 v12, 0x0

    .line 964
    .local v12, "aggregateHours":I
    const/4 v13, 0x0

    .line 965
    .local v13, "lastIndex":I
    const/4 v15, 0x2

    .line 966
    .local v15, "maxNum":I
    const/16 v16, 0x0

    .line 967
    .local v16, "activeOnly":Z
    const/16 v17, 0x0

    .line 968
    .local v17, "reqPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 969
    .local v18, "csvSepScreenStats":Z
    move/from16 v19, v5

    .end local v5    # "isCompact":Z
    .local v19, "isCompact":Z
    const/4 v5, 0x0

    move/from16 v20, v0

    .end local v0    # "isCheckin":Z
    .local v20, "isCheckin":Z
    const/4 v0, 0x4

    filled-new-array {v5, v0}, [I

    move-result-object v21

    .line 970
    .local v21, "csvScreenStats":[I
    const/16 v22, 0x0

    .line 971
    .local v22, "csvSepMemStats":Z
    const/16 v23, 0x3

    filled-new-array/range {v23 .. v23}, [I

    move-result-object v23

    .line 972
    .local v23, "csvMemStats":[I
    const/16 v24, 0x1

    .line 973
    .local v24, "csvSepProcStats":Z
    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 974
    .local v25, "csvProcStats":[I
    const/16 v26, 0x1f

    .line 975
    .local v26, "section":I
    move/from16 v27, v6

    .end local v6    # "isCsv":Z
    .local v27, "isCsv":Z
    if-eqz v14, :cond_27

    .line 976
    const/16 v28, 0x0

    move/from16 v39, v28

    move/from16 v28, v5

    move/from16 v5, v39

    .local v5, "i":I
    :goto_0
    array-length v0, v14

    if-ge v5, v0, :cond_26

    .line 977
    aget-object v6, v14, v5

    .line 978
    .local v6, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    const/4 v0, 0x1

    move/from16 v20, v0

    move-wide/from16 v31, v3

    .end local v20    # "isCheckin":Z
    .restart local v0    # "isCheckin":Z
    goto/16 :goto_6

    .line 980
    .end local v0    # "isCheckin":Z
    .restart local v20    # "isCheckin":Z
    :cond_0
    const-string v0, "-c"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    const/4 v0, 0x1

    move/from16 v19, v0

    move-wide/from16 v31, v3

    .end local v19    # "isCompact":Z
    .local v0, "isCompact":Z
    goto/16 :goto_6

    .line 982
    .end local v0    # "isCompact":Z
    .restart local v19    # "isCompact":Z
    :cond_1
    const-string v0, "--csv"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    const/4 v0, 0x1

    move/from16 v27, v0

    move-wide/from16 v31, v3

    .end local v27    # "isCsv":Z
    .local v0, "isCsv":Z
    goto/16 :goto_6

    .line 984
    .end local v0    # "isCsv":Z
    .restart local v27    # "isCsv":Z
    :cond_2
    const-string v0, "--csv-screen"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 985
    add-int/lit8 v5, v5, 0x1

    .line 986
    array-length v0, v14

    if-lt v5, v0, :cond_3

    .line 987
    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 989
    return-void

    .line 991
    :cond_3
    move-wide/from16 v31, v3

    const/4 v3, 0x1

    .end local v3    # "now":J
    .local v31, "now":J
    new-array v0, v3, [Z

    .line 992
    .local v0, "sep":[Z
    new-array v4, v3, [Ljava/lang/String;

    .line 993
    .local v4, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    move/from16 v33, v5

    .end local v5    # "i":I
    .local v33, "i":I
    aget-object v5, v14, v33

    move/from16 v34, v7

    const/4 v7, 0x4

    .end local v7    # "currentOnly":Z
    .local v34, "currentOnly":Z
    invoke-static {v3, v7, v5, v0, v4}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    .line 995
    .end local v21    # "csvScreenStats":[I
    .local v3, "csvScreenStats":[I
    if-nez v3, :cond_4

    .line 996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v14, v33

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v28

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 998
    return-void

    .line 1000
    :cond_4
    aget-boolean v0, v0, v28

    .line 1001
    .end local v4    # "error":[Ljava/lang/String;
    .end local v18    # "csvSepScreenStats":Z
    .local v0, "csvSepScreenStats":Z
    move/from16 v18, v0

    move-object/from16 v21, v3

    move/from16 v5, v33

    move/from16 v7, v34

    goto/16 :goto_6

    .end local v0    # "csvSepScreenStats":Z
    .end local v31    # "now":J
    .end local v33    # "i":I
    .end local v34    # "currentOnly":Z
    .local v3, "now":J
    .restart local v5    # "i":I
    .restart local v7    # "currentOnly":Z
    .restart local v18    # "csvSepScreenStats":Z
    .restart local v21    # "csvScreenStats":[I
    :cond_5
    move-wide/from16 v31, v3

    move/from16 v34, v7

    const/4 v7, 0x4

    .end local v3    # "now":J
    .end local v7    # "currentOnly":Z
    .restart local v31    # "now":J
    .restart local v34    # "currentOnly":Z
    const-string v0, "--csv-mem"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1002
    add-int/lit8 v5, v5, 0x1

    .line 1003
    array-length v0, v14

    if-lt v5, v0, :cond_6

    .line 1004
    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1006
    return-void

    .line 1008
    :cond_6
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 1009
    .local v0, "sep":[Z
    new-array v4, v3, [Ljava/lang/String;

    .line 1010
    .restart local v4    # "error":[Ljava/lang/String;
    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    move/from16 v33, v5

    .end local v5    # "i":I
    .restart local v33    # "i":I
    aget-object v5, v14, v33

    invoke-static {v7, v3, v5, v0, v4}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v5

    .line 1012
    .end local v23    # "csvMemStats":[I
    .local v5, "csvMemStats":[I
    if-nez v5, :cond_7

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in \""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v14, v33

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v28

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1015
    return-void

    .line 1017
    :cond_7
    aget-boolean v0, v0, v28

    .line 1018
    .end local v4    # "error":[Ljava/lang/String;
    .end local v22    # "csvSepMemStats":Z
    .local v0, "csvSepMemStats":Z
    move/from16 v22, v0

    move-object/from16 v23, v5

    move/from16 v5, v33

    move/from16 v7, v34

    goto/16 :goto_6

    .end local v0    # "csvSepMemStats":Z
    .end local v33    # "i":I
    .local v5, "i":I
    .restart local v22    # "csvSepMemStats":Z
    .restart local v23    # "csvMemStats":[I
    :cond_8
    const-string v0, "--csv-proc"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1019
    add-int/lit8 v5, v5, 0x1

    .line 1020
    array-length v0, v14

    if-lt v5, v0, :cond_9

    .line 1021
    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1023
    return-void

    .line 1025
    :cond_9
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 1026
    .local v0, "sep":[Z
    new-array v4, v3, [Ljava/lang/String;

    .line 1027
    .restart local v4    # "error":[Ljava/lang/String;
    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    move/from16 v33, v5

    .end local v5    # "i":I
    .restart local v33    # "i":I
    aget-object v5, v14, v33

    invoke-static {v7, v3, v5, v0, v4}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v5

    .line 1029
    .end local v25    # "csvProcStats":[I
    .local v5, "csvProcStats":[I
    if-nez v5, :cond_a

    .line 1030
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in \""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v14, v33

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v28

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1032
    return-void

    .line 1034
    :cond_a
    aget-boolean v0, v0, v28

    .line 1035
    .end local v4    # "error":[Ljava/lang/String;
    .end local v24    # "csvSepProcStats":Z
    .local v0, "csvSepProcStats":Z
    move/from16 v24, v0

    move-object/from16 v25, v5

    move/from16 v5, v33

    move/from16 v7, v34

    goto/16 :goto_6

    .end local v0    # "csvSepProcStats":Z
    .end local v33    # "i":I
    .local v5, "i":I
    .restart local v24    # "csvSepProcStats":Z
    .restart local v25    # "csvProcStats":[I
    :cond_b
    const-string v0, "--details"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1036
    const/4 v0, 0x1

    move v8, v0

    move/from16 v7, v34

    .end local v8    # "dumpDetails":Z
    .local v0, "dumpDetails":Z
    goto/16 :goto_6

    .line 1037
    .end local v0    # "dumpDetails":Z
    .restart local v8    # "dumpDetails":Z
    :cond_c
    const-string v0, "--full-details"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1038
    const/4 v0, 0x1

    move v9, v0

    move/from16 v7, v34

    .end local v9    # "dumpFullDetails":Z
    .local v0, "dumpFullDetails":Z
    goto/16 :goto_6

    .line 1039
    .end local v0    # "dumpFullDetails":Z
    .restart local v9    # "dumpFullDetails":Z
    :cond_d
    const-string v0, "--hours"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1040
    add-int/lit8 v5, v5, 0x1

    .line 1041
    array-length v0, v14

    if-lt v5, v0, :cond_e

    .line 1042
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1044
    return-void

    .line 1047
    :cond_e
    :try_start_0
    aget-object v0, v14, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v12    # "aggregateHours":I
    .local v0, "aggregateHours":I
    move v12, v0

    move/from16 v7, v34

    goto/16 :goto_6

    .line 1048
    .end local v0    # "aggregateHours":I
    .restart local v12    # "aggregateHours":I
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --hours argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v14, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1051
    return-void

    .line 1053
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string v0, "--last"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1054
    add-int/lit8 v5, v5, 0x1

    .line 1055
    array-length v0, v14

    if-lt v5, v0, :cond_10

    .line 1056
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1058
    return-void

    .line 1061
    :cond_10
    :try_start_1
    aget-object v0, v14, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1066
    .end local v13    # "lastIndex":I
    .local v0, "lastIndex":I
    move v13, v0

    move/from16 v7, v34

    goto/16 :goto_6

    .line 1062
    .end local v0    # "lastIndex":I
    .restart local v13    # "lastIndex":I
    :catch_1
    move-exception v0

    .line 1063
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --last argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v14, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1065
    return-void

    .line 1067
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string v0, "--max"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1068
    add-int/lit8 v5, v5, 0x1

    .line 1069
    array-length v0, v14

    if-lt v5, v0, :cond_12

    .line 1070
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1072
    return-void

    .line 1075
    :cond_12
    :try_start_2
    aget-object v0, v14, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1080
    .end local v15    # "maxNum":I
    .local v0, "maxNum":I
    move v15, v0

    move/from16 v7, v34

    goto/16 :goto_6

    .line 1076
    .end local v0    # "maxNum":I
    .restart local v15    # "maxNum":I
    :catch_2
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --max argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v14, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1079
    return-void

    .line 1081
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string v0, "--active"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1082
    const/4 v0, 0x1

    .line 1083
    .end local v16    # "activeOnly":Z
    .local v0, "activeOnly":Z
    const/4 v3, 0x1

    move/from16 v16, v0

    move v7, v3

    .end local v34    # "currentOnly":Z
    .local v3, "currentOnly":Z
    goto/16 :goto_6

    .line 1084
    .end local v0    # "activeOnly":Z
    .end local v3    # "currentOnly":Z
    .restart local v16    # "activeOnly":Z
    .restart local v34    # "currentOnly":Z
    :cond_14
    const-string v0, "--current"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1085
    const/4 v0, 0x1

    move v7, v0

    .end local v34    # "currentOnly":Z
    .local v0, "currentOnly":Z
    goto/16 :goto_6

    .line 1086
    .end local v0    # "currentOnly":Z
    .restart local v34    # "currentOnly":Z
    :cond_15
    const-string v0, "--commit"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1087
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1088
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v7, 0x1

    or-int/2addr v4, v7

    iput v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1089
    invoke-direct {v1, v7, v7}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 1090
    const-string v0, "Process stats committed."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    const/4 v11, 0x1

    .line 1092
    monitor-exit v3

    move/from16 v7, v34

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1093
    :cond_16
    const-string v0, "--section"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1094
    add-int/lit8 v5, v5, 0x1

    .line 1095
    array-length v0, v14

    if-lt v5, v0, :cond_17

    .line 1096
    const-string v0, "Error: argument required for --section"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1098
    return-void

    .line 1100
    :cond_17
    aget-object v0, v14, v5

    invoke-static {v0}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    move/from16 v7, v34

    .end local v26    # "section":I
    .local v0, "section":I
    goto/16 :goto_6

    .line 1101
    .end local v0    # "section":I
    .restart local v26    # "section":I
    :cond_18
    const-string v0, "--clear"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1102
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1103
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 1104
    move/from16 v4, v28

    const/4 v7, 0x1

    invoke-direct {v1, v7, v4}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 1105
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1107
    :try_start_5
    invoke-direct {v1, v4, v7, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1108
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1a

    .line 1109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .local v4, "fi":I
    :goto_1
    if-ltz v4, :cond_19

    .line 1110
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v35, v0

    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v35, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v33

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1109
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v35

    goto :goto_1

    .line 1114
    .end local v4    # "fi":I
    .end local v35    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1109
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "fi":I
    :cond_19
    move-object/from16 v35, v0

    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v35    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    .line 1108
    .end local v4    # "fi":I
    .end local v35    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1a
    move-object/from16 v35, v0

    .line 1114
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1115
    nop

    .line 1116
    const-string v0, "All process stats cleared."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    const/4 v11, 0x1

    .line 1118
    monitor-exit v3

    move/from16 v7, v34

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1114
    :goto_3
    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1115
    nop

    .end local v5    # "i":I
    .end local v6    # "arg":Ljava/lang/String;
    .end local v8    # "dumpDetails":Z
    .end local v9    # "dumpFullDetails":Z
    .end local v10    # "dumpAll":Z
    .end local v11    # "quit":Z
    .end local v12    # "aggregateHours":I
    .end local v13    # "lastIndex":I
    .end local v15    # "maxNum":I
    .end local v16    # "activeOnly":Z
    .end local v17    # "reqPackage":Ljava/lang/String;
    .end local v18    # "csvSepScreenStats":Z
    .end local v19    # "isCompact":Z
    .end local v20    # "isCheckin":Z
    .end local v21    # "csvScreenStats":[I
    .end local v22    # "csvSepMemStats":Z
    .end local v23    # "csvMemStats":[I
    .end local v24    # "csvSepProcStats":Z
    .end local v25    # "csvProcStats":[I
    .end local v26    # "section":I
    .end local v27    # "isCsv":Z
    .end local v31    # "now":J
    .end local v34    # "currentOnly":Z
    .end local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    throw v0

    .line 1118
    .restart local v5    # "i":I
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v8    # "dumpDetails":Z
    .restart local v9    # "dumpFullDetails":Z
    .restart local v10    # "dumpAll":Z
    .restart local v11    # "quit":Z
    .restart local v12    # "aggregateHours":I
    .restart local v13    # "lastIndex":I
    .restart local v15    # "maxNum":I
    .restart local v16    # "activeOnly":Z
    .restart local v17    # "reqPackage":Ljava/lang/String;
    .restart local v18    # "csvSepScreenStats":Z
    .restart local v19    # "isCompact":Z
    .restart local v20    # "isCheckin":Z
    .restart local v21    # "csvScreenStats":[I
    .restart local v22    # "csvSepMemStats":Z
    .restart local v23    # "csvMemStats":[I
    .restart local v24    # "csvSepProcStats":Z
    .restart local v25    # "csvProcStats":[I
    .restart local v26    # "section":I
    .restart local v27    # "isCsv":Z
    .restart local v31    # "now":J
    .restart local v34    # "currentOnly":Z
    .restart local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "args":[Ljava/lang/String;
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1119
    :cond_1b
    const-string v0, "--write"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1120
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1121
    :try_start_7
    invoke-direct {v1}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 1122
    const-string v0, "Process stats written."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    const/4 v11, 0x1

    .line 1124
    monitor-exit v3

    move/from16 v7, v34

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 1125
    :cond_1c
    const-string v0, "--read"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1126
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1127
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1129
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-direct {v1, v0, v4}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1130
    const-string v0, "Process stats read."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1131
    const/4 v11, 0x1

    .line 1133
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1134
    nop

    .line 1135
    monitor-exit v3

    move/from16 v7, v34

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 1133
    :catchall_5
    move-exception v0

    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1134
    nop

    .end local v5    # "i":I
    .end local v6    # "arg":Ljava/lang/String;
    .end local v8    # "dumpDetails":Z
    .end local v9    # "dumpFullDetails":Z
    .end local v10    # "dumpAll":Z
    .end local v11    # "quit":Z
    .end local v12    # "aggregateHours":I
    .end local v13    # "lastIndex":I
    .end local v15    # "maxNum":I
    .end local v16    # "activeOnly":Z
    .end local v17    # "reqPackage":Ljava/lang/String;
    .end local v18    # "csvSepScreenStats":Z
    .end local v19    # "isCompact":Z
    .end local v20    # "isCheckin":Z
    .end local v21    # "csvScreenStats":[I
    .end local v22    # "csvSepMemStats":Z
    .end local v23    # "csvMemStats":[I
    .end local v24    # "csvSepProcStats":Z
    .end local v25    # "csvProcStats":[I
    .end local v26    # "section":I
    .end local v27    # "isCsv":Z
    .end local v31    # "now":J
    .end local v34    # "currentOnly":Z
    .end local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    throw v0

    .line 1135
    .restart local v5    # "i":I
    .restart local v6    # "arg":Ljava/lang/String;
    .restart local v8    # "dumpDetails":Z
    .restart local v9    # "dumpFullDetails":Z
    .restart local v10    # "dumpAll":Z
    .restart local v11    # "quit":Z
    .restart local v12    # "aggregateHours":I
    .restart local v13    # "lastIndex":I
    .restart local v15    # "maxNum":I
    .restart local v16    # "activeOnly":Z
    .restart local v17    # "reqPackage":Ljava/lang/String;
    .restart local v18    # "csvSepScreenStats":Z
    .restart local v19    # "isCompact":Z
    .restart local v20    # "isCheckin":Z
    .restart local v21    # "csvScreenStats":[I
    .restart local v22    # "csvSepMemStats":Z
    .restart local v23    # "csvMemStats":[I
    .restart local v24    # "csvSepProcStats":Z
    .restart local v25    # "csvProcStats":[I
    .restart local v26    # "section":I
    .restart local v27    # "isCsv":Z
    .restart local v31    # "now":J
    .restart local v34    # "currentOnly":Z
    .restart local p0    # "this":Lcom/android/server/am/ProcessStatsService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "args":[Ljava/lang/String;
    :goto_5
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 1136
    :cond_1d
    const-string v0, "--start-testing"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1137
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1138
    const-string v0, "Started high frequency sampling."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    const/4 v0, 0x1

    move v11, v0

    move/from16 v7, v34

    .end local v11    # "quit":Z
    .local v0, "quit":Z
    goto/16 :goto_6

    .line 1140
    .end local v0    # "quit":Z
    .restart local v11    # "quit":Z
    :cond_1e
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1141
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1142
    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    const/4 v0, 0x1

    move v11, v0

    move/from16 v7, v34

    .end local v11    # "quit":Z
    .restart local v0    # "quit":Z
    goto/16 :goto_6

    .line 1144
    .end local v0    # "quit":Z
    .restart local v11    # "quit":Z
    :cond_1f
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1145
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1146
    const/16 v30, 0x1

    :try_start_b
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1147
    monitor-exit v3

    .line 1148
    const/4 v0, 0x1

    move v11, v0

    move/from16 v7, v34

    .end local v11    # "quit":Z
    .restart local v0    # "quit":Z
    goto/16 :goto_6

    .line 1147
    .end local v0    # "quit":Z
    .restart local v11    # "quit":Z
    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1149
    :cond_20
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1150
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1151
    const/16 v28, 0x0

    :try_start_c
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1152
    monitor-exit v3

    .line 1153
    const/4 v0, 0x1

    move v11, v0

    move/from16 v7, v34

    .end local v11    # "quit":Z
    .restart local v0    # "quit":Z
    goto :goto_6

    .line 1152
    .end local v0    # "quit":Z
    .restart local v11    # "quit":Z
    :catchall_7
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    .line 1154
    :cond_21
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1155
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1156
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1157
    monitor-exit v3

    .line 1158
    const/4 v0, 0x1

    move v11, v0

    move/from16 v7, v34

    .end local v11    # "quit":Z
    .restart local v0    # "quit":Z
    goto :goto_6

    .line 1157
    .end local v0    # "quit":Z
    .restart local v11    # "quit":Z
    :catchall_8
    move-exception v0

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw v0

    .line 1159
    :cond_22
    const-string v0, "-h"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1160
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1161
    return-void

    .line 1162
    :cond_23
    const-string v0, "-a"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1163
    const/4 v0, 0x1

    .line 1164
    .end local v8    # "dumpDetails":Z
    .local v0, "dumpDetails":Z
    const/4 v3, 0x1

    move v8, v0

    move v10, v3

    move/from16 v7, v34

    .end local v10    # "dumpAll":Z
    .local v3, "dumpAll":Z
    goto :goto_6

    .line 1165
    .end local v0    # "dumpDetails":Z
    .end local v3    # "dumpAll":Z
    .restart local v8    # "dumpDetails":Z
    .restart local v10    # "dumpAll":Z
    :cond_24
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_25

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    invoke-static {v2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1168
    return-void

    .line 1171
    :cond_25
    move-object v0, v6

    .line 1176
    .end local v17    # "reqPackage":Ljava/lang/String;
    .local v0, "reqPackage":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v17, v0

    move v8, v3

    move/from16 v7, v34

    .line 976
    .end local v0    # "reqPackage":Ljava/lang/String;
    .end local v6    # "arg":Ljava/lang/String;
    .end local v34    # "currentOnly":Z
    .restart local v7    # "currentOnly":Z
    .restart local v17    # "reqPackage":Ljava/lang/String;
    :goto_6
    const/16 v30, 0x1

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v3, v31

    const/4 v0, 0x4

    const/16 v28, 0x0

    goto/16 :goto_0

    .end local v31    # "now":J
    .local v3, "now":J
    :cond_26
    move-wide/from16 v31, v3

    move/from16 v34, v7

    .end local v3    # "now":J
    .end local v7    # "currentOnly":Z
    .restart local v31    # "now":J
    .restart local v34    # "currentOnly":Z
    move v3, v13

    move-object/from16 v7, v17

    move/from16 v4, v18

    move-object/from16 v5, v21

    move/from16 v6, v22

    move v13, v8

    move/from16 v17, v11

    move/from16 v18, v15

    move/from16 v21, v16

    move-object/from16 v8, v23

    move v15, v9

    move/from16 v16, v10

    move-object/from16 v9, v25

    goto :goto_7

    .line 975
    .end local v5    # "i":I
    .end local v31    # "now":J
    .end local v34    # "currentOnly":Z
    .restart local v3    # "now":J
    .restart local v7    # "currentOnly":Z
    :cond_27
    move-wide/from16 v31, v3

    .end local v3    # "now":J
    .restart local v31    # "now":J
    move/from16 v34, v7

    move v3, v13

    move-object/from16 v7, v17

    move/from16 v4, v18

    move-object/from16 v5, v21

    move/from16 v6, v22

    move v13, v8

    move/from16 v17, v11

    move/from16 v18, v15

    move/from16 v21, v16

    move-object/from16 v8, v23

    move v15, v9

    move/from16 v16, v10

    move-object/from16 v9, v25

    .line 1181
    .end local v10    # "dumpAll":Z
    .end local v11    # "quit":Z
    .end local v22    # "csvSepMemStats":Z
    .end local v23    # "csvMemStats":[I
    .end local v25    # "csvProcStats":[I
    .local v3, "lastIndex":I
    .local v4, "csvSepScreenStats":Z
    .local v5, "csvScreenStats":[I
    .local v6, "csvSepMemStats":Z
    .local v7, "reqPackage":Ljava/lang/String;
    .local v8, "csvMemStats":[I
    .local v9, "csvProcStats":[I
    .local v13, "dumpDetails":Z
    .local v15, "dumpFullDetails":Z
    .local v16, "dumpAll":Z
    .local v17, "quit":Z
    .local v18, "maxNum":I
    .local v21, "activeOnly":Z
    .restart local v34    # "currentOnly":Z
    :goto_7
    if-eqz v17, :cond_28

    .line 1182
    return-void

    .line 1185
    :cond_28
    if-eqz v27, :cond_2c

    .line 1186
    const-string v0, "Processes running summed over"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    if-nez v4, :cond_29

    .line 1188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v10, v5

    if-ge v0, v10, :cond_29

    .line 1189
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1190
    aget v10, v5, v0

    invoke-static {v2, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1193
    .end local v0    # "i":I
    :cond_29
    if-nez v6, :cond_2a

    .line 1194
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    array-length v10, v8

    if-ge v0, v10, :cond_2a

    .line 1195
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1196
    aget v10, v8, v0

    invoke-static {v2, v10}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1194
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1199
    .end local v0    # "i":I
    :cond_2a
    if-nez v24, :cond_2b

    .line 1200
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    array-length v10, v9

    if-ge v0, v10, :cond_2b

    .line 1201
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1202
    sget-object v10, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v11, v9, v0

    aget-object v10, v10, v11

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1205
    .end local v0    # "i":I
    :cond_2b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 1206
    iget-object v10, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1207
    move v11, v3

    .end local v3    # "lastIndex":I
    .local v11, "lastIndex":I
    const/4 v3, 0x0

    move-object/from16 v23, v10

    move v14, v11

    move/from16 v22, v15

    move-wide/from16 v10, v31

    move v15, v12

    move-object v12, v7

    move-object v7, v8

    move/from16 v8, v24

    .end local v11    # "lastIndex":I
    .end local v24    # "csvSepProcStats":Z
    .end local v31    # "now":J
    .local v7, "csvMemStats":[I
    .local v8, "csvSepProcStats":Z
    .local v10, "now":J
    .local v12, "reqPackage":Ljava/lang/String;
    .local v14, "lastIndex":I
    .local v15, "aggregateHours":I
    .local v22, "dumpFullDetails":Z
    :try_start_e
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    move-object v1, v2

    move/from16 v29, v4

    move-object/from16 v24, v5

    move/from16 v33, v6

    move-object/from16 v32, v7

    move/from16 v31, v8

    move-object/from16 v25, v9

    move-wide v3, v10

    move-object v2, v12

    .line 1227
    .end local v4    # "csvSepScreenStats":Z
    .end local v5    # "csvScreenStats":[I
    .end local v6    # "csvSepMemStats":Z
    .end local v7    # "csvMemStats":[I
    .end local v8    # "csvSepProcStats":Z
    .end local v9    # "csvProcStats":[I
    .end local v10    # "now":J
    .end local v12    # "reqPackage":Ljava/lang/String;
    .local v2, "reqPackage":Ljava/lang/String;
    .local v3, "now":J
    .local v24, "csvScreenStats":[I
    .restart local v25    # "csvProcStats":[I
    .local v29, "csvSepScreenStats":Z
    .local v31, "csvSepProcStats":Z
    .local v32, "csvMemStats":[I
    .local v33, "csvSepMemStats":Z
    :try_start_f
    monitor-exit v23

    .line 1228
    return-void

    .line 1227
    :catchall_9
    move-exception v0

    goto :goto_b

    .end local v2    # "reqPackage":Ljava/lang/String;
    .end local v3    # "now":J
    .end local v24    # "csvScreenStats":[I
    .end local v25    # "csvProcStats":[I
    .end local v29    # "csvSepScreenStats":Z
    .end local v31    # "csvSepProcStats":Z
    .end local v32    # "csvMemStats":[I
    .end local v33    # "csvSepMemStats":Z
    .restart local v4    # "csvSepScreenStats":Z
    .restart local v5    # "csvScreenStats":[I
    .restart local v6    # "csvSepMemStats":Z
    .restart local v7    # "csvMemStats":[I
    .restart local v8    # "csvSepProcStats":Z
    .restart local v9    # "csvProcStats":[I
    .restart local v10    # "now":J
    .restart local v12    # "reqPackage":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object v1, v2

    move/from16 v29, v4

    move-object/from16 v24, v5

    move/from16 v33, v6

    move-object/from16 v32, v7

    move/from16 v31, v8

    move-object/from16 v25, v9

    move-wide v3, v10

    move-object v2, v12

    .end local v4    # "csvSepScreenStats":Z
    .end local v5    # "csvScreenStats":[I
    .end local v6    # "csvSepMemStats":Z
    .end local v7    # "csvMemStats":[I
    .end local v8    # "csvSepProcStats":Z
    .end local v9    # "csvProcStats":[I
    .end local v10    # "now":J
    .end local v12    # "reqPackage":Ljava/lang/String;
    .restart local v2    # "reqPackage":Ljava/lang/String;
    .restart local v3    # "now":J
    .restart local v24    # "csvScreenStats":[I
    .restart local v25    # "csvProcStats":[I
    .restart local v29    # "csvSepScreenStats":Z
    .restart local v31    # "csvSepProcStats":Z
    .restart local v32    # "csvMemStats":[I
    .restart local v33    # "csvSepMemStats":Z
    :goto_b
    monitor-exit v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw v0

    .line 1229
    .end local v2    # "reqPackage":Ljava/lang/String;
    .end local v14    # "lastIndex":I
    .end local v22    # "dumpFullDetails":Z
    .end local v25    # "csvProcStats":[I
    .end local v29    # "csvSepScreenStats":Z
    .end local v32    # "csvMemStats":[I
    .end local v33    # "csvSepMemStats":Z
    .local v3, "lastIndex":I
    .restart local v4    # "csvSepScreenStats":Z
    .restart local v5    # "csvScreenStats":[I
    .restart local v6    # "csvSepMemStats":Z
    .local v7, "reqPackage":Ljava/lang/String;
    .local v8, "csvMemStats":[I
    .restart local v9    # "csvProcStats":[I
    .local v12, "aggregateHours":I
    .local v15, "dumpFullDetails":Z
    .local v24, "csvSepProcStats":Z
    .local v31, "now":J
    :cond_2c
    move-object v1, v2

    move v14, v3

    move/from16 v29, v4

    move/from16 v33, v6

    move-object v2, v7

    move-object/from16 v25, v9

    move/from16 v22, v15

    move-wide/from16 v3, v31

    move-object/from16 v32, v8

    move v15, v12

    move/from16 v31, v24

    move-object/from16 v24, v5

    .end local v4    # "csvSepScreenStats":Z
    .end local v5    # "csvScreenStats":[I
    .end local v6    # "csvSepMemStats":Z
    .end local v7    # "reqPackage":Ljava/lang/String;
    .end local v8    # "csvMemStats":[I
    .end local v9    # "csvProcStats":[I
    .end local v12    # "aggregateHours":I
    .restart local v2    # "reqPackage":Ljava/lang/String;
    .local v3, "now":J
    .restart local v14    # "lastIndex":I
    .local v15, "aggregateHours":I
    .restart local v22    # "dumpFullDetails":Z
    .local v24, "csvScreenStats":[I
    .restart local v25    # "csvProcStats":[I
    .restart local v29    # "csvSepScreenStats":Z
    .local v31, "csvSepProcStats":Z
    .restart local v32    # "csvMemStats":[I
    .restart local v33    # "csvSepMemStats":Z
    if-eqz v15, :cond_2d

    .line 1230
    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1231
    move-wide v5, v3

    .end local v3    # "now":J
    .local v5, "now":J
    int-to-long v3, v15

    move-object v7, v2

    move v9, v13

    move/from16 v11, v16

    move/from16 v8, v19

    move/from16 v12, v21

    move/from16 v10, v22

    move/from16 v13, v26

    move-object v2, v1

    move-object/from16 v1, p0

    .end local v2    # "reqPackage":Ljava/lang/String;
    .end local v16    # "dumpAll":Z
    .end local v19    # "isCompact":Z
    .end local v21    # "activeOnly":Z
    .end local v22    # "dumpFullDetails":Z
    .end local v26    # "section":I
    .restart local v7    # "reqPackage":Ljava/lang/String;
    .local v8, "isCompact":Z
    .local v9, "dumpDetails":Z
    .local v10, "dumpFullDetails":Z
    .local v11, "dumpAll":Z
    .local v12, "activeOnly":Z
    .local v13, "section":I
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1233
    move-wide v3, v5

    move v5, v12

    move-object v10, v1

    move-object v1, v2

    move-object v2, v7

    .end local v7    # "reqPackage":Ljava/lang/String;
    .end local v8    # "isCompact":Z
    .end local v10    # "dumpFullDetails":Z
    .end local v12    # "activeOnly":Z
    .restart local v2    # "reqPackage":Ljava/lang/String;
    .restart local v3    # "now":J
    .local v5, "activeOnly":Z
    .restart local v19    # "isCompact":Z
    .restart local v22    # "dumpFullDetails":Z
    return-void

    .line 1234
    .end local v5    # "activeOnly":Z
    .end local v9    # "dumpDetails":Z
    .end local v11    # "dumpAll":Z
    .local v13, "dumpDetails":Z
    .restart local v16    # "dumpAll":Z
    .restart local v21    # "activeOnly":Z
    .restart local v26    # "section":I
    :cond_2d
    move-object/from16 v10, p0

    move v9, v13

    move/from16 v11, v16

    move/from16 v5, v21

    move/from16 v13, v26

    .end local v16    # "dumpAll":Z
    .end local v21    # "activeOnly":Z
    .end local v26    # "section":I
    .restart local v5    # "activeOnly":Z
    .restart local v9    # "dumpDetails":Z
    .restart local v11    # "dumpAll":Z
    .local v13, "section":I
    if-lez v14, :cond_38

    .line 1235
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1243
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_10
    invoke-direct {v10, v6, v6, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v12, v0

    .line 1244
    .local v12, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-lt v14, v0, :cond_2e

    .line 1245
    :try_start_11
    const-string v0, "Only have "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " data sets"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1252
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1246
    return-void

    .line 1252
    .end local v12    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_b
    move-exception v0

    move/from16 v21, v9

    move/from16 v23, v11

    move v9, v13

    goto/16 :goto_f

    .line 1248
    .restart local v12    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2e
    :try_start_12
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 1249
    .local v6, "file":Landroid/util/AtomicFile;
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1250
    .local v0, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v10, v0, v6}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 1252
    iget-object v7, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1253
    nop

    .line 1256
    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v7, :cond_31

    .line 1257
    if-nez v20, :cond_2f

    if-eqz v19, :cond_30

    :cond_2f
    const-string v7, "err,"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    :cond_30
    const-string v7, "Failure reading "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    const-string v7, "; "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    return-void

    .line 1262
    :cond_31
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 1263
    .local v7, "fileStr":Ljava/lang/String;
    const-string v8, ".ci"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    .line 1264
    .local v16, "checkedIn":Z
    if-nez v20, :cond_36

    if-eqz v19, :cond_32

    move/from16 v21, v9

    move/from16 v23, v11

    move v9, v13

    move-object v11, v6

    move-object v13, v7

    goto/16 :goto_d

    .line 1268
    :cond_32
    const-string v8, "COMMITTED STATS FROM "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1269
    iget-object v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    if-eqz v16, :cond_33

    const-string v8, " (checked in)"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1271
    :cond_33
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    if-nez v9, :cond_34

    if-eqz v22, :cond_35

    :cond_34
    goto :goto_c

    .line 1279
    :cond_35
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object/from16 v1, p1

    move/from16 v21, v9

    move/from16 v23, v11

    move v9, v13

    move-object v11, v6

    move-object v13, v7

    goto :goto_e

    .line 1273
    :goto_c
    move v8, v5

    .end local v5    # "activeOnly":Z
    .local v8, "activeOnly":Z
    xor-int/lit8 v5, v22, 0x1

    move v1, v11

    move-object v11, v6

    move v6, v9

    move v9, v13

    move-object v13, v7

    move v7, v1

    move-object/from16 v1, p1

    .local v6, "dumpDetails":Z
    .local v7, "dumpAll":Z
    .local v9, "section":I
    .local v11, "file":Landroid/util/AtomicFile;
    .local v13, "fileStr":Ljava/lang/String;
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1275
    move/from16 v21, v6

    move/from16 v23, v7

    move v5, v8

    .end local v6    # "dumpDetails":Z
    .end local v7    # "dumpAll":Z
    .end local v8    # "activeOnly":Z
    .restart local v5    # "activeOnly":Z
    .local v21, "dumpDetails":Z
    .local v23, "dumpAll":Z
    if-eqz v23, :cond_37

    .line 1276
    const-string v6, "  mFile="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v10}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    .line 1264
    .end local v21    # "dumpDetails":Z
    .end local v23    # "dumpAll":Z
    .local v6, "file":Landroid/util/AtomicFile;
    .local v7, "fileStr":Ljava/lang/String;
    .local v9, "dumpDetails":Z
    .local v11, "dumpAll":Z
    .local v13, "section":I
    :cond_36
    move/from16 v21, v9

    move/from16 v23, v11

    move v9, v13

    move-object v11, v6

    move-object v13, v7

    .line 1266
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v7    # "fileStr":Ljava/lang/String;
    .local v9, "section":I
    .local v11, "file":Landroid/util/AtomicFile;
    .local v13, "fileStr":Ljava/lang/String;
    .restart local v21    # "dumpDetails":Z
    .restart local v23    # "dumpAll":Z
    :goto_d
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1282
    :cond_37
    :goto_e
    return-void

    .line 1252
    .end local v0    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v12    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "checkedIn":Z
    .end local v21    # "dumpDetails":Z
    .end local v23    # "dumpAll":Z
    .local v9, "dumpDetails":Z
    .local v11, "dumpAll":Z
    .local v13, "section":I
    :catchall_c
    move-exception v0

    move/from16 v21, v9

    move/from16 v23, v11

    move v9, v13

    .end local v11    # "dumpAll":Z
    .end local v13    # "section":I
    .local v9, "section":I
    .restart local v21    # "dumpDetails":Z
    .restart local v23    # "dumpAll":Z
    :goto_f
    iget-object v6, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1253
    throw v0

    .line 1285
    .end local v21    # "dumpDetails":Z
    .end local v23    # "dumpAll":Z
    .local v9, "dumpDetails":Z
    .restart local v11    # "dumpAll":Z
    .restart local v13    # "section":I
    :cond_38
    move/from16 v21, v9

    move/from16 v23, v11

    move v9, v13

    const/4 v7, 0x1

    .end local v11    # "dumpAll":Z
    .end local v13    # "section":I
    .local v9, "section":I
    .restart local v21    # "dumpDetails":Z
    .restart local v23    # "dumpAll":Z
    const/4 v6, 0x0

    .line 1286
    .local v6, "sepNeeded":Z
    if-nez v23, :cond_39

    if-eqz v20, :cond_3a

    :cond_39
    goto :goto_10

    :cond_3a
    move-wide/from16 v37, v3

    move/from16 v30, v7

    const/16 v28, 0x0

    goto/16 :goto_21

    :goto_10
    if-nez v34, :cond_49

    .line 1287
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1289
    if-nez v20, :cond_3b

    move v0, v7

    goto :goto_11

    :cond_3b
    const/4 v0, 0x0

    :goto_11
    const/4 v8, 0x0

    :try_start_13
    invoke-direct {v10, v8, v8, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v11, v0

    .line 1290
    .local v11, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_48

    .line 1291
    if-eqz v20, :cond_3c

    const/4 v0, 0x0

    goto :goto_12

    :cond_3c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, v0, v18

    .line 1292
    .local v0, "start":I
    :goto_12
    if-gez v0, :cond_3d

    .line 1293
    const/4 v0, 0x0

    move v12, v0

    goto :goto_13

    .line 1292
    :cond_3d
    move v12, v0

    .line 1295
    .end local v0    # "start":I
    .local v12, "start":I
    :goto_13
    move v0, v12

    move v13, v0

    .local v13, "i":I
    :goto_14
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_18

    if-ge v13, v0, :cond_47

    .line 1298
    :try_start_14
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_16

    :try_start_15
    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1299
    .local v0, "file":Landroid/util/AtomicFile;
    new-instance v7, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    const/4 v8, 0x0

    :try_start_16
    invoke-direct {v7, v8}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1300
    .local v7, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v10, v7, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_15

    .line 1301
    :try_start_17
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    if-eqz v8, :cond_40

    .line 1302
    if-nez v20, :cond_3e

    if-eqz v19, :cond_3f

    :cond_3e
    :try_start_18
    const-string v8, "err,"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    :cond_3f
    const-string v8, "Failure reading "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v8, Ljava/io/File;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v26, v0

    .end local v0    # "file":Landroid/util/AtomicFile;
    .local v26, "file":Landroid/util/AtomicFile;
    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 1307
    move-wide/from16 v37, v3

    move/from16 v36, v12

    const/16 v28, 0x0

    const/16 v30, 0x1

    goto/16 :goto_1e

    .line 1339
    .end local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v26    # "file":Landroid/util/AtomicFile;
    :catchall_d
    move-exception v0

    move-wide/from16 v37, v3

    move/from16 v36, v12

    const/16 v28, 0x0

    const/16 v30, 0x1

    goto/16 :goto_1d

    .line 1309
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_40
    move-object/from16 v26, v0

    .end local v0    # "file":Landroid/util/AtomicFile;
    .restart local v26    # "file":Landroid/util/AtomicFile;
    :try_start_19
    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "fileStr":Ljava/lang/String;
    const-string v8, ".ci"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_14

    move/from16 v16, v8

    .line 1311
    .restart local v16    # "checkedIn":Z
    if-nez v20, :cond_45

    if-eqz v19, :cond_41

    move/from16 v36, v12

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object v12, v0

    move-object v0, v7

    goto/16 :goto_18

    .line 1315
    :cond_41
    if-eqz v6, :cond_42

    .line 1316
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    move/from16 v35, v6

    goto :goto_15

    .line 1318
    :cond_42
    const/4 v6, 0x1

    move/from16 v35, v6

    .line 1320
    .end local v6    # "sepNeeded":Z
    .local v35, "sepNeeded":Z
    :goto_15
    :try_start_1b
    const-string v6, "COMMITTED STATS FROM "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    iget-object v6, v7, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 1322
    if-eqz v16, :cond_43

    :try_start_1c
    const-string v6, " (checked in)"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    goto :goto_16

    .line 1339
    .end local v0    # "fileStr":Ljava/lang/String;
    .end local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v16    # "checkedIn":Z
    .end local v26    # "file":Landroid/util/AtomicFile;
    :catchall_e
    move-exception v0

    move-wide/from16 v37, v3

    move/from16 v36, v12

    move/from16 v6, v35

    const/16 v28, 0x0

    const/16 v30, 0x1

    goto/16 :goto_1d

    .line 1323
    .restart local v0    # "fileStr":Ljava/lang/String;
    .restart local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v16    # "checkedIn":Z
    .restart local v26    # "file":Landroid/util/AtomicFile;
    :cond_43
    :goto_16
    :try_start_1d
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    .line 1327
    if-eqz v22, :cond_44

    .line 1328
    const/4 v6, 0x0

    move-object v8, v0

    move-object v0, v7

    .end local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v0, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v8, "fileStr":Ljava/lang/String;
    const/4 v7, 0x0

    move-object/from16 v36, v8

    move v8, v5

    .end local v5    # "activeOnly":Z
    .local v8, "activeOnly":Z
    .local v36, "fileStr":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v28, v36

    move/from16 v36, v12

    move-object/from16 v12, v28

    const/16 v28, 0x0

    const/16 v30, 0x1

    .local v12, "fileStr":Ljava/lang/String;
    .local v36, "start":I
    :try_start_1e
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    move v5, v8

    .end local v8    # "activeOnly":Z
    .restart local v5    # "activeOnly":Z
    move-object/from16 v1, p1

    goto :goto_17

    .line 1339
    .end local v0    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "activeOnly":Z
    .end local v12    # "fileStr":Ljava/lang/String;
    .end local v16    # "checkedIn":Z
    .end local v26    # "file":Landroid/util/AtomicFile;
    .restart local v8    # "activeOnly":Z
    :catchall_f
    move-exception v0

    move v5, v8

    move-object/from16 v1, p1

    move-wide/from16 v37, v3

    move/from16 v6, v35

    .end local v8    # "activeOnly":Z
    .restart local v5    # "activeOnly":Z
    goto/16 :goto_1d

    .line 1331
    .end local v36    # "start":I
    .local v0, "fileStr":Ljava/lang/String;
    .restart local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v12, "start":I
    .restart local v16    # "checkedIn":Z
    .restart local v26    # "file":Landroid/util/AtomicFile;
    :cond_44
    move/from16 v36, v12

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object v12, v0

    move-object v0, v7

    .end local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v0, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v12, "fileStr":Ljava/lang/String;
    .restart local v36    # "start":I
    move-object/from16 v1, p1

    :try_start_1f
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .line 1334
    :goto_17
    move/from16 v6, v35

    goto :goto_19

    .line 1339
    .end local v0    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v12    # "fileStr":Ljava/lang/String;
    .end local v16    # "checkedIn":Z
    .end local v26    # "file":Landroid/util/AtomicFile;
    :catchall_10
    move-exception v0

    move-wide/from16 v37, v3

    move/from16 v6, v35

    goto/16 :goto_1d

    .end local v36    # "start":I
    .local v12, "start":I
    :catchall_11
    move-exception v0

    move/from16 v36, v12

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-wide/from16 v37, v3

    move/from16 v6, v35

    .end local v12    # "start":I
    .restart local v36    # "start":I
    goto :goto_1d

    .line 1311
    .end local v35    # "sepNeeded":Z
    .end local v36    # "start":I
    .local v0, "fileStr":Ljava/lang/String;
    .restart local v6    # "sepNeeded":Z
    .restart local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v12    # "start":I
    .restart local v16    # "checkedIn":Z
    .restart local v26    # "file":Landroid/util/AtomicFile;
    :cond_45
    move/from16 v36, v12

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object v12, v0

    move-object v0, v7

    .line 1313
    .end local v7    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v0, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v12, "fileStr":Ljava/lang/String;
    .restart local v36    # "start":I
    :goto_18
    :try_start_20
    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1334
    :goto_19
    if-eqz v20, :cond_46

    .line 1336
    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    move-object/from16 v35, v0

    .end local v0    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v35, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    move-wide/from16 v37, v3

    .end local v3    # "now":J
    .local v37, "now":J
    :try_start_21
    const-string v3, ".ci"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    goto :goto_1a

    .line 1339
    .end local v12    # "fileStr":Ljava/lang/String;
    .end local v16    # "checkedIn":Z
    .end local v26    # "file":Landroid/util/AtomicFile;
    .end local v35    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :catchall_12
    move-exception v0

    goto :goto_1d

    .end local v37    # "now":J
    .restart local v3    # "now":J
    :catchall_13
    move-exception v0

    move-wide/from16 v37, v3

    .end local v3    # "now":J
    .restart local v37    # "now":J
    goto :goto_1d

    .line 1334
    .end local v37    # "now":J
    .restart local v0    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v3    # "now":J
    .restart local v12    # "fileStr":Ljava/lang/String;
    .restart local v16    # "checkedIn":Z
    .restart local v26    # "file":Landroid/util/AtomicFile;
    :cond_46
    move-object/from16 v35, v0

    move-wide/from16 v37, v3

    .line 1342
    .end local v0    # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v3    # "now":J
    .end local v12    # "fileStr":Ljava/lang/String;
    .end local v16    # "checkedIn":Z
    .end local v26    # "file":Landroid/util/AtomicFile;
    .restart local v37    # "now":J
    :goto_1a
    goto :goto_1e

    .line 1339
    .end local v36    # "start":I
    .end local v37    # "now":J
    .restart local v3    # "now":J
    .local v12, "start":I
    :catchall_14
    move-exception v0

    move-wide/from16 v37, v3

    move/from16 v36, v12

    const/16 v28, 0x0

    :goto_1b
    const/16 v30, 0x1

    .end local v3    # "now":J
    .end local v12    # "start":I
    .restart local v36    # "start":I
    .restart local v37    # "now":J
    :goto_1c
    goto :goto_1d

    .end local v36    # "start":I
    .end local v37    # "now":J
    .restart local v3    # "now":J
    .restart local v12    # "start":I
    :catchall_15
    move-exception v0

    move-wide/from16 v37, v3

    move/from16 v28, v8

    move/from16 v36, v12

    goto :goto_1b

    :catchall_16
    move-exception v0

    move-wide/from16 v37, v3

    move/from16 v30, v7

    move/from16 v36, v12

    const/16 v28, 0x0

    goto :goto_1c

    .end local v3    # "now":J
    .end local v12    # "start":I
    .restart local v36    # "start":I
    .restart local v37    # "now":J
    :goto_1d
    nop

    .line 1340
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_22
    const-string v3, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    .line 1295
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v30

    move/from16 v12, v36

    move-wide/from16 v3, v37

    goto/16 :goto_14

    .line 1346
    .end local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "i":I
    .end local v36    # "start":I
    :catchall_17
    move-exception v0

    goto :goto_20

    .line 1295
    .end local v37    # "now":J
    .restart local v3    # "now":J
    .restart local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "start":I
    .restart local v13    # "i":I
    :cond_47
    move-wide/from16 v37, v3

    move/from16 v30, v7

    move/from16 v36, v12

    const/16 v28, 0x0

    .end local v3    # "now":J
    .end local v12    # "start":I
    .restart local v36    # "start":I
    .restart local v37    # "now":J
    goto :goto_1f

    .line 1346
    .end local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "i":I
    .end local v36    # "start":I
    .end local v37    # "now":J
    .restart local v3    # "now":J
    :catchall_18
    move-exception v0

    move-wide/from16 v37, v3

    .end local v3    # "now":J
    .restart local v37    # "now":J
    goto :goto_20

    .line 1290
    .end local v37    # "now":J
    .restart local v3    # "now":J
    .restart local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_48
    move-wide/from16 v37, v3

    move/from16 v30, v7

    const/16 v28, 0x0

    .line 1346
    .end local v3    # "now":J
    .end local v11    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v37    # "now":J
    :goto_1f
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1347
    move v11, v6

    goto :goto_22

    .line 1346
    :goto_20
    iget-object v3, v10, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1347
    throw v0

    .line 1286
    .end local v37    # "now":J
    .restart local v3    # "now":J
    :cond_49
    move-wide/from16 v37, v3

    move/from16 v30, v7

    const/16 v28, 0x0

    .line 1349
    :goto_21
    move v11, v6

    .end local v3    # "now":J
    .end local v6    # "sepNeeded":Z
    .local v11, "sepNeeded":Z
    .restart local v37    # "now":J
    :goto_22
    if-nez v20, :cond_52

    .line 1350
    iget-object v12, v10, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1351
    if-eqz v19, :cond_4a

    .line 1352
    :try_start_23
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move v13, v9

    move/from16 v9, v21

    move/from16 v7, v23

    move-wide/from16 v3, v37

    move/from16 v16, v11

    goto/16 :goto_26

    .line 1369
    :catchall_19
    move-exception v0

    move v13, v9

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v23

    move-wide/from16 v3, v37

    goto/16 :goto_28

    .line 1354
    :cond_4a
    if-eqz v11, :cond_4b

    .line 1355
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_19

    .line 1357
    :cond_4b
    :try_start_24
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_20

    .line 1358
    if-nez v21, :cond_4d

    if-eqz v22, :cond_4c

    move-wide/from16 v3, v37

    goto :goto_23

    .line 1365
    :cond_4c
    :try_start_25
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1b

    move-wide/from16 v3, v37

    .end local v37    # "now":J
    .restart local v3    # "now":J
    :try_start_26
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    move-object/from16 v1, p1

    move v13, v9

    move/from16 v9, v21

    move/from16 v7, v23

    goto :goto_25

    .line 1369
    :catchall_1a
    move-exception v0

    move v13, v9

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v23

    goto/16 :goto_28

    .end local v3    # "now":J
    .restart local v37    # "now":J
    :catchall_1b
    move-exception v0

    move-wide/from16 v3, v37

    move v13, v9

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v23

    .end local v37    # "now":J
    .restart local v3    # "now":J
    goto/16 :goto_28

    .line 1358
    .end local v3    # "now":J
    .restart local v37    # "now":J
    :cond_4d
    move-wide/from16 v3, v37

    .line 1359
    .end local v37    # "now":J
    .restart local v3    # "now":J
    :goto_23
    :try_start_27
    iget-object v0, v10, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1f

    if-nez v22, :cond_4e

    goto :goto_24

    :cond_4e
    move/from16 v30, v28

    :goto_24
    move-object/from16 v1, p1

    move v8, v5

    move/from16 v6, v21

    move/from16 v7, v23

    move/from16 v5, v30

    .end local v5    # "activeOnly":Z
    .end local v21    # "dumpDetails":Z
    .end local v23    # "dumpAll":Z
    .local v6, "dumpDetails":Z
    .local v7, "dumpAll":Z
    .restart local v8    # "activeOnly":Z
    :try_start_28
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1e

    move v5, v8

    move v13, v9

    move v9, v6

    .line 1361
    .end local v6    # "dumpDetails":Z
    .end local v8    # "activeOnly":Z
    .restart local v5    # "activeOnly":Z
    .local v9, "dumpDetails":Z
    .local v13, "section":I
    if-eqz v7, :cond_4f

    .line 1362
    :try_start_29
    const-string v0, "  mFile="

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v10}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1c

    goto :goto_25

    .line 1369
    :catchall_1c
    move-exception v0

    move/from16 v8, v19

    move/from16 v10, v22

    goto/16 :goto_28

    .line 1367
    :cond_4f
    :goto_25
    const/4 v11, 0x1

    move/from16 v16, v11

    .line 1369
    .end local v11    # "sepNeeded":Z
    .local v16, "sepNeeded":Z
    :goto_26
    :try_start_2a
    monitor-exit v12
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1d

    .line 1370
    if-nez v34, :cond_51

    .line 1371
    if-eqz v16, :cond_50

    .line 1372
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1374
    :cond_50
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    move-wide/from16 v37, v3

    .end local v3    # "now":J
    .restart local v37    # "now":J
    const-wide/16 v3, 0x18

    move v12, v5

    move v11, v7

    move/from16 v8, v19

    move-wide/from16 v5, v37

    move-object v7, v2

    move-object v2, v1

    move-object v1, v10

    move/from16 v10, v22

    .end local v2    # "reqPackage":Ljava/lang/String;
    .end local v19    # "isCompact":Z
    .end local v22    # "dumpFullDetails":Z
    .end local v37    # "now":J
    .local v5, "now":J
    .local v7, "reqPackage":Ljava/lang/String;
    .local v8, "isCompact":Z
    .restart local v10    # "dumpFullDetails":Z
    .local v11, "dumpAll":Z
    .local v12, "activeOnly":Z
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1377
    move-object v1, v2

    move-wide v3, v5

    move-object v2, v7

    move v5, v12

    .end local v7    # "reqPackage":Ljava/lang/String;
    .end local v12    # "activeOnly":Z
    .restart local v2    # "reqPackage":Ljava/lang/String;
    .restart local v3    # "now":J
    .local v5, "activeOnly":Z
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1378
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    move-wide/from16 v37, v3

    .end local v3    # "now":J
    .restart local v37    # "now":J
    const-wide/16 v3, 0x3

    move-wide/from16 v5, v37

    move-object v2, v1

    move-object/from16 v1, p0

    .end local v2    # "reqPackage":Ljava/lang/String;
    .end local v37    # "now":J
    .local v5, "now":J
    .restart local v7    # "reqPackage":Ljava/lang/String;
    .restart local v12    # "activeOnly":Z
    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    move-wide v3, v5

    move-object v2, v7

    move v7, v11

    move v5, v12

    .end local v11    # "dumpAll":Z
    .end local v12    # "activeOnly":Z
    .restart local v2    # "reqPackage":Ljava/lang/String;
    .restart local v3    # "now":J
    .local v5, "activeOnly":Z
    .local v7, "dumpAll":Z
    goto :goto_27

    .line 1370
    .end local v8    # "isCompact":Z
    .end local v10    # "dumpFullDetails":Z
    .restart local v19    # "isCompact":Z
    .restart local v22    # "dumpFullDetails":Z
    :cond_51
    move/from16 v8, v19

    move/from16 v10, v22

    .line 1383
    .end local v19    # "isCompact":Z
    .end local v22    # "dumpFullDetails":Z
    .restart local v8    # "isCompact":Z
    .restart local v10    # "dumpFullDetails":Z
    :goto_27
    move/from16 v11, v16

    goto :goto_29

    .line 1369
    .end local v8    # "isCompact":Z
    .end local v10    # "dumpFullDetails":Z
    .restart local v19    # "isCompact":Z
    .restart local v22    # "dumpFullDetails":Z
    :catchall_1d
    move-exception v0

    move/from16 v8, v19

    move/from16 v10, v22

    move/from16 v11, v16

    .end local v19    # "isCompact":Z
    .end local v22    # "dumpFullDetails":Z
    .restart local v8    # "isCompact":Z
    .restart local v10    # "dumpFullDetails":Z
    goto :goto_28

    .end local v5    # "activeOnly":Z
    .end local v10    # "dumpFullDetails":Z
    .end local v13    # "section":I
    .end local v16    # "sepNeeded":Z
    .restart local v6    # "dumpDetails":Z
    .local v8, "activeOnly":Z
    .local v9, "section":I
    .local v11, "sepNeeded":Z
    .restart local v19    # "isCompact":Z
    .restart local v22    # "dumpFullDetails":Z
    :catchall_1e
    move-exception v0

    move v5, v8

    move v13, v9

    move/from16 v8, v19

    move/from16 v10, v22

    move v9, v6

    .end local v6    # "dumpDetails":Z
    .end local v19    # "isCompact":Z
    .end local v22    # "dumpFullDetails":Z
    .restart local v5    # "activeOnly":Z
    .local v8, "isCompact":Z
    .local v9, "dumpDetails":Z
    .restart local v10    # "dumpFullDetails":Z
    .restart local v13    # "section":I
    goto :goto_28

    .end local v7    # "dumpAll":Z
    .end local v8    # "isCompact":Z
    .end local v10    # "dumpFullDetails":Z
    .end local v13    # "section":I
    .local v9, "section":I
    .restart local v19    # "isCompact":Z
    .restart local v21    # "dumpDetails":Z
    .restart local v22    # "dumpFullDetails":Z
    .restart local v23    # "dumpAll":Z
    :catchall_1f
    move-exception v0

    move v13, v9

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v23

    .end local v19    # "isCompact":Z
    .end local v21    # "dumpDetails":Z
    .end local v22    # "dumpFullDetails":Z
    .end local v23    # "dumpAll":Z
    .restart local v7    # "dumpAll":Z
    .restart local v8    # "isCompact":Z
    .local v9, "dumpDetails":Z
    .restart local v10    # "dumpFullDetails":Z
    .restart local v13    # "section":I
    goto :goto_28

    .end local v3    # "now":J
    .end local v7    # "dumpAll":Z
    .end local v8    # "isCompact":Z
    .end local v10    # "dumpFullDetails":Z
    .end local v13    # "section":I
    .local v9, "section":I
    .restart local v19    # "isCompact":Z
    .restart local v21    # "dumpDetails":Z
    .restart local v22    # "dumpFullDetails":Z
    .restart local v23    # "dumpAll":Z
    .restart local v37    # "now":J
    :catchall_20
    move-exception v0

    move v13, v9

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v23

    move-wide/from16 v3, v37

    .end local v19    # "isCompact":Z
    .end local v21    # "dumpDetails":Z
    .end local v22    # "dumpFullDetails":Z
    .end local v23    # "dumpAll":Z
    .end local v37    # "now":J
    .restart local v3    # "now":J
    .restart local v7    # "dumpAll":Z
    .restart local v8    # "isCompact":Z
    .local v9, "dumpDetails":Z
    .restart local v10    # "dumpFullDetails":Z
    .restart local v13    # "section":I
    :goto_28
    :try_start_2b
    monitor-exit v12
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_21

    throw v0

    :catchall_21
    move-exception v0

    goto :goto_28

    .line 1349
    .end local v3    # "now":J
    .end local v7    # "dumpAll":Z
    .end local v8    # "isCompact":Z
    .end local v10    # "dumpFullDetails":Z
    .end local v13    # "section":I
    .local v9, "section":I
    .restart local v19    # "isCompact":Z
    .restart local v21    # "dumpDetails":Z
    .restart local v22    # "dumpFullDetails":Z
    .restart local v23    # "dumpAll":Z
    .restart local v37    # "now":J
    :cond_52
    move v13, v9

    move/from16 v8, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v23

    move-wide/from16 v3, v37

    .line 1383
    .end local v19    # "isCompact":Z
    .end local v21    # "dumpDetails":Z
    .end local v22    # "dumpFullDetails":Z
    .end local v23    # "dumpAll":Z
    .end local v37    # "now":J
    .restart local v3    # "now":J
    .restart local v7    # "dumpAll":Z
    .restart local v8    # "isCompact":Z
    .local v9, "dumpDetails":Z
    .restart local v10    # "dumpFullDetails":Z
    .restart local v13    # "section":I
    :goto_29
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1403
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v0

    .line 1407
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1408
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1409
    .local v6, "now":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1410
    .local v3, "token":J
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v5, 0x1f

    invoke-virtual {v0, v2, v6, v7, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1411
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1412
    .end local v3    # "token":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    const-wide v3, 0x10b00000002L

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1418
    const-wide v3, 0x10b00000003L

    const/16 v5, 0x18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1420
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1421
    return-void

    .line 1412
    .end local v6    # "now":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1427
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/proto/ProtoOutputStream;

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1429
    .local v0, "protos":[Landroid/util/proto/ProtoOutputStream;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v9, v1

    .line 1430
    .local v9, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    .line 1431
    const-wide/32 v3, 0xf423f

    invoke-virtual {v9, v0, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 1433
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1434
    return-void
.end method

.method private getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 455
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_1

    :cond_0
    goto :goto_2

    .line 458
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "currentFile":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 462
    aget-object v4, v0, v3

    .line 463
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "fileStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "state-v2-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 467
    goto :goto_1

    .line 469
    :cond_2
    if-nez p3, :cond_3

    const-string v6, ".ci"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 471
    goto :goto_1

    .line 473
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 475
    goto :goto_1

    .line 477
    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 479
    .end local v3    # "i":I
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 480
    return-object v1

    .line 456
    .end local v1    # "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "currentFile":Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCurrentFile()Ljava/io/File;
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    throw v0
.end method

.method private getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .locals 11
    .param p1, "minTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 806
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 808
    .local v0, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 809
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 810
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 811
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 812
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 813
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v4, v6

    .line 814
    .end local v2    # "now":J
    .local v4, "curTime":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 815
    cmp-long v1, v4, p1

    if-gez v1, :cond_2

    .line 817
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 819
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 820
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 821
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .line 822
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, p1

    if-gez v2, :cond_1

    .line 824
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 825
    .local v2, "file":Landroid/util/AtomicFile;
    add-int/lit8 v6, v6, -0x1

    .line 826
    new-instance v7, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v7, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 827
    .local v7, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {p0, v7, v2}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 828
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 829
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 835
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v7    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    goto :goto_0

    .line 838
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 831
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v7    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    const-string v8, "ProcessStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    goto :goto_0

    .line 838
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v7    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    goto :goto_2

    .line 838
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    throw v1

    .line 841
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 842
    .local v1, "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 843
    .local v2, "results":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_3
    if-ge v3, v6, :cond_3

    .line 844
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 845
    .local v7, "uid":I
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/UidState;

    .line 846
    .local v8, "uidState":Lcom/android/internal/app/procstats/UidState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/UidState;->getAggregatedDurationsInStates()[J

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 843
    .end local v7    # "uid":I
    .end local v8    # "uidState":Lcom/android/internal/app/procstats/UidState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    nop

    .line 848
    .end local v3    # "i":I
    .end local v6    # "size":I
    return-object v2

    .line 814
    .end local v1    # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .end local v2    # "results":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    .end local v4    # "curTime":J
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private synthetic lambda$scheduleRequestPssAllProcs$0(ZZ)V
    .locals 4
    .param p1, "always"    # Z
    .param p2, "memLowered"    # Z

    .line 321
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 322
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method static parseSectionOptions(Ljava/lang/String;)I
    .locals 9
    .param p0, "optionsStr"    # Ljava/lang/String;

    .line 563
    const-string v0, ","

    .line 564
    .local v0, "sep":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "sectionsStr":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 566
    const/16 v2, 0x1f

    return v2

    .line 568
    :cond_0
    const/4 v2, 0x0

    .line 569
    .local v2, "res":I
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 570
    .local v3, "optionStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 571
    .local v6, "sectionStr":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 572
    .local v7, "optionIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 573
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v8, v8, v7

    or-int/2addr v2, v8

    .line 570
    .end local v6    # "sectionStr":Ljava/lang/String;
    .end local v7    # "optionIndex":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 576
    :cond_2
    return v2
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 10
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 525
    .local v1, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_8

    .line 526
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v4

    .line 527
    .local v3, "c":C
    :goto_1
    const/16 v5, 0x2c

    if-eq v3, v5, :cond_1

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_1

    const/16 v6, 0x20

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    .line 528
    goto :goto_6

    .line 530
    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move v5, v4

    .line 531
    .local v5, "isSep":Z
    :goto_2
    const/4 v6, 0x0

    if-nez v1, :cond_3

    .line 533
    aput-boolean v5, p3, v4

    goto :goto_3

    .line 534
    :cond_3
    if-eqz v3, :cond_4

    aget-boolean v7, p3, v4

    if-eq v7, v5, :cond_4

    .line 535
    const-string/jumbo v7, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v7, p4, v4

    .line 536
    return-object v6

    .line 538
    :cond_4
    :goto_3
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_7

    .line 539
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    array-length v9, p0

    if-ge v8, v9, :cond_6

    .line 541
    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 542
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    const/4 v7, 0x0

    .line 544
    goto :goto_5

    .line 540
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 547
    .end local v8    # "j":I
    :cond_6
    :goto_5
    if-eqz v7, :cond_7

    .line 548
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p4, v4

    .line 549
    return-object v6

    .line 552
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 525
    .end local v3    # "c":C
    .end local v5    # "isSep":Z
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    nop

    .line 555
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 556
    .local v2, "finalRes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 557
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p1

    aput v4, v2, v3

    .line 556
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    nop

    .line 559
    .end local v3    # "i":I
    return-object v2
.end method

.method private performWriteState(J)V
    .locals 8
    .param p1, "initialTime"    # J

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 355
    .local v1, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 356
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 357
    if-nez v1, :cond_0

    .line 358
    monitor-exit v0

    return-void

    .line 363
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 360
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 361
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 362
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 366
    .local v3, "startTime":J
    const/4 v0, 0x0

    .line 368
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v0, v5

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 372
    const-string/jumbo v5, "procstats"

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    add-long/2addr v6, p1

    .line 372
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 379
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    goto :goto_1

    .line 379
    :catchall_1
    move-exception v5

    goto :goto_2

    .line 375
    :catch_0
    move-exception v5

    nop

    .line 376
    .local v5, "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "ProcessStatsService"

    const-string v7, "Error writing process statistics"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 383
    :goto_1
    return-void

    .line 379
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    throw v5

    .line 363
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "startTime":J
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p0, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 707
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v1, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 720
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 721
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 5
    .param p1, "stats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .line 388
    const-string v0, "ProcessStatsService"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 389
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 390
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 391
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    return v1

    .line 443
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 391
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :cond_0
    nop

    .line 447
    .end local v2    # "stream":Ljava/io/FileInputStream;
    nop

    .line 448
    const/4 v0, 0x1

    return v0

    .line 443
    :goto_0
    nop

    .line 444
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 445
    const-string v3, "Error reading process statistics"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    return v1
.end method

.method private scheduleRequestPssAllProcs(ZZ)V
    .locals 2
    .param p1, "always"    # Z
    .param p2, "memLowered"    # Z

    .line 320
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method private trimHistoricStatesWriteLF()V
    .locals 7

    .line 485
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 486
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 488
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "state-v2-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 487
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    .local v3, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 495
    return-void

    .line 497
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 498
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 499
    .local v4, "file":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pruning old procstats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProcessStatsService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 501
    .end local v4    # "file":Ljava/lang/String;
    goto :goto_1

    .line 502
    :cond_3
    return-void
.end method

.method private updateFileLocked()V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 332
    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-v2-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    nop

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 338
    return-void

    .line 335
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    throw v0
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .line 274
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 278
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 280
    return-void
.end method

.method private writeStateLocked(ZZ)V
    .locals 8
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .line 285
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 287
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_2

    :cond_0
    goto :goto_0

    .line 314
    .end local v1    # "now":J
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 288
    .restart local v1    # "now":J
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 289
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 290
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 291
    if-eqz p2, :cond_1

    .line 292
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 296
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 298
    :cond_2
    if-eqz p2, :cond_3

    .line 299
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 300
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 301
    invoke-direct {p0, v5, v4}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 303
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 306
    .local v3, "totalTime":J
    if-nez p1, :cond_4

    .line 307
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    monitor-exit v0

    return-void

    .line 306
    :cond_4
    nop

    .line 314
    .end local v1    # "now":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 317
    return-void

    .line 314
    .end local v3    # "totalTime":J
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeStateSyncLocked()V
    .locals 1

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 270
    return-void
.end method


# virtual methods
.method addSysMemUsageLocked(JJJJJ)V
    .locals 11
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .line 230
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 231
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    return-void

    .line 934
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 936
    .local v0, "ident":J
    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_2

    .line 937
    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 939
    return-void

    .line 947
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 940
    :cond_1
    :try_start_1
    const-string v2, "--statsd"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 941
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    return-void

    .line 945
    :cond_2
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    nop

    .line 949
    return-void

    .line 947
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    throw v2
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .locals 7
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 623
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "highWaterMarkMs":J
    .end local p3    # "section":I
    .end local p4    # "doAggregate":Z
    .end local p5    # "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    .local v1, "highWaterMarkMs":J
    .local v3, "section":I
    .local v4, "doAggregate":Z
    .local v5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 20
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .param p6, "mergedStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ")J"
        }
    .end annotation

    .line 640
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string/jumbo v5, "state-v2-"

    const-string v6, "ProcessStatsService"

    invoke-super {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCommittedStatsMerged_enforcePermission()V

    .line 642
    move-wide/from16 v7, p1

    .line 643
    .local v7, "newHighWaterMark":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 645
    const/4 v0, 0x1

    const/4 v9, 0x0

    :try_start_0
    invoke-direct {v1, v9, v9, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 646
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_7

    .line 647
    const-string/jumbo v11, "yyyy-MM-dd-HH-mm-ss"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 648
    move-wide/from16 v12, p1

    :try_start_1
    invoke-static {v11, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 649
    .local v11, "highWaterMarkStr":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v0

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_5

    .line 650
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v15, v0

    .line 652
    .local v15, "fileName":Ljava/lang/String;
    nop

    .line 653
    :try_start_2
    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 654
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    add-int v0, v0, v16

    const-string v9, ".bin"

    .line 655
    invoke-virtual {v15, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 652
    invoke-virtual {v15, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "startTimeStr":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_4

    .line 657
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .end local v0    # "startTimeStr":Ljava/lang/String;
    .local v17, "startTimeStr":Ljava/lang/String;
    const/high16 v0, 0x10000000

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 660
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v9, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v9, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 661
    .local v9, "is":Ljava/io/InputStream;
    move-object/from16 v18, v0

    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v18, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v19, v5

    const/4 v5, 0x0

    :try_start_3
    invoke-direct {v0, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 662
    .local v0, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v0, v9}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 663
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 664
    move-object/from16 v16, v6

    :try_start_4
    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 665
    iget-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide v7, v5

    .end local v7    # "newHighWaterMark":J
    .local v5, "newHighWaterMark":J
    goto :goto_1

    .line 691
    .end local v0    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5    # "newHighWaterMark":J
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v17    # "startTimeStr":Ljava/lang/String;
    .end local v18    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "newHighWaterMark":J
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 679
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_4

    .line 677
    :catch_1
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_5

    .line 667
    .restart local v0    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "startTimeStr":Ljava/lang/String;
    .restart local v18    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    .line 668
    invoke-virtual {v4, v0}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_2

    .line 669
    :cond_1
    if-eqz v3, :cond_2

    .line 670
    invoke-static {v0, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_2
    :goto_2
    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading process stats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v6, v16

    :try_start_5
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 674
    goto :goto_6

    .line 679
    .end local v0    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v17    # "startTimeStr":Ljava/lang/String;
    .end local v18    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    goto :goto_4

    .line 677
    :catch_3
    move-exception v0

    goto :goto_5

    .line 672
    .restart local v0    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "startTimeStr":Ljava/lang/String;
    .restart local v18    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    move-object/from16 v6, v16

    goto :goto_3

    .line 679
    .end local v0    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v17    # "startTimeStr":Ljava/lang/String;
    .end local v18    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_4

    .line 677
    :catch_5
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_5

    .line 656
    .local v0, "startTimeStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 v19, v5

    .line 681
    .end local v0    # "startTimeStr":Ljava/lang/String;
    :goto_3
    goto :goto_6

    .line 679
    :goto_4
    nop

    .line 680
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure to read and parse commit file "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 688
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "fileName":Ljava/lang/String;
    :catch_6
    move-exception v0

    goto :goto_8

    .line 677
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "highWaterMarkStr":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v15    # "fileName":Ljava/lang/String;
    :goto_5
    nop

    .line 678
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure opening procstat file "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    nop

    .line 649
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "fileName":Ljava/lang/String;
    :goto_6
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v5, v19

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    nop

    .line 683
    .end local v14    # "i":I
    if-eqz p4, :cond_6

    if-eqz v3, :cond_6

    .line 684
    invoke-static {v4, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 686
    :cond_6
    nop

    .line 691
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 686
    return-wide v7

    .line 691
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "highWaterMarkStr":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-wide/from16 v12, p1

    goto :goto_a

    .line 688
    :catch_7
    move-exception v0

    move-wide/from16 v12, p1

    goto :goto_8

    .line 646
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-wide/from16 v12, p1

    .line 691
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    :goto_7
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 692
    goto :goto_9

    .line 688
    :goto_8
    nop

    .line 689
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "Failure opening procstat file"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 691
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 693
    :goto_9
    return-wide v7

    .line 691
    :goto_a
    iget-object v5, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 692
    throw v0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0

    return v1

    .line 802
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 582
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-super {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getCurrentStats_enforcePermission()V

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "current":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 587
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 588
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 589
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 590
    .end local v2    # "now":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 593
    if-eqz p1, :cond_0

    .line 594
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 595
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 598
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 599
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    const/high16 v4, 0x10000000

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 600
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 608
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 601
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    nop

    .line 602
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 596
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 608
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 609
    throw v1

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 609
    nop

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1

    .line 590
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method getMemFactorLocked()I
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinAssociationDumpDuration()J
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-wide v0
.end method

.method getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "versionCode":J
    .end local p5    # "processName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "uid":I
    .local v3, "versionCode":J
    .local v5, "processName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object p1

    return-object p1
.end method

.method getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # J
    .param p5, "processName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "versionCode":J
    .end local p5    # "processName":Ljava/lang/String;
    .end local p6    # "className":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "uid":I
    .local v5, "versionCode":J
    .local v7, "processName":Ljava/lang/String;
    .local v8, "className":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 176
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "versionCode":J
    .end local v7    # "processName":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "versionCode":J
    .restart local p5    # "processName":Ljava/lang/String;
    .restart local p6    # "className":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    move-object p1, v0

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "versionCode":J
    .end local p5    # "processName":Ljava/lang/String;
    .end local p6    # "className":Ljava/lang/String;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "versionCode":J
    .restart local v7    # "processName":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 14
    .param p1, "minTime"    # J

    .line 727
    invoke-super {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->getStatsOverTime_enforcePermission()V

    .line 729
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 731
    .local v1, "current":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 732
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 733
    .local v3, "now":J
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 734
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 735
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 736
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v6, v8

    .line 738
    .end local v3    # "now":J
    .local v6, "curTime":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 739
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 741
    cmp-long v0, v6, p1

    if-gez v0, :cond_2

    .line 743
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v5, v5, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 744
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 745
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 746
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats;

    .line 747
    .local v3, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 748
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .line 749
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    iget-wide v8, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v8, v10

    cmp-long v0, v8, p1

    if-gez v0, :cond_1

    .line 751
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 752
    .local v0, "file":Landroid/util/AtomicFile;
    add-int/lit8 v4, v4, -0x1

    .line 753
    new-instance v8, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v8, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 754
    .local v8, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {p0, v8, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 755
    iget-object v9, v8, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 756
    invoke-virtual {v3, v8}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 757
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .local v9, "sb":Ljava/lang/StringBuilder;
    const-string v10, "Added stats: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    iget-object v10, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v10, ", over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-wide v10, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v12, v8, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 763
    const-string v10, "ProcessStatsService"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    nop

    .line 769
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v8    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 793
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v4    # "i":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 790
    :catch_0
    move-exception v0

    goto :goto_1

    .line 765
    .restart local v0    # "file":Landroid/util/AtomicFile;
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v4    # "i":I
    .restart local v8    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_0
    const-string v9, "ProcessStatsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure reading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    goto :goto_0

    .line 770
    .end local v0    # "file":Landroid/util/AtomicFile;
    .end local v8    # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v1, v0

    .line 771
    invoke-virtual {v3, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 775
    .local v0, "outData":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 776
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 777
    .local v2, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v3, Lcom/android/server/am/ProcessStatsService$4;

    const-string v4, "ProcessStats pipe output"

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 788
    .local v3, "thr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 789
    aget-object v4, v2, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 789
    return-object v4

    .line 790
    .end local v0    # "outData":[B
    .end local v2    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "thr":Ljava/lang/Thread;
    :goto_1
    nop

    .line 791
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "ProcessStatsService"

    const-string v3, "Failed building output pipe"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 793
    nop

    .end local v0    # "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 794
    nop

    .line 795
    const/4 v0, 0x0

    return-object v0

    .line 793
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 794
    throw v0

    .line 738
    .end local v6    # "curTime":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method isMemFactorLowered()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 152
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_0
    throw v0
.end method

.method publish()V
    .locals 3

    .line 852
    const-class v0, Lcom/android/internal/app/procstats/ProcessStatsInternal;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;Lcom/android/server/am/ProcessStatsService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 853
    return-void
.end method

.method setMemFactorLocked(IZJ)Z
    .locals 11
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .line 185
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 186
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 190
    :cond_1
    if-eqz p2, :cond_2

    .line 191
    add-int/lit8 p1, p1, 0x4

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, v0, :cond_8

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide p3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 202
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_1
    if-ltz v1, :cond_7

    .line 203
    nop

    .line 204
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 205
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "iuid":I
    :goto_2
    if-ltz v4, :cond_6

    .line 206
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 207
    .local v5, "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "iver":I
    :goto_3
    if-ltz v6, :cond_5

    .line 208
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 209
    .local v7, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 210
    .local v8, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "isvc":I
    :goto_4
    if-ltz v9, :cond_4

    .line 211
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 212
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v10, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 210
    .end local v10    # "service":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_4
    nop

    .line 207
    .end local v7    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v8    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v9    # "isvc":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_5
    nop

    .line 205
    .end local v5    # "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v6    # "iver":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    nop

    .line 202
    .end local v3    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v4    # "iuid":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    nop

    .line 217
    .end local v1    # "ipkg":I
    return v2

    .line 219
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_8
    return v1
.end method

.method shouldWriteNowLocked(J)Z
    .locals 8
    .param p1, "now"    # J

    .line 240
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 245
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 247
    :cond_0
    return v1

    .line 249
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shutdown()V
    .locals 3

    .line 253
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 256
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "versionCode"    # J
    .param p6, "processName"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-virtual {v0, v1, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 163
    return-void
.end method

.method updateTrackingAssociationsLocked(IJ)V
    .locals 1
    .param p1, "curSeq"    # I
    .param p2, "now"    # J

    .line 235
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 236
    return-void
.end method

.method writeStateAsync()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 264
    monitor-exit v0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
