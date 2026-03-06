.class Lcom/android/server/wm/AppCompatConfigurationPersister;
.super Ljava/lang/Object;
.source "AppCompatConfigurationPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;
    }
.end annotation


# static fields
.field private static final LETTERBOX_CONFIGURATION_FILENAME:Ljava/lang/String; = "letterbox_config"

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCompletionCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationFile:Landroid/util/AtomicFile;

.field private final mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLetterboxPositionForBookModeReachability:I

.field private volatile mLetterboxPositionForHorizontalReachability:I

.field private volatile mLetterboxPositionForTabletopModeReachability:I

.field private volatile mLetterboxPositionForVerticalReachability:I

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 99
    .local p1, "defaultHorizontalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p2, "defaultVerticalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p3, "defaultBookModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p4, "defaultTabletopModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    nop

    .line 101
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v6}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    .line 99
    const/4 v7, 0x0

    const-string v8, "letterbox_config"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "defaultHorizontalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .end local p2    # "defaultVerticalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .end local p3    # "defaultBookModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .end local p4    # "defaultTabletopModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local v1, "defaultHorizontalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local v2, "defaultVerticalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local v3, "defaultBookModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local v4, "defaultTabletopModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/AppCompatConfigurationPersister;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 2
    .param p5, "configFolder"    # Ljava/io/File;
    .param p6, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p8, "letterboxConfigurationFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/File;",
            "Lcom/android/server/wm/PersisterQueue;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    .local p1, "defaultHorizontalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p2, "defaultVerticalReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p3, "defaultBookModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p4, "defaultTabletopModeReachabilitySupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Integer;>;"
    .local p7, "completionCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 115
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 116
    iput-object p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 117
    iput-object p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 118
    iput-object p7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v0, "prefFiles":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    .line 121
    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 122
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->readCurrentConfiguration()V

    .line 123
    return-void
.end method

.method private readCurrentConfiguration()V
    .locals 6

    .line 214
    const-string v0, "Error reading from AppCompatConfigurationPersister "

    const-string v1, "WindowManager"

    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 216
    return-void

    .line 218
    :cond_0
    const/4 v2, 0x0

    .line 220
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 221
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 222
    .local v3, "protoData":[B
    nop

    .line 223
    invoke-static {v3}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object v4

    .line 224
    .local v4, "letterboxData":Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    iget v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    iput v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 226
    iget v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    iput v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 228
    iget v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    iput v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 230
    iget v5, v4, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    iput v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .end local v3    # "protoData":[B
    .end local v4    # "letterboxData":Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    if-eqz v2, :cond_1

    .line 240
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :goto_0
    goto :goto_1

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 243
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 238
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 232
    :catch_1
    move-exception v3

    nop

    .line 233
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v4, "Error reading from AppCompatConfigurationPersister. Using default values!"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    .end local v3    # "ioe":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 240
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 247
    :cond_1
    :goto_1
    return-void

    .line 238
    :goto_2
    if-eqz v2, :cond_2

    .line 240
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 244
    goto :goto_3

    .line 241
    :catch_2
    move-exception v4

    .line 242
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 243
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v3
.end method

.method private static readInputStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 262
    .local v1, "buffer":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 263
    .local v2, "size":I
    :goto_0
    if-lez v2, :cond_0

    .line 264
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 265
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v2, v3

    goto :goto_0

    .line 269
    .end local v1    # "buffer":[B
    .end local v2    # "size":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 267
    .restart local v1    # "buffer":[B
    .restart local v2    # "size":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 267
    return-object v3

    .line 269
    .end local v1    # "buffer":[B
    .end local v2    # "size":I
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 270
    throw v1
.end method

.method private updateConfiguration()V
    .locals 8

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    iget v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget v6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    iget-object v7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;-><init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 256
    return-void
.end method


# virtual methods
.method getLetterboxPositionForHorizontalReachability(Z)I
    .locals 1
    .param p1, "forBookMode"    # Z

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    return v0

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    return v0
.end method

.method getLetterboxPositionForVerticalReachability(Z)I
    .locals 1
    .param p1, "forTabletopMode"    # Z

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return v0

    .line 154
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    return v0
.end method

.method setLetterboxPositionForHorizontalReachability(ZI)V
    .locals 1
    .param p1, "forBookMode"    # Z
    .param p2, "letterboxPositionForHorizontalReachability"    # I

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    if-eq v0, p2, :cond_1

    .line 166
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 168
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    if-eq v0, p2, :cond_1

    .line 173
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 175
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    .line 178
    :cond_1
    :goto_0
    return-void
.end method

.method setLetterboxPositionForVerticalReachability(ZI)V
    .locals 1
    .param p1, "forTabletopMode"    # Z
    .param p2, "letterboxPositionForVerticalReachability"    # I

    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    if-eq v0, p2, :cond_1

    .line 188
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 190
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    goto :goto_0

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    if-eq v0, p2, :cond_1

    .line 195
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 197
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    .line 200
    :cond_1
    :goto_0
    return-void
.end method

.method start()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 130
    return-void
.end method

.method useDefaultValue()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 207
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 209
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 210
    return-void
.end method
