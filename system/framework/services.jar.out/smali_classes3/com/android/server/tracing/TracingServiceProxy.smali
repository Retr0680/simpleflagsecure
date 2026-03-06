.class public Lcom/android/server/tracing/TracingServiceProxy;
.super Lcom/android/server/SystemService;
.source "TracingServiceProxy.java"


# static fields
.field private static final ENABLED:I = 0x1

.field private static final INTENT_ACTION_NOTIFY_SESSION_STOPPED:Ljava/lang/String; = "com.android.traceur.NOTIFY_SESSION_STOPPED"

.field private static final MAX_CACHED_REPORTER_SERVICES:I = 0x8

.field private static final MAX_FILE_SIZE_BYTES_TO_PIPE:I = 0x400

.field private static final NOTIFY_SESSION_ENDED_SETTING:Ljava/lang/String; = "should_notify_trace_session_ended"

.field private static final REPORT_BEGIN:I = 0x1

.field private static final REPORT_BIND_PERM_INCORRECT:I = 0x3

.field private static final REPORT_SVC_COMM_ERROR:I = 0x5

.field private static final REPORT_SVC_HANDOFF:I = 0x2

.field private static final REPORT_SVC_PERM_MISSING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TracingServiceProxy"

.field private static final TRACING_APP_ACTIVITY:Ljava/lang/String; = "com.android.traceur.StopTraceService"

.field private static final TRACING_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.traceur"

.field public static final TRACING_SERVICE_PROXY_BINDER_NAME:Ljava/lang/String; = "tracing.proxy"


# instance fields
.field private final mCachedReporterServices:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mServicePublished:Z

.field private final mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;


