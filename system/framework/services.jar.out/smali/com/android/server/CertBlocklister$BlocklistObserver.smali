.class Lcom/android/server/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CertBlocklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlocklistObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$mwriteDenylist(Lcom/android/server/CertBlocklister$BlocklistObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;->writeDenylist()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 61
    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mName:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    .line 65
    iput-object p4, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    return-void
.end method

.method private writeDenylist()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "blocklist":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 87
    monitor-exit v0

    return-void

    .line 109
    .end local v1    # "blocklist":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 89
    .restart local v1    # "blocklist":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    sget-object v3, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "CertBlocklister"

    const-string v3, "The certificate blocklist based on serials is deprecated. Please use the pubkey blocklist instead."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    const-string v2, "CertBlocklister"

    const-string v3, "Certificate blocklist changed, updating..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v2, 0x0

    .line 97
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v5, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 98
    .local v3, "tmp":Ljava/io/File;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 99
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 100
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 101
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 102
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 103
    const-string v4, "CertBlocklister"

    const-string v5, "Certificate blocklist updated"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .end local v3    # "tmp":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v3

    goto :goto_2

    .line 104
    :catch_0
    move-exception v3

    nop

    .line 105
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "CertBlocklister"

    const-string v5, "Failed to write blocklist"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 109
    .end local v1    # "blocklist":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    monitor-exit v0

    .line 110
    return-void

    .line 107
    .restart local v1    # "blocklist":Ljava/lang/String;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 108
    nop

    .end local p0    # "this":Lcom/android/server/CertBlocklister$BlocklistObserver;
    throw v3

    .line 109
    .end local v1    # "blocklist":Ljava/lang/String;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/CertBlocklister$BlocklistObserver;
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 79
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 70
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 71
    new-instance v0, Lcom/android/server/CertBlocklister$BlocklistObserver$1;

    const-string v1, "BlocklistUpdater"

    invoke-direct {v0, p0, v1}, Lcom/android/server/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/android/server/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method
