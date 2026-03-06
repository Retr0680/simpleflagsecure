.class Lcom/android/server/BootReceiver$2;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mBufferSize:I

.field mTraceBuffer:[B


# direct methods
.method constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/BootReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/server/BootReceiver$2;->mBufferSize:I

    .line 206
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 221
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    const/16 v2, 0x400

    invoke-static {p1, v1, v0, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 222
    .local v1, "nbytes":I
    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 223
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 224
    .local v3, "readStr":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 225
    nop

    .line 236
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 225
    return v2

    .line 227
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    .line 228
    const-string v4, "dmesgd.start"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Lcom/android/server/BootReceiver;->-$$Nest$sfputsSentReports(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    .end local v1    # "nbytes":I
    .end local v3    # "readStr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 232
    :catch_0
    move-exception v1

    goto :goto_1

    .line 236
    :cond_1
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 237
    nop

    .line 238
    return v2

    .line 232
    :goto_1
    nop

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BootReceiver"

    const-string v3, "Error watching for trace events"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    nop

    .line 236
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 234
    return v0

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 237
    throw v0
.end method
