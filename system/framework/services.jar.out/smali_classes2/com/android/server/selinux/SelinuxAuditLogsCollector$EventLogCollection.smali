.class Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;
.super Ljava/util/AbstractCollection;
.source "SelinuxAuditLogsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/selinux/SelinuxAuditLogsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventLogCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "Landroid/util/EventLog$Event;",
        ">;"
    }
.end annotation


# instance fields
.field mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

.field mAuditsWritten:I

.field mLatestTimestamp:Ljava/time/Instant;

.field final synthetic this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;


# direct methods
.method constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/selinux/SelinuxAuditLogsCollector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    return-void
.end method


# virtual methods
.method public add(Landroid/util/EventLog$Event;)Z
    .locals 17
    .param p1, "event"    # Landroid/util/EventLog$Event;

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v1, v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getTimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1

    .line 141
    .local v1, "eventTime":Ljava/time/Instant;
    iget-object v2, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v2, v2, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/time/Instant;->compareTo(Ljava/time/Instant;)I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 142
    return v3

    .line 144
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "eventData":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 146
    return v3

    .line 148
    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "logLine":Ljava/lang/String;
    sget-object v5, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 150
    return v3

    .line 153
    :cond_2
    iget-object v5, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    sget-object v6, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    const-string v7, "denial"

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->reset(Ljava/lang/String;)V

    .line 154
    iget-object v5, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    invoke-virtual {v5}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;->build()Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;

    move-result-object v5

    .line 155
    .local v5, "auditLog":Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;
    if-nez v5, :cond_3

    .line 156
    return v3

    .line 159
    :cond_3
    iget-object v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->-$$Nest$fgetmQuotaLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/QuotaLimiter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/selinux/QuotaLimiter;->acquire()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 162
    iget-object v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->-$$Nest$fgetmRateLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/RateLimiter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/selinux/RateLimiter;->acquire()V

    .line 164
    iget-boolean v8, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mGranted:Z

    iget-object v9, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissions:[Ljava/lang/String;

    iget-object v10, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSType:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mSCategories:[I

    iget-object v12, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTType:Ljava/lang/String;

    iget-object v13, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTCategories:[I

    iget-object v14, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mTClass:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPath:Ljava/lang/String;

    iget-boolean v6, v5, Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;->mPermissive:Z

    const/16 v7, 0x31f

    move/from16 v16, v6

    invoke-static/range {v7 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZ[Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;[ILjava/lang/String;Ljava/lang/String;Z)V

    .line 176
    iget v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    .line 177
    iget-object v6, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    invoke-virtual {v1, v6}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 178
    iput-object v1, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    .line 181
    :cond_4
    return v3

    .line 160
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Lcom/android/server/selinux/QuotaExceededException;

    invoke-direct {v6}, Lcom/android/server/selinux/QuotaExceededException;-><init>()V

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 137
    .end local v1    # "eventTime":Ljava/time/Instant;
    .end local v2    # "eventData":Ljava/lang/Object;
    .end local v4    # "logLine":Ljava/lang/String;
    .end local v5    # "auditLog":Lcom/android/server/selinux/SelinuxAuditLogBuilder$SelinuxAuditLog;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 104
    check-cast p1, Landroid/util/EventLog$Event;

    invoke-virtual {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->add(Landroid/util/EventLog$Event;)Z

    move-result p1

    return p1
.end method

.method getAuditsWritten()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    return v0
.end method

.method getLatestTimestamp()Ljava/time/Instant;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/EventLog$Event;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method reset()V
    .locals 2

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditsWritten:I

    .line 112
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    iget-object v0, v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mLatestTimestamp:Ljava/time/Instant;

    .line 113
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->this$0:Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    invoke-static {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->-$$Nest$fgetmAuditDomainSupplier(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/selinux/SelinuxAuditLogBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->mAuditLogBuilder:Lcom/android/server/selinux/SelinuxAuditLogBuilder;

    .line 114
    return-void
.end method

.method public size()I
    .locals 1

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
