.class Lcom/android/server/selinux/SelinuxAuditLogsCollector;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;,
        Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;
    }
.end annotation


# static fields
.field static final CONFIG_SELINUX_AUDIT_DOMAIN:Ljava/lang/String; = "selinux_audit_domain"

.field private static final DEBUG:Z

.field static final DEFAULT_SELINUX_AUDIT_DOMAIN:Ljava/lang/String; = "no_match^"

.field static final SELINUX_MATCHER:Ljava/util/regex/Matcher;

.field private static final SELINUX_PATTERN:Ljava/lang/String; = "^.*\\bavc:\\s+(?<denial>.*)$"

.field private static final TAG:Ljava/lang/String; = "SelinuxAuditLogs"


# instance fields
.field private final mAuditDomainSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

.field mLastWrite:Ljava/time/Instant;

.field private final mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

.field private final mRateLimiter:Lcom/android/server/selinux/RateLimiter;

.field mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuditDomainSupplier(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mAuditDomainSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/QuotaLimiter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRateLimiter(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)Lcom/android/server/selinux/RateLimiter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "SelinuxAuditLogs"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    .line 53
    const-string v0, "^.*\\bavc:\\s+(?<denial>.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->SELINUX_MATCHER:Ljava/util/regex/Matcher;

    return-void
.end method

.method constructor <init>(Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V
    .locals 2
    .param p1, "rateLimiter"    # Lcom/android/server/selinux/RateLimiter;
    .param p2, "quotaLimiter"    # Lcom/android/server/selinux/QuotaLimiter;

    .line 75
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$DefaultDomainSupplier;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector-IA;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;-><init>(Ljava/util/function/Supplier;Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V
    .locals 2
    .param p2, "rateLimiter"    # Lcom/android/server/selinux/RateLimiter;
    .param p3, "quotaLimiter"    # Lcom/android/server/selinux/QuotaLimiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/selinux/RateLimiter;",
            "Lcom/android/server/selinux/QuotaLimiter;",
            ")V"
        }
    .end annotation

    .line 67
    .local p1, "auditDomainSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mAuditDomainSupplier:Ljava/util/function/Supplier;

    .line 69
    iput-object p2, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mRateLimiter:Lcom/android/server/selinux/RateLimiter;

    .line 70
    iput-object p3, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mQuotaLimiter:Lcom/android/server/selinux/QuotaLimiter;

    .line 71
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-direct {v0, p0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    .line 72
    return-void
.end method


# virtual methods
.method collect(I)Z
    .locals 4
    .param p1, "tagCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/selinux/QuotaExceededException;
        }
    .end annotation

    .line 193
    const-string v0, "SelinuxAuditLogs"

    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->reset()V

    .line 195
    const/4 v1, 0x0

    :try_start_0
    filled-new-array {p1}, [I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-static {v2, v3}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    nop

    .line 215
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getLatestTimestamp()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 216
    sget-boolean v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getAuditsWritten()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Written %d logs"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 210
    :catch_0
    move-exception v2

    goto :goto_0

    .line 196
    :catch_1
    move-exception v2

    goto :goto_1

    .line 210
    :goto_0
    nop

    .line 211
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error reading event logs"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    return v1

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 197
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/selinux/QuotaExceededException;

    if-eqz v3, :cond_2

    .line 198
    sget-boolean v1, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    .line 200
    invoke-virtual {v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getAuditsWritten()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 199
    const-string v3, "Running out of quota after %d logs."

    invoke-static {v0, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getLatestTimestamp()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 204
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/android/server/selinux/QuotaExceededException;

    throw v0

    .line 205
    :cond_2
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mEventCollection:Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;

    invoke-virtual {v0}, Lcom/android/server/selinux/SelinuxAuditLogsCollector$EventLogCollection;->getLatestTimestamp()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mLastWrite:Ljava/time/Instant;

    .line 207
    return v1

    .line 209
    :cond_3
    throw v2
.end method

.method public setStopRequested(Z)V
    .locals 1
    .param p1, "stopRequested"    # Z

    .line 92
    iget-object v0, p0, Lcom/android/server/selinux/SelinuxAuditLogsCollector;->mStopRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    return-void
.end method
