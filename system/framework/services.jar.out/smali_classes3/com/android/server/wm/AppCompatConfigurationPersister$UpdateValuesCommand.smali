.class Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;
.super Ljava/lang/Object;
.source "AppCompatConfigurationPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppCompatConfigurationPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateValuesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBookModeReachability:I

.field private final mFileToUpdate:Landroid/util/AtomicFile;

.field private final mHorizontalReachability:I

.field private final mOnComplete:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabletopModeReachability:I

.field private final mVerticalReachability:I


# direct methods
.method constructor <init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V
    .locals 0
    .param p1, "fileToUpdate"    # Landroid/util/AtomicFile;
    .param p2, "horizontalReachability"    # I
    .param p3, "verticalReachability"    # I
    .param p4, "bookModeReachability"    # I
    .param p5, "tabletopModeReachability"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/AtomicFile;",
            "IIII",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p6, "onComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 292
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    .line 293
    iput p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    .line 294
    iput p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    .line 295
    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    .line 296
    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    .line 297
    return-void
.end method


# virtual methods
.method public process()V
    .locals 7

    .line 301
    const-string v0, "UpdateValuesCommand"

    new-instance v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    .line 303
    .local v1, "letterboxData":Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 304
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 305
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 307
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 309
    invoke-static {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 311
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .line 313
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 314
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 315
    iget-object v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz v4, :cond_0

    .line 323
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    invoke-interface {v4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 322
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 316
    :catch_0
    move-exception v4

    nop

    .line 317
    .local v4, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 318
    const-string v5, "WindowManager"

    const-string v6, "Error writing to AppCompatConfigurationPersister. Using default values!"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    nop

    .end local v4    # "ioe":Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz v4, :cond_0

    .line 323
    goto :goto_0

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 322
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz v5, :cond_1

    .line 323
    iget-object v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    invoke-interface {v5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 325
    :cond_1
    throw v4
.end method
