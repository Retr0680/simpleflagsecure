.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private compressedBytesReadFromCurrentEntry:J

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private password:[B

.field private uncompressedBytesReadFromCurrentEntry:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 1197
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "filename"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[C)V

    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 3
    .param p1, "filename"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 123
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 4
    .param p1, "filename"    # Ljava/io/File;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object v2

    .line 108
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-string v0, "unknown archive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    .line 233
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .param p4, "closeOnError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 85
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "succeeded":Z
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 239
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 241
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 242
    if-eqz p3, :cond_0

    .line 243
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 245
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    const/4 v0, 0x1

    .line 249
    .end local v1    # "succeeded":Z
    .local v0, "succeeded":Z
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 250
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 253
    :cond_1
    return-void

    .line 249
    .end local v0    # "succeeded":Z
    .restart local v1    # "succeeded":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p4, :cond_2

    .line 250
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 252
    :cond_2
    throw v0
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const-string v0, "unknown archive"

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$014(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p1, "x1"    # J

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 10
    .param p1, "folder"    # Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .param p2, "folderOffset"    # J
    .param p4, "firstPackStreamIndex"    # I
    .param p5, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 999
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v4, v4, p4

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 1026
    .local v0, "inputStreamStack":Ljava/io/InputStream;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1027
    .local v1, "methods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    .end local v0    # "inputStreamStack":Ljava/io/InputStream;
    .local v4, "inputStreamStack":Ljava/io/InputStream;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1028
    .local v7, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v5, v7, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v8, 0x1

    cmp-long v0, v5, v8

    if-nez v0, :cond_0

    iget-wide v5, v7, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v5, v8

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v0

    .line 1032
    .local v0, "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 1033
    invoke-virtual {p1, v7}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v5

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 1032
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v4

    .line 1034
    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 1035
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v5

    invoke-virtual {v5, v7, v4}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 1034
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1036
    .end local v0    # "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .end local v7    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    goto :goto_0

    .line 1029
    .restart local v7    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Multi input/output stream coders are not yet supported"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    .end local v7    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    invoke-virtual {p5, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 1038
    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v0, :cond_2

    .line 1039
    new-instance v3, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 1040
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v5

    iget-wide v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 1039
    return-object v3

    .line 1042
    :cond_2
    return-object v4
.end method

.method private buildDecodingStream()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget v0, v0, v1

    .line 957
    .local v0, "folderIndex":I
    if-gez v0, :cond_0

    .line 958
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 961
    return-void

    .line 963
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v8, v1, v2

    .line 964
    .local v8, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v1, v0, :cond_1

    .line 971
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    move-object v3, p0

    goto :goto_0

    .line 974
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 975
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 976
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 977
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 978
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 981
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v1, v0

    .line 982
    .local v4, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v7, v1, v0

    .line 983
    .local v7, "firstPackStreamIndex":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v5, 0x20

    add-long/2addr v1, v5

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v5, v3, v7

    add-long/2addr v5, v1

    .line 985
    .local v5, "folderOffset":J
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 988
    .end local v4    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v5    # "folderOffset":J
    .end local v7    # "firstPackStreamIndex":I
    :goto_0
    new-instance v1, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v2, v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object v10, v1

    .line 989
    .local v10, "fileStream":Ljava/io/InputStream;
    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 990
    new-instance v9, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v11

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v10, v9

    .line 993
    :cond_3
    iget-object v1, v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    return-void
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 11
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 905
    .local v0, "streamMap":Lorg/apache/commons/compress/archivers/sevenz/StreamMap;
    const/4 v1, 0x0

    .line 906
    .local v1, "nextFolderPackStreamIndex":I
    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 907
    .local v2, "numFolders":I
    :goto_0
    new-array v4, v2, [I

    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 908
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 909
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v1, v5, v4

    .line 910
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v5, v5

    add-int/2addr v1, v5

    .line 908
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 913
    .end local v4    # "i":I
    const-wide/16 v4, 0x0

    .line 914
    .local v4, "nextPackStreamOffset":J
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v6, :cond_2

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v3, v3

    .line 915
    .local v3, "numPackSizes":I
    :cond_2
    new-array v6, v3, [J

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 916
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v3, :cond_3

    .line 917
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v4, v7, v6

    .line 918
    iget-object v7, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v7, v7, v6

    add-long/2addr v4, v7

    .line 916
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 921
    .end local v6    # "i":I
    new-array v6, v2, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 922
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v6, v6

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 923
    const/4 v6, 0x0

    .line 924
    .local v6, "nextFolderIndex":I
    const/4 v7, 0x0

    .line 925
    .local v7, "nextFolderUnpackStreamIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v9, v9

    if-ge v8, v9, :cond_b

    .line 926
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v7, :cond_4

    .line 927
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v10, -0x1

    aput v10, v9, v8

    .line 928
    goto :goto_7

    .line 930
    :cond_4
    nop

    nop

    if-nez v7, :cond_8

    .line 931
    :goto_4
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_6

    .line 932
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v8, v9, v6

    .line 933
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v9, :cond_5

    .line 934
    goto :goto_5

    .line 931
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 937
    :cond_6
    :goto_5
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v6, v9, :cond_7

    goto :goto_6

    .line 938
    :cond_7
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Too few folders in archive"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 941
    :cond_8
    :goto_6
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v6, v9, v8

    .line 942
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_9

    .line 943
    goto :goto_7

    .line 945
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 946
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v6

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v7, v9, :cond_a

    .line 947
    add-int/lit8 v6, v6, 0x1

    .line 948
    const/4 v7, 0x0

    .line 925
    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    nop

    .line 952
    .end local v8    # "i":I
    iput-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 953
    return-void
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1062
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 1064
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1068
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    .line 1072
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 1073
    .local v0, "stream":Ljava/io/InputStream;
    const-wide v4, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1075
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_1
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    goto :goto_0

    .line 1072
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 1078
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 1065
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 1147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 1161
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 1162
    return v1

    .line 1165
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1166
    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 1167
    return v1

    .line 1165
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 1170
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 718
    .local v0, "areAllDefined":I
    if-eqz v0, :cond_1

    .line 719
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 720
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 721
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v2    # "i":I
    goto :goto_1

    .line 724
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    .line 726
    .restart local v1    # "bits":Ljava/util/BitSet;
    :goto_1
    return-object v1
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 412
    .local v0, "nid":I
    :goto_0
    if-eqz v0, :cond_0

    .line 413
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 414
    .local v1, "propertySize":J
    long-to-int v3, v1

    new-array v3, v3, [B

    .line 415
    .local v3, "property":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 416
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 417
    .end local v1    # "propertySize":J
    .end local v3    # "property":[B
    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 731
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 732
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 733
    .local v2, "cache":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 734
    if-nez v1, :cond_0

    .line 735
    const/16 v1, 0x80

    .line 736
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 738
    :cond_0
    and-int v4, v2, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 739
    ushr-int/lit8 v1, v1, 0x1

    .line 733
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 741
    .end local v3    # "i":I
    return-object v0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .locals 16
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 425
    iget-object v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    .line 426
    .local v4, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/4 v5, 0x0

    .line 427
    .local v5, "firstPackStreamIndex":I
    const-wide/16 v6, 0x20

    iget-wide v8, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v8, v6

    const-wide/16 v6, 0x0

    add-long/2addr v8, v6

    .line 430
    .local v8, "folderOffset":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 431
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v6, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v7, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v10, v7, v3

    invoke-direct {v0, v6, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 433
    .local v0, "inputStreamStack":Ljava/io/InputStream;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v11, v0

    .end local v0    # "inputStreamStack":Ljava/io/InputStream;
    .local v11, "inputStreamStack":Ljava/io/InputStream;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 434
    .local v14, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v6, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v12, 0x1

    cmp-long v0, v6, v12

    if-nez v0, :cond_0

    iget-wide v6, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v6, v12

    if-nez v0, :cond_0

    .line 437
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 438
    invoke-virtual {v4, v14}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v12

    .line 437
    move-object/from16 v15, p3

    invoke-static/range {v10 .. v15}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v11

    .line 439
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    goto :goto_0

    .line 435
    .restart local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Multi input/output stream coders are not yet supported"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    iget-boolean v0, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v0, :cond_2

    .line 441
    new-instance v10, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 442
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v12

    iget-wide v14, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v11, v10

    .line 444
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v3, v0, [B

    .line 445
    .local v3, "nextHeader":[B
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    .line 446
    .local v6, "nextHeaderInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v6, v3}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 448
    .end local v6    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 445
    .restart local v6    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v7
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 20
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 746
    .local v3, "numFiles":J
    long-to-int v5, v3

    new-array v5, v5, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 747
    .local v5, "files":[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 748
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v7, v5, v6

    .line 747
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 750
    .end local v6    # "i":I
    const/4 v6, 0x0

    .line 751
    .local v6, "isEmptyStream":Ljava/util/BitSet;
    const/4 v7, 0x0

    .line 752
    .local v7, "isEmptyFile":Ljava/util/BitSet;
    const/4 v8, 0x0

    .line 754
    .local v8, "isAnti":Ljava/util/BitSet;
    :goto_1
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v9

    .line 755
    .local v9, "propertyType":I
    if-nez v9, :cond_8

    .line 756
    nop

    .line 879
    .end local v9    # "propertyType":I
    const/4 v9, 0x0

    .line 880
    .local v9, "nonEmptyFileCounter":I
    const/4 v12, 0x0

    .line 881
    .local v12, "emptyFileCounter":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    array-length v14, v5

    if-ge v13, v14, :cond_7

    .line 882
    aget-object v14, v5, v13

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    goto :goto_3

    :cond_2
    move v10, v15

    goto :goto_4

    :goto_3
    move/from16 v10, v16

    :goto_4
    invoke-virtual {v14, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 883
    aget-object v10, v5, v13

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 884
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 885
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 886
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 887
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v14, v11, v9

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 888
    aget-object v10, v5, v13

    iget-object v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v14, v11, v9

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 889
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 891
    :cond_3
    aget-object v10, v5, v13

    if-eqz v7, :cond_4

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    goto :goto_5

    :cond_5
    move v11, v15

    goto :goto_6

    :goto_5
    move/from16 v11, v16

    :goto_6
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 892
    aget-object v10, v5, v13

    if-eqz v8, :cond_6

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move/from16 v11, v16

    goto :goto_7

    :cond_6
    move v11, v15

    :goto_7
    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 893
    aget-object v10, v5, v13

    invoke-virtual {v10, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 894
    aget-object v10, v5, v13

    const-wide/16 v14, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 895
    add-int/lit8 v12, v12, 0x1

    .line 881
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_7
    nop

    .line 898
    .end local v13    # "i":I
    iput-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 899
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 900
    return-void

    .line 758
    .end local v12    # "emptyFileCounter":I
    .local v9, "propertyType":I
    :cond_8
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 759
    .local v10, "size":J
    const-string v12, "Unimplemented"

    packed-switch v9, :pswitch_data_0

    .line 872
    :pswitch_0
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-ltz v12, :cond_9

    move-wide v15, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_10

    .line 873
    :cond_9
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incomplete property of type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 864
    :pswitch_1
    invoke-static {v1, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    cmp-long v12, v12, v10

    if-ltz v12, :cond_a

    move-wide v15, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_10

    .line 865
    :cond_a
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Incomplete kDummy property"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 858
    :pswitch_2
    new-instance v12, Ljava/io/IOException;

    const-string v13, "kStartPos is unsupported, please report"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 844
    :pswitch_3
    array-length v13, v5

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v13

    .line 845
    .local v13, "attributesDefined":Ljava/util/BitSet;
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 846
    .local v14, "external":I
    if-nez v14, :cond_d

    .line 849
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    array-length v15, v5

    if-ge v12, v15, :cond_c

    .line 850
    aget-object v15, v5, v12

    invoke-virtual {v13, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {v15, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 851
    aget-object v2, v5, v12

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 852
    aget-object v2, v5, v12

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v2, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    .line 849
    :cond_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    goto :goto_9

    :cond_c
    nop

    .line 855
    .end local v12    # "i":I
    move-wide v15, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_10

    .line 847
    :cond_d
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 830
    .end local v13    # "attributesDefined":Ljava/util/BitSet;
    .end local v14    # "external":I
    :pswitch_4
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 831
    .local v2, "timesDefined":Ljava/util/BitSet;
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v13

    .line 832
    .local v13, "external":I
    if-nez v13, :cond_10

    .line 835
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    array-length v14, v5

    if-ge v12, v14, :cond_f

    .line 836
    aget-object v14, v5, v12

    invoke-virtual {v2, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 837
    aget-object v14, v5, v12

    invoke-virtual {v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 838
    aget-object v14, v5, v12

    move-wide v15, v3

    move-object v4, v2

    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .local v4, "timesDefined":Ljava/util/BitSet;
    .local v15, "numFiles":J
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    goto :goto_b

    .line 837
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_e
    move-wide v15, v3

    move-object v4, v2

    .line 835
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object v2, v4

    move-wide v3, v15

    goto :goto_a

    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_f
    move-wide v15, v3

    move-object v4, v2

    .line 841
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v3    # "numFiles":J
    .end local v12    # "i":I
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_10

    .line 833
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    :cond_10
    move-object v4, v2

    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .restart local v4    # "timesDefined":Ljava/util/BitSet;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    .end local v4    # "timesDefined":Ljava/util/BitSet;
    .end local v13    # "external":I
    :pswitch_5
    move-wide v15, v3

    .end local v3    # "numFiles":J
    .restart local v15    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 817
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 818
    .local v3, "external":I
    if-nez v3, :cond_13

    .line 821
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    array-length v12, v5

    if-ge v4, v12, :cond_12

    .line 822
    aget-object v12, v5, v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 823
    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 824
    aget-object v12, v5, v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    .line 821
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_12
    nop

    .line 827
    .end local v4    # "i":I
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_10

    .line 819
    :cond_13
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 802
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_6
    move-wide v15, v3

    .end local v3    # "numFiles":J
    .restart local v15    # "numFiles":J
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 803
    .restart local v2    # "timesDefined":Ljava/util/BitSet;
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 804
    .local v3, "external":I
    if-nez v3, :cond_16

    .line 807
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_d
    array-length v12, v5

    if-ge v4, v12, :cond_15

    .line 808
    aget-object v12, v5, v4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 809
    aget-object v12, v5, v4

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 810
    aget-object v12, v5, v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    .line 807
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_15
    nop

    .line 813
    .end local v4    # "i":I
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_10

    .line 805
    :cond_16
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 779
    .end local v2    # "timesDefined":Ljava/util/BitSet;
    .end local v15    # "numFiles":J
    .local v3, "numFiles":J
    :pswitch_7
    move-wide v15, v3

    .end local v3    # "numFiles":J
    .restart local v15    # "numFiles":J
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 780
    .local v2, "external":I
    if-nez v2, :cond_1b

    .line 783
    const-wide/16 v3, 0x1

    sub-long v12, v10, v3

    and-long/2addr v12, v3

    const-wide/16 v17, 0x0

    cmp-long v12, v12, v17

    if-nez v12, :cond_1a

    .line 786
    sub-long v3, v10, v3

    long-to-int v3, v3

    new-array v3, v3, [B

    .line 787
    .local v3, "names":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 788
    const/4 v4, 0x0

    .line 789
    .local v4, "nextFile":I
    const/4 v12, 0x0

    .line 790
    .local v12, "nextName":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_e
    array-length v14, v3

    if-ge v13, v14, :cond_18

    .line 791
    aget-byte v14, v3, v13

    if-nez v14, :cond_17

    add-int/lit8 v14, v13, 0x1

    aget-byte v14, v3, v14

    if-nez v14, :cond_17

    .line 792
    add-int/lit8 v14, v4, 0x1

    .end local v4    # "nextFile":I
    .local v14, "nextFile":I
    aget-object v4, v5, v4

    move/from16 v17, v2

    .end local v2    # "external":I
    .local v17, "external":I
    new-instance v2, Ljava/lang/String;

    move-object/from16 v18, v6

    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .local v18, "isEmptyStream":Ljava/util/BitSet;
    sub-int v6, v13, v12

    move-object/from16 v19, v7

    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .local v19, "isEmptyFile":Ljava/util/BitSet;
    const-string v7, "UTF-16LE"

    invoke-direct {v2, v3, v12, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 793
    add-int/lit8 v2, v13, 0x2

    move v12, v2

    move v4, v14

    .end local v12    # "nextName":I
    .local v2, "nextName":I
    goto :goto_f

    .line 791
    .end local v14    # "nextFile":I
    .end local v17    # "external":I
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "external":I
    .restart local v4    # "nextFile":I
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v12    # "nextName":I
    :cond_17
    move/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 790
    .end local v2    # "external":I
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "external":I
    .restart local v18    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    :goto_f
    add-int/lit8 v13, v13, 0x2

    move/from16 v2, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_e

    .end local v17    # "external":I
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v2    # "external":I
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :cond_18
    move/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 796
    .end local v2    # "external":I
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .end local v13    # "i":I
    .restart local v17    # "external":I
    .restart local v18    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    array-length v2, v3

    if-ne v12, v2, :cond_19

    array-length v2, v5

    if-ne v4, v2, :cond_19

    .line 878
    .end local v4    # "nextFile":I
    .end local v9    # "propertyType":I
    .end local v10    # "size":J
    .end local v12    # "nextName":I
    .end local v15    # "numFiles":J
    .end local v17    # "external":I
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .local v3, "numFiles":J
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :goto_10
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    .end local v3    # "numFiles":J
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    goto :goto_11

    .line 797
    .local v3, "names":[B
    .restart local v4    # "nextFile":I
    .restart local v9    # "propertyType":I
    .restart local v10    # "size":J
    .restart local v12    # "nextName":I
    .restart local v17    # "external":I
    :cond_19
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Error parsing file names"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 784
    .end local v3    # "names":[B
    .end local v4    # "nextFile":I
    .end local v12    # "nextName":I
    .end local v17    # "external":I
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v2    # "external":I
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :cond_1a
    move/from16 v17, v2

    .end local v2    # "external":I
    .restart local v17    # "external":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File names length invalid"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 781
    .end local v17    # "external":I
    .restart local v2    # "external":I
    :cond_1b
    move/from16 v17, v2

    .end local v2    # "external":I
    .restart local v17    # "external":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Not implemented"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 772
    .end local v15    # "numFiles":J
    .end local v17    # "external":I
    .local v3, "numFiles":J
    :pswitch_8
    move-wide v15, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v3    # "numFiles":J
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    if-eqz v18, :cond_1c

    .line 775
    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 776
    .end local v8    # "isAnti":Ljava/util/BitSet;
    .local v2, "isAnti":Ljava/util/BitSet;
    move-object v8, v2

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_11

    .line 773
    .end local v2    # "isAnti":Ljava/util/BitSet;
    .restart local v8    # "isAnti":Ljava/util/BitSet;
    :cond_1c
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    .end local v15    # "numFiles":J
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :pswitch_9
    move-wide v15, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v3    # "numFiles":J
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    if-eqz v18, :cond_1d

    .line 768
    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 769
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "isEmptyFile":Ljava/util/BitSet;
    move-object v7, v2

    move-object/from16 v6, v18

    goto :goto_11

    .line 766
    .end local v2    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    :cond_1d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 761
    .end local v15    # "numFiles":J
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v3    # "numFiles":J
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :pswitch_a
    move-wide v15, v3

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v3    # "numFiles":J
    .end local v6    # "isEmptyStream":Ljava/util/BitSet;
    .end local v7    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v15    # "numFiles":J
    .restart local v18    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v19    # "isEmptyFile":Ljava/util/BitSet;
    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 762
    .end local v18    # "isEmptyStream":Ljava/util/BitSet;
    .local v2, "isEmptyStream":Ljava/util/BitSet;
    move-object v6, v2

    .line 878
    .end local v2    # "isEmptyStream":Ljava/util/BitSet;
    .end local v9    # "propertyType":I
    .end local v10    # "size":J
    .end local v19    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v6    # "isEmptyStream":Ljava/util/BitSet;
    .restart local v7    # "isEmptyFile":Ljava/util/BitSet;
    :goto_11
    move-object/from16 v2, p2

    move-wide v3, v15

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 23
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    move-object/from16 v0, p1

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 639
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 640
    .local v2, "numCoders":J
    long-to-int v4, v2

    new-array v4, v4, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 641
    .local v4, "coders":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    const-wide/16 v5, 0x0

    .line 642
    .local v5, "totalInStreams":J
    const-wide/16 v7, 0x0

    .line 643
    .local v7, "totalOutStreams":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v4

    if-ge v9, v10, :cond_6

    .line 644
    new-instance v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct {v10}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v10, v4, v9

    .line 645
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 646
    .local v10, "bits":I
    and-int/lit8 v14, v10, 0xf

    .line 647
    .local v14, "idSize":I
    and-int/lit8 v15, v10, 0x10

    const/16 v16, 0x1

    if-nez v15, :cond_0

    move/from16 v15, v16

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 648
    .local v15, "isSimple":Z
    :goto_1
    and-int/lit8 v17, v10, 0x20

    if-eqz v17, :cond_1

    move/from16 v17, v16

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    .line 649
    .local v17, "hasAttributes":Z
    :goto_2
    const/16 v18, 0x0

    and-int/lit16 v13, v10, 0x80

    if-eqz v13, :cond_2

    move/from16 v13, v16

    goto :goto_3

    :cond_2
    move/from16 v13, v18

    .line 651
    .local v13, "moreAlternativeMethods":Z
    :goto_3
    aget-object v11, v4, v9

    new-array v12, v14, [B

    iput-object v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 652
    aget-object v11, v4, v9

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 653
    if-eqz v15, :cond_3

    .line 654
    aget-object v11, v4, v9

    move-wide/from16 v21, v2

    const-wide/16 v2, 0x1

    .end local v2    # "numCoders":J
    .local v21, "numCoders":J
    iput-wide v2, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 655
    aget-object v11, v4, v9

    iput-wide v2, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_4

    .line 657
    .end local v21    # "numCoders":J
    .restart local v2    # "numCoders":J
    :cond_3
    move-wide/from16 v21, v2

    .end local v2    # "numCoders":J
    .restart local v21    # "numCoders":J
    aget-object v2, v4, v9

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    iput-wide v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 658
    aget-object v2, v4, v9

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    iput-wide v11, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 660
    :goto_4
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    add-long/2addr v5, v2

    .line 661
    aget-object v2, v4, v9

    iget-wide v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    add-long/2addr v7, v2

    .line 662
    if-eqz v17, :cond_4

    .line 663
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 664
    .local v2, "propertiesSize":J
    aget-object v11, v4, v9

    long-to-int v12, v2

    new-array v12, v12, [B

    iput-object v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 665
    aget-object v11, v4, v9

    iget-object v11, v11, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 668
    .end local v2    # "propertiesSize":J
    :cond_4
    if-nez v13, :cond_5

    .line 643
    .end local v10    # "bits":I
    .end local v13    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v21

    goto/16 :goto_0

    .line 669
    .restart local v10    # "bits":I
    .restart local v13    # "moreAlternativeMethods":Z
    .restart local v14    # "idSize":I
    .restart local v15    # "isSimple":Z
    .restart local v17    # "hasAttributes":Z
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    .end local v10    # "bits":I
    .end local v13    # "moreAlternativeMethods":Z
    .end local v14    # "idSize":I
    .end local v15    # "isSimple":Z
    .end local v17    # "hasAttributes":Z
    .end local v21    # "numCoders":J
    .local v2, "numCoders":J
    :cond_6
    move-wide/from16 v21, v2

    const/16 v18, 0x0

    .line 673
    .end local v2    # "numCoders":J
    .end local v9    # "i":I
    .restart local v21    # "numCoders":J
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 674
    iput-wide v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 675
    iput-wide v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 677
    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-eqz v2, :cond_e

    .line 680
    const-wide/16 v19, 0x1

    sub-long v2, v7, v19

    .line 681
    .local v2, "numBindPairs":J
    long-to-int v9, v2

    new-array v9, v9, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 682
    .local v9, "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    array-length v11, v9

    if-ge v10, v11, :cond_7

    .line 683
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v11, v9, v10

    .line 684
    aget-object v11, v9, v10

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 685
    aget-object v11, v9, v10

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 682
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    nop

    .line 687
    .end local v10    # "i":I
    iput-object v9, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 689
    cmp-long v10, v5, v2

    if-ltz v10, :cond_d

    .line 692
    sub-long v10, v5, v2

    .line 693
    .local v10, "numPackedStreams":J
    long-to-int v12, v10

    new-array v12, v12, [J

    .line 694
    .local v12, "packedStreams":[J
    const-wide/16 v19, 0x1

    cmp-long v13, v10, v19

    if-nez v13, :cond_b

    .line 696
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    long-to-int v14, v5

    if-ge v13, v14, :cond_9

    .line 697
    invoke-virtual {v1, v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v14

    if-gez v14, :cond_8

    .line 698
    goto :goto_7

    .line 696
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 701
    :cond_9
    :goto_7
    long-to-int v14, v5

    if-eq v13, v14, :cond_a

    .line 704
    int-to-long v14, v13

    aput-wide v14, v12, v18

    .line 705
    .end local v13    # "i":I
    goto :goto_9

    .line 702
    .restart local v13    # "i":I
    :cond_a
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 706
    .end local v13    # "i":I
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    long-to-int v14, v10

    if-ge v13, v14, :cond_c

    .line 707
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 706
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 710
    .end local v13    # "i":I
    :cond_c
    :goto_9
    iput-object v12, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 712
    return-object v1

    .line 690
    .end local v10    # "numPackedStreams":J
    .end local v12    # "packedStreams":[J
    :cond_d
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 678
    .end local v2    # "numBindPairs":J
    .end local v9    # "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Total output streams can\'t be 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1188
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1190
    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 384
    .local v0, "nid":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 386
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 389
    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 394
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 395
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 396
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 399
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 401
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 404
    :cond_2
    if-nez v0, :cond_3

    .line 407
    return-void

    .line 405
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badly terminated header, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Additional streams unsupported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 13
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 321
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 323
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 324
    .local v1, "signature":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 325
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 330
    .local v2, "archiveVersionMajor":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 331
    .local v3, "archiveVersionMinor":B
    if-nez v2, :cond_4

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 337
    .local v4, "startHeaderCrc":J
    invoke-direct {p0, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v6

    .line 339
    .local v6, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    iget-wide v7, v6, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v7, v7

    .line 340
    .local v7, "nextHeaderSizeInt":I
    int-to-long v8, v7

    iget-wide v10, v6, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 343
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v9, 0x20

    iget-wide v11, v6, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v11, v9

    invoke-interface {v8, v11, v12}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 344
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 345
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 346
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 347
    .local v8, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 348
    iget-wide v9, v6, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 352
    new-instance v9, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v9}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 353
    .local v9, "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 354
    .local v10, "nid":I
    const/16 v11, 0x17

    if-ne v10, v11, :cond_0

    .line 355
    invoke-direct {p0, v0, v9, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 357
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    move-object v9, v11

    .line 358
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 360
    :cond_0
    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 361
    invoke-direct {p0, v0, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 365
    return-object v9

    .line 363
    :cond_1
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Broken or unsupported archive: no Header"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 349
    .end local v9    # "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .end local v10    # "nid":I
    :cond_2
    new-instance v9, Ljava/io/IOException;

    const-string v10, "NextHeader CRC mismatch"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 341
    .end local v8    # "crc":Ljava/util/zip/CRC32;
    :cond_3
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot handle nextHeaderSize "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v6, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 332
    .end local v4    # "startHeaderCrc":J
    .end local v6    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v7    # "nextHeaderSizeInt":I
    :cond_4
    new-instance v4, Ljava/io/IOException;

    .line 333
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 332
    const-string v6, "Unsupported 7z version (%d,%d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 326
    .end local v2    # "archiveVersionMajor":B
    .end local v3    # "archiveVersionMinor":B
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad 7z signature"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 9
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 479
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 480
    .local v0, "numPackStreams":J
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 481
    .local v2, "nid":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 482
    long-to-int v3, v0

    new-array v3, v3, [J

    iput-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 483
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 484
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 486
    .end local v3    # "i":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 489
    :cond_1
    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 490
    long-to-int v3, v0

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    iput-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 491
    long-to-int v3, v0

    new-array v3, v3, [J

    iput-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 492
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    long-to-int v4, v0

    if-ge v3, v4, :cond_3

    .line 493
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 494
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 492
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 498
    .end local v3    # "i":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 501
    :cond_4
    if-nez v2, :cond_5

    .line 504
    return-void

    .line 502
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Badly terminated PackInfo ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 8
    .param p1, "startHeaderCrc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    move-object v1, v0

    .line 372
    .local v1, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v5, 0x14

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    const-wide/16 v4, 0x14

    move-wide v6, p1

    .end local p1    # "startHeaderCrc":J
    .local v6, "startHeaderCrc":J
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 374
    .local p1, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 375
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 376
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, v1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    nop

    .line 378
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 377
    return-object v1

    .line 372
    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 3
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 454
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 455
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 456
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 459
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 460
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 461
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 464
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 467
    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 468
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 469
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 472
    :cond_2
    if-nez v0, :cond_3

    .line 475
    return-void

    .line 473
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated StreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 21
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 555
    .local v6, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 554
    .end local v6    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 557
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    .line 559
    .local v1, "totalUnpackStreams":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 560
    .local v2, "nid":I
    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 561
    const/4 v1, 0x0

    .line 562
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v4, v7

    .line 563
    .local v8, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 564
    .local v9, "numStreams":J
    long-to-int v11, v9

    iput v11, v8, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 565
    int-to-long v11, v1

    add-long/2addr v11, v9

    long-to-int v1, v11

    .line 562
    .end local v8    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v9    # "numStreams":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 567
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 570
    :cond_2
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 571
    .local v4, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    new-array v6, v1, [J

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 572
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 573
    new-array v6, v1, [J

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 575
    const/4 v6, 0x0

    .line 576
    .local v6, "nextUnpackStream":I
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x9

    if-ge v9, v8, :cond_5

    aget-object v11, v7, v9

    .line 577
    .local v11, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v12, :cond_3

    .line 578
    goto :goto_4

    .line 580
    :cond_3
    const-wide/16 v12, 0x0

    .line 581
    .local v12, "sum":J
    if-ne v2, v10, :cond_4

    .line 582
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    iget v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v14, v5

    if-ge v10, v14, :cond_4

    .line 583
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 584
    .local v14, "size":J
    iget-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v17, v6, 0x1

    .end local v6    # "nextUnpackStream":I
    .local v17, "nextUnpackStream":I
    aput-wide v14, v3, v6

    .line 585
    add-long/2addr v12, v14

    .line 582
    .end local v14    # "size":J
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v17

    goto :goto_3

    .line 588
    .end local v10    # "i":I
    .end local v17    # "nextUnpackStream":I
    .restart local v6    # "nextUnpackStream":I
    :cond_4
    iget-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v10, v6, 0x1

    .end local v6    # "nextUnpackStream":I
    .local v10, "nextUnpackStream":I
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v14

    sub-long/2addr v14, v12

    aput-wide v14, v3, v6

    move v6, v10

    .line 576
    .end local v10    # "nextUnpackStream":I
    .end local v11    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v12    # "sum":J
    .restart local v6    # "nextUnpackStream":I
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 590
    :cond_5
    if-ne v2, v10, :cond_6

    .line 591
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 594
    :cond_6
    const/4 v3, 0x0

    .line 595
    .local v3, "numDigests":I
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    aget-object v10, v7, v9

    .line 596
    .local v10, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v11, v5, :cond_7

    iget-boolean v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v11, :cond_8

    .line 597
    :cond_7
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v3, v11

    .line 595
    .end local v10    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 601
    :cond_9
    const/16 v7, 0xa

    if-ne v2, v7, :cond_f

    .line 602
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct {v7, v8, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 603
    .local v9, "hasMissingCrc":Ljava/util/BitSet;
    new-array v10, v3, [J

    .line 604
    .local v10, "missingCrcs":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v3, :cond_b

    .line 605
    invoke-virtual {v9, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 606
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 604
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    nop

    .line 609
    .end local v11    # "i":I
    const/4 v11, 0x0

    .line 610
    .local v11, "nextCrc":I
    const/4 v12, 0x0

    .line 611
    .local v12, "nextMissingCrc":I
    iget-object v13, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v14, v13

    move v15, v12

    move v12, v11

    const/4 v11, 0x0

    .end local v11    # "nextCrc":I
    .local v12, "nextCrc":I
    .local v15, "nextMissingCrc":I
    :goto_7
    if-ge v11, v14, :cond_e

    aget-object v5, v13, v11

    .line 612
    .local v5, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move/from16 v17, v1

    .end local v1    # "totalUnpackStreams":I
    .local v17, "totalUnpackStreams":I
    iget v1, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "nid":I
    .local v18, "nid":I
    if-ne v1, v2, :cond_c

    iget-boolean v1, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v1, :cond_c

    .line 613
    iget-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v1, v12, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 614
    iget-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move/from16 v16, v3

    .end local v3    # "numDigests":I
    .local v16, "numDigests":I
    iget-wide v2, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v2, v1, v12

    .line 615
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 612
    .end local v16    # "numDigests":I
    .restart local v3    # "numDigests":I
    :cond_c
    move/from16 v16, v3

    .line 617
    .end local v3    # "numDigests":I
    .restart local v16    # "numDigests":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v2, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v1, v2, :cond_d

    .line 618
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v9, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    invoke-virtual {v2, v12, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 619
    iget-object v2, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v19, v10, v15

    aput-wide v19, v2, v12

    .line 620
    add-int/lit8 v12, v12, 0x1

    .line 621
    add-int/lit8 v15, v15, 0x1

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 611
    .end local v1    # "i":I
    .end local v5    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_d
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    const/4 v5, 0x1

    goto :goto_7

    .line 626
    .end local v16    # "numDigests":I
    .end local v17    # "totalUnpackStreams":I
    .end local v18    # "nid":I
    .local v1, "totalUnpackStreams":I
    .restart local v2    # "nid":I
    .restart local v3    # "numDigests":I
    :cond_e
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v3

    .end local v1    # "totalUnpackStreams":I
    .end local v2    # "nid":I
    .end local v3    # "numDigests":I
    .restart local v16    # "numDigests":I
    .restart local v17    # "totalUnpackStreams":I
    .restart local v18    # "nid":I
    invoke-static {v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .end local v18    # "nid":I
    .restart local v2    # "nid":I
    goto :goto_a

    .line 601
    .end local v9    # "hasMissingCrc":Ljava/util/BitSet;
    .end local v10    # "missingCrcs":[J
    .end local v12    # "nextCrc":I
    .end local v15    # "nextMissingCrc":I
    .end local v16    # "numDigests":I
    .end local v17    # "totalUnpackStreams":I
    .restart local v1    # "totalUnpackStreams":I
    .restart local v3    # "numDigests":I
    :cond_f
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v3

    .line 629
    .end local v1    # "totalUnpackStreams":I
    .end local v3    # "numDigests":I
    .restart local v16    # "numDigests":I
    .restart local v17    # "totalUnpackStreams":I
    :goto_a
    if-nez v2, :cond_10

    .line 633
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 634
    return-void

    .line 630
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Badly terminated SubStreamsInfo"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 10
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    .line 1133
    .local v0, "firstByte":J
    const/16 v2, 0x80

    .line 1134
    .local v2, "mask":I
    const-wide/16 v3, 0x0

    .line 1135
    .local v3, "value":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 1136
    int-to-long v6, v2

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1137
    add-int/lit8 v6, v2, -0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    mul-int/lit8 v8, v5, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v6, v3

    return-wide v6

    .line 1139
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v6, v6

    .line 1140
    .local v6, "nextByte":J
    mul-int/lit8 v8, v5, 0x8

    shl-long v8, v6, v8

    or-long/2addr v3, v8

    .line 1141
    ushr-int/lit8 v2, v2, 0x1

    .line 1135
    .end local v6    # "nextByte":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1143
    .end local v5    # "i":I
    return-wide v3
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 16
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 508
    .local v0, "nid":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 511
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 512
    .local v1, "numFolders":J
    long-to-int v3, v1

    new-array v3, v3, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 513
    .local v3, "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move-object/from16 v4, p2

    iput-object v3, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 514
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 515
    .local v5, "external":I
    if-nez v5, :cond_8

    .line 518
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    long-to-int v7, v1

    if-ge v6, v7, :cond_0

    .line 519
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v7

    aput-object v7, v3, v6

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 522
    .end local v6    # "i":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 523
    const/16 v6, 0xc

    if-ne v0, v6, :cond_7

    .line 526
    array-length v6, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v3, v8

    .line 527
    .local v9, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-wide v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v10, v10

    new-array v10, v10, [J

    iput-object v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 528
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    int-to-long v11, v10

    iget-wide v13, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    .line 529
    iget-object v11, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    aput-wide v12, v11, v10

    .line 528
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 526
    .end local v9    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v10    # "i":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 533
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 534
    const/16 v6, 0xa

    if-ne v0, v6, :cond_5

    .line 535
    long-to-int v6, v1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct {v8, v9, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v6

    .line 536
    .local v6, "crcsDefined":Ljava/util/BitSet;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    long-to-int v11, v1

    if-ge v10, v11, :cond_4

    .line 537
    invoke-virtual {v6, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 538
    aget-object v11, v3, v10

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 539
    aget-object v11, v3, v10

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    iput-wide v12, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 541
    :cond_3
    aget-object v11, v3, v10

    iput-boolean v7, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 536
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    nop

    .line 545
    .end local v10    # "i":I
    invoke-static {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_5

    .line 534
    .end local v6    # "crcsDefined":Ljava/util/BitSet;
    :cond_5
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 548
    :goto_5
    if-nez v0, :cond_6

    .line 551
    return-void

    .line 549
    :cond_6
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Badly terminated UnpackInfo"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 524
    :cond_7
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Expected kCodersUnpackSize, got "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 516
    :cond_8
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v6, Ljava/io/IOException;

    const-string v7, "External unsupported"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 509
    .end local v1    # "numFolders":J
    .end local v3    # "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v5    # "external":I
    :cond_9
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v4, p2

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected kFolder, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .locals 4
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "bytesToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1175
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1177
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1178
    .local v0, "current":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1179
    .local v1, "maxSkip":I
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 1180
    int-to-long p1, v1

    .line 1182
    :cond_1
    long-to-int v2, p1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1183
    return-wide p1
.end method

.method private static utf16Decode([C)[B
    .locals 2
    .param p0, "chars"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1200
    if-nez p0, :cond_0

    .line 1201
    const/4 v0, 0x0

    return-object v0

    .line 1203
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1204
    .local v0, "encoded":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1205
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 1207
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 1208
    .local v1, "e":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1209
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 276
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 279
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 280
    goto :goto_0

    .line 275
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 276
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 279
    :cond_1
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 280
    throw v2

    .line 282
    :cond_2
    :goto_0
    return-void
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 296
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 297
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream()V

    .line 298
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 299
    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .locals 1

    .line 1118
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1054
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 1055
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1057
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1090
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1105
    .local v0, "cnt":I
    if-lez v0, :cond_0

    .line 1106
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1108
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1194
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
