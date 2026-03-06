.class public final Lcom/android/server/wm/WindowTracingDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "WindowTracingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowTracingDataSource$Config;,
        Lcom/android/server/wm/WindowTracingDataSource$Instance;,
        Lcom/android/server/wm/WindowTracingDataSource$TlsState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Lcom/android/server/wm/WindowTracingDataSource$Instance;",
        "Lcom/android/server/wm/WindowTracingDataSource$TlsState;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

.field private static final CONFIG_VALUE_UNSPECIFIED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowTracingDataSource"


# instance fields
.field private final mWindowTracing:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/WindowTracingPerfetto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmWindowTracing(Lcom/android/server/wm/WindowTracingDataSource;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/WindowTracingDataSource;->mWindowTracing:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lcom/android/server/wm/WindowTracingDataSource$Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/wm/WindowTracingDataSource$Config;-><init>(IILcom/android/server/wm/WindowTracingDataSource-IA;)V

    sput-object v0, Lcom/android/server/wm/WindowTracingDataSource;->CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowTracingPerfetto;Ljava/lang/String;)V
    .locals 3
    .param p1, "windowTracing"    # Lcom/android/server/wm/WindowTracingPerfetto;
    .param p2, "dataSourceName"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p2}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingDataSource;->mWindowTracing:Ljava/lang/ref/WeakReference;

    .line 83
    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 84
    new-instance v0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v0

    .line 89
    .local v0, "params":Landroid/tracing/perfetto/DataSourceParams;
    invoke-virtual {p0, v0}, Landroid/tracing/perfetto/DataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 90
    const-string v1, "WindowTracingDataSource"

    const-string v2, "Registered with perfetto service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private parseDataSourceConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;
    .locals 3
    .param p1, "stream"    # Landroid/util/proto/ProtoInputStream;

    .line 130
    nop

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 131
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource;->parseWindowManagerConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_1

    .line 136
    :cond_1
    const-string v0, "WindowTracingDataSource"

    const-string v1, "Received start request without config parameters. Will use defaults."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 137
    :goto_1
    nop

    .line 138
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to parse DataSourceConfig"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseWindowManagerConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;
    .locals 7
    .param p1, "stream"    # Landroid/util/proto/ProtoInputStream;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "parsedLogLevel":I
    const/4 v1, 0x0

    .line 148
    .local v1, "parsedLogFrequency":I
    const-wide v2, 0x10b00000082L

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 149
    .local v2, "token":J
    :goto_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    const-string v6, "WindowTracingDataSource"

    if-eq v4, v5, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized WindowManagerConfig field number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v2    # "token":J
    :catch_0
    move-exception v2

    goto :goto_3

    .line 152
    .restart local v2    # "token":J
    :pswitch_0
    const-wide v4, 0x10e00000002L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v0, v4

    .line 153
    goto :goto_0

    .line 155
    :pswitch_1
    const-wide v4, 0x10e00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    move v1, v4

    .line 156
    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .end local v2    # "token":J
    nop

    .line 168
    packed-switch v0, :pswitch_data_1

    .line 183
    const-string v2, "Unrecognized log level. Defaulting to TRIM"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x1

    .local v2, "logLevel":I
    goto :goto_1

    .line 180
    .end local v2    # "logLevel":I
    :pswitch_2
    const/4 v2, 0x2

    .line 181
    .restart local v2    # "logLevel":I
    goto :goto_1

    .line 177
    .end local v2    # "logLevel":I
    :pswitch_3
    const/4 v2, 0x1

    .line 178
    .restart local v2    # "logLevel":I
    goto :goto_1

    .line 174
    .end local v2    # "logLevel":I
    :pswitch_4
    const/4 v2, 0x0

    .line 175
    .restart local v2    # "logLevel":I
    goto :goto_1

    .line 170
    .end local v2    # "logLevel":I
    :pswitch_5
    const-string v2, "Unspecified log level. Defaulting to TRIM"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v2, 0x1

    .line 172
    .restart local v2    # "logLevel":I
    nop

    .line 189
    :goto_1
    packed-switch v1, :pswitch_data_2

    .line 204
    const-string v3, "Unrecognized log frequency. Defaulting to \'frame\'"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v3, 0x0

    .local v3, "logFrequency":I
    goto :goto_2

    .line 201
    .end local v3    # "logFrequency":I
    :pswitch_6
    const/4 v3, 0x2

    .line 202
    .restart local v3    # "logFrequency":I
    goto :goto_2

    .line 198
    .end local v3    # "logFrequency":I
    :pswitch_7
    const/4 v3, 0x1

    .line 199
    .restart local v3    # "logFrequency":I
    goto :goto_2

    .line 195
    .end local v3    # "logFrequency":I
    :pswitch_8
    const/4 v3, 0x0

    .line 196
    .restart local v3    # "logFrequency":I
    goto :goto_2

    .line 191
    .end local v3    # "logFrequency":I
    :pswitch_9
    const-string v3, "Unspecified log frequency. Defaulting to \'frame\'"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v3, 0x0

    .line 193
    .restart local v3    # "logFrequency":I
    nop

    .line 209
    :goto_2
    new-instance v4, Lcom/android/server/wm/WindowTracingDataSource$Config;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/android/server/wm/WindowTracingDataSource$Config;-><init>(IILcom/android/server/wm/WindowTracingDataSource-IA;)V

    return-object v4

    .line 163
    .end local v2    # "logLevel":I
    .end local v3    # "logFrequency":I
    :goto_3
    nop

    .line 164
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to parse WindowManagerConfig"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowTracingDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/wm/WindowTracingDataSource$Instance;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/server/wm/WindowTracingDataSource$Instance;
    .locals 3
    .param p1, "configStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "instanceIndex"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource;->parseDataSourceConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/wm/WindowTracingDataSource$Config;

    move-result-object v0

    .line 97
    .local v0, "config":Lcom/android/server/wm/WindowTracingDataSource$Config;
    new-instance v1, Lcom/android/server/wm/WindowTracingDataSource$1;

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/wm/WindowTracingDataSource;->CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

    :goto_0
    invoke-direct {v1, p0, p0, p2, v2}, Lcom/android/server/wm/WindowTracingDataSource$1;-><init>(Lcom/android/server/wm/WindowTracingDataSource;Landroid/tracing/perfetto/DataSource;ILcom/android/server/wm/WindowTracingDataSource$Config;)V

    return-object v1