# direct methods
.method public static synthetic $r8$lambda$3Ehmr8nKnBwdDQZeDapvaoB9Qr8(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/tracing/TracingServiceProxy;->lambda$reportTrace$1(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UWl-jgaRpJnu7UQT8RDs7iwsZVI(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->lambda$reportTrace$0(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/tracing/TracingServiceProxy;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyTraceur(Lcom/android/server/tracing/TracingServiceProxy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/tracing/TracingServiceProxy;->notifyTraceur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportTrace(Lcom/android/server/tracing/TracingServiceProxy;Landroid/tracing/TraceReportParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->reportTrace(Landroid/tracing/TraceReportParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mServicePublished:Z

    .line 99
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/tracing/TracingServiceProxy$1;-><init>(Lcom/android/server/tracing/TracingServiceProxy;)V

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    .line 129
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 131
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    .line 132
    return-void
.end method

.method private getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;
    .locals 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    .line 243
    .local v0, "connector":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/os/IMessenger;>;"
    if-nez v0, :cond_0

    .line 244
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v5, v1

    .line 245
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    new-instance v2, Lcom/android/server/tracing/TracingServiceProxy$2;

    iget-object v4, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    new-instance v8, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;-><init>()V

    const/16 v6, 0x21

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/tracing/TracingServiceProxy$2;-><init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    move-object v0, v2

    .line 263
    iget-object v1, v3, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    move-object v3, p0

    .line 265
    :goto_0
    return-object v0
.end method

.method private hasBindServicePermission(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 283
    const-string v0, "Trace reporting service "

    const-string v1, "TracingServiceProxy"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    nop

    .line 289
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_TRACE_REPORT_SERVICE"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not request "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " permission; instead requests "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v2

    .line 296
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 284
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    .line 285
    .local v3, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not exist"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v2
.end method

.method private hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trace reporting service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "TracingServiceProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$reportTrace$0(Landroid/tracing/TraceReportParams;Landroid/os/IMessenger;)V
    .locals 8
    .param p0, "params"    # Landroid/tracing/TraceReportParams;
    .param p1, "messenger"    # Landroid/os/IMessenger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Landroid/tracing/TraceReportParams;->usePipeForTesting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 206
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 207
    .local v2, "pipe":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v3, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v0

    .line 208
    .local v3, "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v4, v2, v1

    invoke-direct {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 209
    .local v4, "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    const/16 v0, 0x400

    :try_start_1
    invoke-virtual {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readNBytes(I)[B

    move-result-object v5

    .line 210
    .local v5, "array":[B
    array-length v6, v5

    if-eq v6, v0, :cond_0

    .line 214
    invoke-virtual {v4, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    .end local v5    # "array":[B
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    .end local v4    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 217
    .end local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    const/4 v0, 0x0

    aget-object v0, v2, v0

    iput-object v0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    goto :goto_4

    .line 207
    .restart local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    .line 208
    .restart local v4    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0

    .line 211
    .restart local v5    # "array":[B
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trace file too large when |usePipeForTesting| is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v4    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .end local p0    # "params":Landroid/tracing/TraceReportParams;
    .end local p1    # "messenger":Landroid/os/IMessenger;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    .end local v5    # "array":[B
    .restart local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .restart local p0    # "params":Landroid/tracing/TraceReportParams;
    .restart local p1    # "messenger":Landroid/os/IMessenger;
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local p0    # "params":Landroid/tracing/TraceReportParams;
    .end local p1    # "messenger":Landroid/os/IMessenger;
    :goto_1
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    .end local v4    # "o":Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    .restart local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local p0    # "params":Landroid/tracing/TraceReportParams;
    .restart local p1    # "messenger":Landroid/os/IMessenger;
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    .line 220
    .end local v2    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "i":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :cond_1
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 222
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    invoke-interface {p1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V

    .line 225
    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v2, 0x1a8

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 227
    return-void
.end method

.method private static synthetic lambda$reportTrace$1(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "params"    # Landroid/tracing/TraceReportParams;
    .param p1, "res"    # Ljava/lang/Void;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-wide v2, p0, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p0, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v0, 0x1a8

    const/4 v1, 0x5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 231
    const-string v0, "TracingServiceProxy"

    const-string v1, "Failed to report trace"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/tracing/TraceReportParams;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    :goto_0
    return-void
.end method

.method private notifyTraceur()V
    .locals 7

    .line 148
    const-string v0, "TracingServiceProxy"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.traceur"

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 155
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.android.traceur.StopTraceService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v3, "com.android.traceur.NOTIFY_SESSION_STOPPED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    goto :goto_1

    .line 167
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    :catch_0
    move-exception v2

    goto :goto_3

    .line 164
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "identity":J
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 161
    :catch_1
    move-exception v5

    nop

    .line 162
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_3
    const-string v6, "Failed to notifyTraceSessionEnded"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 169
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_1
    goto :goto_4

    .line 164
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "identity":J
    :goto_2
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/tracing/TracingServiceProxy;
    throw v5
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 167
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "identity":J
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/tracing/TracingServiceProxy;
    :goto_3
    nop

    .line 168
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Failed to locate Traceur"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-void
.end method

.method private reportTrace(Landroid/tracing/TraceReportParams;)V
    .locals 12
    .param p1, "params"    # Landroid/tracing/TraceReportParams;

    .line 173
    iget-wide v2, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v0, 0x1a8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 178
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/tracing/TraceReportParams;->reporterPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/tracing/TraceReportParams;->reporterClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 180
    .local v1, "component":Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/tracing/TracingServiceProxy;->hasBindServicePermission(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-wide v4, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v6, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v2, 0x1a8

    const/4 v3, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 183
    return-void

    .line 185
    :cond_0
    const-string v0, "android.permission.DUMP"

    invoke-direct {p0, v1, v0}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v2

    .line 186
    .local v2, "hasDumpPermission":Z
    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-direct {p0, v1, v0}, Lcom/android/server/tracing/TracingServiceProxy;->hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v3

    .line 188
    .local v3, "hasUsageStatsPermission":Z
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    goto :goto_0

    .line 193
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 195
    .local v4, "ident":J
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/tracing/TracingServiceProxy;->getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/tracing/TracingServiceProxy;->reportTrace(Lcom/android/internal/infra/ServiceConnector;Landroid/tracing/TraceReportParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    nop

    .line 199
    return-void

    .line 197
    :catchall_0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    throw v0

    .line 189
    .end local v4    # "ident":J
    :goto_0
    iget-wide v8, p1, Landroid/tracing/TraceReportParams;->uuidLsb:J

    iget-wide v10, p1, Landroid/tracing/TraceReportParams;->uuidMsb:J

    const/16 v6, 0x1a8

    const/4 v7, 0x4

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    .line 191
    return-void
.end method

.method private reportTrace(Lcom/android/internal/infra/ServiceConnector;Landroid/tracing/TraceReportParams;)V
    .locals 2
    .param p2, "params"    # Landroid/tracing/TraceReportParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/os/IMessenger;",
            ">;",
            "Landroid/tracing/TraceReportParams;",
            ")V"
        }
    .end annotation

    .line 204
    .local p1, "reporterService":Lcom/android/internal/infra/ServiceConnector;, "Lcom/android/internal/infra/ServiceConnector<Landroid/os/IMessenger;>;"
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;-><init>(Landroid/tracing/TraceReportParams;)V

    invoke-interface {p1, v0}, Lcom/android/internal/infra/ServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda2;-><init>(Landroid/tracing/TraceReportParams;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 238
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .line 135
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 141
    iget-boolean v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mServicePublished:Z

    if-nez v0, :cond_0

    .line 142
    const-string v0, "tracing.proxy"

    iget-object v1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Landroid/tracing/ITracingServiceProxy$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mServicePublished:Z

    .line 145
    :cond_0
    return-void
.end method
