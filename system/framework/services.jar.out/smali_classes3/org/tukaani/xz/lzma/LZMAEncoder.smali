.class public abstract Lorg/tukaani/xz/lzma/LZMAEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;,
        Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALIGN_PRICE_UPDATE_INTERVAL:I = 0x10

.field private static final DIST_PRICE_UPDATE_INTERVAL:I = 0x80

.field private static final LZMA2_COMPRESSED_LIMIT:I = 0xffe6

.field private static final LZMA2_UNCOMPRESSED_LIMIT:I = 0x1ffeef

.field public static final MODE_FAST:I = 0x1

.field public static final MODE_NORMAL:I = 0x2


# instance fields
.field private alignPriceCount:I

.field private final alignPrices:[I

.field back:I

.field private distPriceCount:I

.field private final distSlotPrices:[[I

.field private final distSlotPricesSize:I

.field private final fullDistPrices:[[I

.field final literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

.field final lz:Lorg/tukaani/xz/lz/LZEncoder;

.field final matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field final niceLen:I

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

.field readAhead:I

.field final repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field private uncompressedSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetrc(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 19
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V
    .locals 6
    .param p1, "rc"    # Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .param p2, "lz"    # Lorg/tukaani/xz/lz/LZEncoder;
    .param p3, "lc"    # I
    .param p4, "lp"    # I
    .param p5, "pb"    # I
    .param p6, "dictSize"    # I
    .param p7, "niceLen"    # I

    .line 177
    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 58
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 62
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x80

    aput v4, v2, v3

    const/4 v4, 0x4

    aput v4, v2, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    .line 64
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    .line 66
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 67
    const/4 v2, -0x1

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 68
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 178
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    .line 179
    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 180
    iput p7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    .line 182
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-direct {v2, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    .line 183
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {v2, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 184
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {v2, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 186
    add-int/lit8 v2, p6, -0x1

    invoke-static {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    .line 187
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    new-array v1, v1, [I

    aput v2, v1, v3

    aput v4, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    .line 189
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    .line 190
    return-void
.end method

.method private encodeInit()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    nop

    .line 263
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 269
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    .line 270
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 271
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encodeInit()V

    .line 273
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 274
    nop

    .line 276
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 277
    nop

    .line 279
    return v0
.end method

.method private encodeMatch(III)V
    .locals 9
    .param p1, "dist"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 322
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    .line 324
    invoke-static {p1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v0

    .line 325
    .local v0, "distSlot":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMACoder;->getDistState(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    .line 327
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 328
    ushr-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, v3

    .line 329
    .local v1, "footerBits":I
    and-int/lit8 v4, v0, 0x1

    or-int/2addr v4, v2

    shl-int/2addr v4, v1

    .line 330
    .local v4, "base":I
    sub-int v5, p1, v4

    .line 332
    .local v5, "distReduced":I
    const/16 v6, 0xe

    if-ge v0, v6, :cond_0

    .line 333
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    add-int/lit8 v8, v0, -0x4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v5}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    ushr-int/lit8 v7, v5, 0x4

    add-int/lit8 v8, v1, -0x4

    invoke-virtual {v6, v7, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeDirectBits(II)V

    .line 339
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    and-int/lit8 v8, v5, 0xf

    invoke-virtual {v6, v7, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    .line 340
    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 344
    .end local v1    # "footerBits":I
    .end local v4    # "base":I
    .end local v5    # "distReduced":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v4, v4, v2

    const/4 v5, 0x3

    aput v4, v1, v5

    .line 345
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v4, v4, v3

    aput v4, v1, v2

    .line 346
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    aput v2, v1, v3

    .line 347
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aput p1, v1, v4

    .line 349
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 350
    return-void
.end method

.method private encodeRepMatch(III)V
    .locals 7
    .param p1, "rep"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 355
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 356
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, p3, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    goto :goto_2

    .line 358
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v2, v2, p1

    .line 359
    .local v2, "dist":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 361
    if-ne p1, v1, :cond_2

    .line 362
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 365
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 367
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p1, v3, :cond_3

    .line 368
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v6, v6, v4

    aput v6, v5, v3

    .line 370
    :cond_3
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v5, v5, v1

    aput v5, v3, v4

    .line 373
    :goto_1
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v4, v4, v0

    aput v4, v3, v1

    .line 374
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aput v2, v3, v0

    .line 377
    .end local v2    # "dist":I
    :goto_2
    if-ne p2, v1, :cond_4

    .line 378
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_3

    .line 380
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    .line 381
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    .line 383
    :goto_3
    return-void
.end method

.method private encodeSymbol()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getNextSymbol()I

    move-result v0

    .line 288
    .local v0, "len":I
    nop

    .line 289
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v3

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v3, v4

    .line 291
    .local v3, "posState":I
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 293
    nop

    .line 294
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 295
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encode()V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 299
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 302
    nop

    .line 303
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v1, v4, v5, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 304
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    invoke-direct {p0, v1, v0, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeRepMatch(III)V

    goto :goto_0

    .line 307
    :cond_2
    nop

    .line 308
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v7

    invoke-virtual {v4, v6, v7, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 309
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v0, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    .line 313
    :goto_0
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 314
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 316
    return v2
.end method

.method public static getDistSlot(I)I
    .locals 4
    .param p0, "dist"    # I

    .line 124
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    if-ltz p0, :cond_0

    .line 125
    return p0

    .line 127
    :cond_0
    move v0, p0

    .line 128
    .local v0, "n":I
    const/16 v1, 0x1f

    .line 130
    .local v1, "i":I
    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 131
    shl-int/lit8 v0, v0, 0x10

    .line 132
    const/16 v1, 0xf

    .line 135
    :cond_1
    const/high16 v2, -0x1000000

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 136
    shl-int/lit8 v0, v0, 0x8

    .line 137
    add-int/lit8 v1, v1, -0x8

    .line 140
    :cond_2
    const/high16 v2, -0x10000000

    and-int/2addr v2, v0

    if-nez v2, :cond_3

    .line 141
    shl-int/lit8 v0, v0, 0x4

    .line 142
    add-int/lit8 v1, v1, -0x4

    .line 145
    :cond_3
    const/high16 v2, -0x40000000    # -2.0f

    and-int/2addr v2, v0

    if-nez v2, :cond_4

    .line 146
    shl-int/lit8 v0, v0, 0x2

    .line 147
    add-int/lit8 v1, v1, -0x2

    .line 150
    :cond_4
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-nez v2, :cond_5

    .line 151
    add-int/lit8 v1, v1, -0x1

    .line 153
    :cond_5
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, -0x1

    ushr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    return v2
.end method

.method public static getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;
    .locals 13
    .param p0, "rc"    # Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I
    .param p4, "mode"    # I
    .param p5, "dictSize"    # I
    .param p6, "extraSizeBefore"    # I
    .param p7, "niceLen"    # I
    .param p8, "mf"    # I
    .param p9, "depthLimit"    # I
    .param p10, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 97
    packed-switch p4, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :pswitch_0
    new-instance v1, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v1

    .line 99
    :pswitch_1
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoderFast;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMemoryUsage(IIII)I
    .locals 2
    .param p0, "mode"    # I
    .param p1, "dictSize"    # I
    .param p2, "extraSizeBefore"    # I
    .param p3, "mf"    # I

    .line 72
    const/16 v0, 0x50

    .line 74
    .local v0, "m":I
    packed-switch p0, :pswitch_data_0

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 81
    :pswitch_0
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMemoryUsage(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    goto :goto_0

    .line 76
    :pswitch_1
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMemoryUsage(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    nop

    .line 89
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateAlignPrices()V
    .locals 4

    .line 511
    const/16 v0, 0x10

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v3

    aput v3, v2, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 516
    .end local v1    # "i":I
    return-void
.end method

.method private updateDistPrices()V
    .locals 12

    .line 466
    const/16 v0, 0x80

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 468
    const/4 v0, 0x0

    .local v0, "distState":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 469
    const/4 v2, 0x0

    .local v2, "distSlot":I
    :goto_1
    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v2, v3, :cond_0

    .line 470
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    aget-object v4, v4, v0

    .line 471
    invoke-static {v4, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v4

    aput v4, v3, v2

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 474
    .end local v2    # "distSlot":I
    const/16 v2, 0xe

    .restart local v2    # "distSlot":I
    :goto_2
    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v2, v3, :cond_1

    .line 476
    ushr-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 477
    .local v3, "count":I
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v4, v4, v0

    aget v5, v4, v2

    .line 478
    invoke-static {v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getDirectBitsPrice(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    .line 475
    .end local v3    # "count":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 474
    :cond_1
    nop

    .line 481
    .end local v2    # "distSlot":I
    const/4 v2, 0x0

    .local v2, "dist":I
    :goto_3
    if-ge v2, v1, :cond_2

    .line 482
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v4, v4, v0

    aget v4, v4, v2

    aput v4, v3, v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    nop

    .line 468
    .end local v2    # "dist":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 486
    .end local v0    # "distState":I
    const/4 v0, 0x4

    .line 487
    .local v0, "dist":I
    const/4 v2, 0x4

    .local v2, "distSlot":I
    :goto_4
    const/16 v3, 0xe

    if-ge v2, v3, :cond_6

    .line 489
    ushr-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    .line 490
    .local v3, "footerBits":I
    and-int/lit8 v4, v2, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int/2addr v4, v3

    .line 492
    .local v4, "base":I
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    add-int/lit8 v6, v2, -0x4

    aget-object v5, v5, v6

    array-length v5, v5

    .line 493
    .local v5, "limit":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v5, :cond_5

    .line 494
    sub-int v7, v0, v4

    .line 495
    .local v7, "distReduced":I
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    add-int/lit8 v9, v2, -0x4

    aget-object v8, v8, v9

    invoke-static {v8, v7}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v8

    .line 499
    .local v8, "price":I
    const/4 v9, 0x0

    .local v9, "distState":I
    :goto_6
    if-ge v9, v1, :cond_4

    .line 500
    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v10, v10, v9

    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v11, v11, v9

    aget v11, v11, v2

    add-int/2addr v11, v8

    aput v11, v10, v0

    .line 499
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    nop

    .line 503
    .end local v9    # "distState":I
    nop

    .end local v7    # "distReduced":I
    .end local v8    # "price":I
    add-int/lit8 v0, v0, 0x1

    .line 493
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    nop

    .line 488
    .end local v3    # "footerBits":I
    .end local v4    # "base":I
    .end local v5    # "limit":I
    .end local v6    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 487
    :cond_6
    nop

    .line 507
    .end local v2    # "distSlot":I
    nop

    .line 508
    return-void
.end method


# virtual methods
.method public encodeForLZMA1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    return-void

    .line 223
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method public encodeForLZMA2()Z
    .locals 3

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    return v1

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0

    .line 250
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    const v2, 0x1ffeef

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    .line 251
    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getPendingSize()I

    move-result v0

    const v2, 0xffe6

    if-gt v0, v2, :cond_1

    .line 252
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 253
    return v1

    .line 256
    :cond_1
    nop

    .line 258
    const/4 v0, 0x1

    return v0

    .line 254
    :goto_0
    nop

    .line 255
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public encodeLZMA1EndMarker()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v0, v1

    .line 234
    .local v0, "posState":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 235
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 236
    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    .line 237
    return-void
.end method

.method getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I
    .locals 2
    .param p1, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p2, "posState"    # I

    .line 398
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    invoke-virtual {p1}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    return v0
.end method

.method getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I
    .locals 2
    .param p1, "anyMatchPrice"    # I
    .param p2, "state"    # Lorg/tukaani/xz/lzma/State;

    .line 407
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    .line 408
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 407
    return v0
.end method

.method public getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    return-object v0
.end method

.method getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I
    .locals 4
    .param p1, "rep"    # I
    .param p2, "len"    # I
    .param p3, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p4, "posState"    # I

    .line 440
    invoke-virtual {p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v0

    .line 441
    .local v0, "anyMatchPrice":I
    invoke-virtual {p0, v0, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v1

    .line 442
    .local v1, "anyRepPrice":I
    invoke-virtual {p0, v1, p1, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v2

    .line 443
    .local v2, "longRepPrice":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v3, p2, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v3

    add-int/2addr v3, v2

    return v3
.end method

.method getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I
    .locals 5
    .param p1, "anyRepPrice"    # I
    .param p2, "rep"    # I
    .param p3, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p4, "posState"    # I

    .line 419
    move v0, p1

    .line 421
    .local v0, "price":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 422
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-short v3, v3, v4

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    .line 424
    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    aget-short v3, v3, p4

    .line 423
    invoke-static {v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 426
    :cond_0
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-short v3, v3, v4

    invoke-static {v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 428
    if-ne p2, v2, :cond_1

    .line 429
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v2, v2, v3

    invoke-static {v2, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v1, v1, v3

    invoke-static {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    .line 432
    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v2, v2, v3

    add-int/lit8 v3, p2, -0x2

    invoke-static {v2, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 436
    :goto_0
    return v0
.end method

.method getMatchAndLenPrice(IIII)I
    .locals 6
    .param p1, "normalMatchPrice"    # I
    .param p2, "dist"    # I
    .param p3, "len"    # I
    .param p4, "posState"    # I

    .line 448
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 449
    invoke-virtual {v0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 450
    .local v0, "price":I
    invoke-static {p3}, Lorg/tukaani/xz/lzma/LZMACoder;->getDistState(I)I

    move-result v1

    .line 452
    .local v1, "distState":I
    const/16 v2, 0x80

    if-ge p2, v2, :cond_0

    .line 453
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v2, v2, v1

    aget v2, v2, p2

    add-int/2addr v0, v2

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v2

    .line 458
    .local v2, "distSlot":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    and-int/lit8 v5, p2, 0xf

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 462
    .end local v2    # "distSlot":I
    :goto_0
    return v0
.end method

.method getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 1

    .line 386
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 387
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    .line 388
    .local v0, "matches":Lorg/tukaani/xz/lz/Matches;
    nop

    .line 389
    return-object v0
.end method

.method abstract getNextSymbol()I
.end method

.method getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I
    .locals 2
    .param p1, "anyMatchPrice"    # I
    .param p2, "state"    # Lorg/tukaani/xz/lzma/State;

    .line 402
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    .line 403
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 402
    return v0
.end method

.method getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I
    .locals 4
    .param p1, "anyRepPrice"    # I
    .param p2, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p3, "posState"    # I

    .line 412
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    .line 413
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    .line 414
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    aget-short v2, v2, p3

    invoke-static {v2, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 412
    return v0
.end method

.method public getUncompressedSize()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 115
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 116
    return-void
.end method

.method public reset()V
    .locals 2

    .line 197
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->reset()V

    .line 198
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->reset()V

    .line 199
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    .line 200
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 202
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 204
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 206
    return-void
.end method

.method public resetUncompressedSize()V
    .locals 1

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 214
    return-void
.end method

.method skip(I)V
    .locals 1
    .param p1, "len"    # I

    .line 393
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 394
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    .line 395
    return-void
.end method

.method updatePrices()V
    .locals 1

    .line 524
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    if-gtz v0, :cond_0

    .line 525
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateDistPrices()V

    .line 527
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    if-gtz v0, :cond_1

    .line 528
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateAlignPrices()V

    .line 530
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    .line 531
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    .line 532
    return-void
.end method