.end method

.method public createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/server/wm/WindowTracingDataSource$TlsState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "Lcom/android/server/wm/WindowTracingDataSource$Instance;",
            ">;)",
            "Lcom/android/server/wm/WindowTracingDataSource$TlsState;"
        }
    .end annotation

    .line 119
    .local p1, "args":Landroid/tracing/perfetto/CreateTlsStateArgs;, "Landroid/tracing/perfetto/CreateTlsStateArgs<Lcom/android/server/wm/WindowTracingDataSource$Instance;>;"
    invoke-virtual {p1}, Landroid/tracing/perfetto/CreateTlsStateArgs;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowTracingDataSource$Instance;

    .line 120
    .local v0, "dsInstance":Lcom/android/server/wm/WindowTracingDataSource$Instance;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 122
    :try_start_0
    new-instance v2, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    sget-object v3, Lcom/android/server/wm/WindowTracingDataSource;->CONFIG_DEFAULT:Lcom/android/server/wm/WindowTracingDataSource$Config;

    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/WindowTracingDataSource$TlsState;-><init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Lcom/android/server/wm/WindowTracingDataSource-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    .line 122
    :cond_0
    return-object v2

    .line 119
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 124
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    iget-object v3, v0, Lcom/android/server/wm/WindowTracingDataSource$Instance;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    invoke-direct {v2, v3, v1}, Lcom/android/server/wm/WindowTracingDataSource$TlsState;-><init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Lcom/android/server/wm/WindowTracingDataSource-IA;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V

    .line 124
    return-object v2

    .line 119
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceInstance;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public bridge synthetic createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/server/wm/WindowTracingDataSource$TlsState;

    move-result-object p1

    return-object p1
.end method
