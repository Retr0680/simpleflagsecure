.class final Lorg/brotli/dec/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field accumulator32:I

.field accumulator64:J

.field bitOffset:I

.field blockTrees:[I

.field byteBuffer:[B

.field cdBlockBits:I

.field cdBlockMap:[B

.field cdBrCopied:I

.field cdBrIndex:I

.field cdBrLength:I

.field cdBrOffset:I

.field cdChunkOffsets:[I

.field cdChunks:[[B

.field cdNumChunks:I

.field cdTotalSize:I

.field commandBlockLength:I

.field commandTreeGroup:[I

.field commandTreeIdx:I

.field contextLookupOffset1:I

.field contextLookupOffset2:I

.field contextMap:[B

.field contextMapSlice:I

.field contextModes:[B

.field copyLength:I

.field distContextMap:[B

.field distContextMapSlice:I

.field distExtraBits:[B

.field distOffset:[I

.field distRbIdx:I

.field distance:I

.field distanceBlockLength:I

.field distanceCode:I

.field distancePostfixBits:I

.field distanceTreeGroup:[I

.field endOfStreamReached:I

.field expectedTotalSize:I

.field halfOffset:I

.field input:Ljava/io/InputStream;

.field inputEnd:I

.field insertLength:I

.field intBuffer:[I

.field isEager:I

.field isLargeWindow:I

.field isMetadata:I

.field isUncompressed:I

.field j:I

.field literalBlockLength:I

.field literalTreeGroup:[I

.field literalTreeIdx:I

.field maxBackwardDistance:I

.field maxDistance:I

.field maxRingBufferSize:I

.field metaBlockLength:I

.field nextRunningState:I

.field numCommandBlockTypes:I

.field numDirectDistanceCodes:I

.field numDistanceBlockTypes:I

.field numLiteralBlockTypes:I

.field output:[B

.field outputLength:I

.field outputOffset:I

.field outputUsed:I

.field pos:I

.field ringBuffer:[B

.field ringBufferBytesReady:I

.field ringBufferBytesWritten:I

.field ringBufferSize:I

.field rings:[I

.field runningState:I

.field shortBuffer:[S

.field tailBytes:I

.field trivialLiteralContext:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 94
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/brotli/dec/State;->rings:[I

    .line 95
    iget-object v1, p0, Lorg/brotli/dec/State;->rings:[I

    const/16 v2, 0x10

    aput v2, v1, v0

    .line 96
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x1

    const/16 v2, 0xf

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x2

    const/16 v2, 0xb

    aput v2, v0, v1

    .line 98
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x3

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 99
    return-void
.end method
