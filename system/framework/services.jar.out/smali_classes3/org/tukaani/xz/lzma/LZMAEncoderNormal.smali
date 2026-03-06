.class final Lorg/tukaani/xz/lzma/LZMAEncoderNormal;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;
.source "LZMAEncoderNormal.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRA_SIZE_AFTER:I = 0x1000

.field private static final EXTRA_SIZE_BEFORE:I = 0x1000

.field private static final OPTS:I = 0x1000


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;

.field private final nextState:Lorg/tukaani/xz/lzma/State;

.field private optCur:I

.field private optEnd:I

.field private final opts:[Lorg/tukaani/xz/lzma/Optimum;

.field private final repLens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 10
    .param p1, "rc"    # Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .param p2, "lc"    # I
    .param p3, "lp"    # I
    .param p4, "pb"    # I
    .param p5, "dictSize"    # I
    .param p6, "extraSizeBefore"    # I
    .param p7, "niceLen"    # I
    .param p8, "mf"    # I
    .param p9, "depthLimit"    # I
    .param p10, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 46
    nop

    .line 47
    const/16 v8, 0x1000

    move/from16 v9, p6

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 46
    const/16 v2, 0x1000

    const/16 v4, 0x111

    move v0, p5

    move/from16 v3, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, v0

    move v7, v3

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    .line 24
    new-array v1, v8, [Lorg/tukaani/xz/lzma/Optimum;

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    .line 25
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 26
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 32
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    .line 33
    new-instance v1, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v1}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 55
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    new-instance v3, Lorg/tukaani/xz/lzma/Optimum;

    invoke-direct {v3}, Lorg/tukaani/xz/lzma/Optimum;-><init>()V

    aput-object v3, v2, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 56
    .end local v1    # "i":I
    return-void
.end method

.method private calc1BytePrices(IIII)V
    .locals 17
    .param p1, "pos"    # I
    .param p2, "posState"    # I
    .param p3, "avail"    # I
    .param p4, "anyRepPrice"    # I

    .line 376
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 378
    .local v2, "nextIsByte":Z
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v6

    .line 379
    .local v6, "curByte":I
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v7

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v5, v5, v4

    const/4 v11, 0x1

    add-int/2addr v5, v11

    invoke-virtual {v3, v5}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v7

    .line 382
    .local v7, "matchByte":I
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v5

    iget v3, v3, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 383
    invoke-virtual {v8, v11}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v8

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v9, v9, v10

    iget-object v10, v9, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v5

    add-int/2addr v3, v5

    .line 385
    .local v3, "literalPrice":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v11

    aget-object v5, v5, v8

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v3, v5, :cond_0

    .line 386
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v11

    aget-object v5, v5, v8

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v9, -0x1

    invoke-virtual {v5, v3, v8, v9}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 387
    const/4 v2, 0x1

    .line 391
    :cond_0
    if-ne v7, v6, :cond_3

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v11

    aget-object v5, v5, v8

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-eq v5, v8, :cond_1

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v11

    aget-object v5, v5, v8

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-eqz v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move/from16 v8, p2

    move/from16 v9, p4

    goto :goto_1

    .line 393
    :goto_0
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v8

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-virtual {v0, v9, v5, v8}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result v5

    .line 396
    .local v5, "shortRepPrice":I
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v12, v11

    aget-object v10, v10, v12

    iget v10, v10, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-gt v5, v10, :cond_4

    .line 397
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v12, v11

    aget-object v10, v10, v12

    iget v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {v10, v5, v12, v4}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 398
    const/4 v2, 0x1

    goto :goto_1

    .line 391
    .end local v5    # "shortRepPrice":I
    :cond_3
    move/from16 v8, p2

    move/from16 v9, p4

    .line 404
    :cond_4
    :goto_1
    if-nez v2, :cond_6

    if-eq v7, v6, :cond_6

    const/4 v5, 0x2

    if-le v1, v5, :cond_6

    .line 405
    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    add-int/lit8 v12, v1, -0x1

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 406
    .local v10, "lenLimit":I
    iget-object v12, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v13, v13, v14

    iget-object v13, v13, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v13, v13, v4

    invoke-virtual {v12, v11, v13, v10}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v12

    .line 408
    .local v12, "len":I
    if-lt v12, v5, :cond_6

    .line 409
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v13, v13, v14

    iget-object v13, v13, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5, v13}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 410
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 411
    add-int/lit8 v5, p1, 0x1

    iget v13, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v5, v13

    .line 412
    .local v5, "nextPosState":I
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 413
    invoke-virtual {v0, v4, v12, v13, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v13

    add-int/2addr v13, v3

    .line 416
    .local v13, "price":I
    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v14, v11

    add-int/2addr v14, v12

    .line 417
    .local v14, "i":I
    :goto_2
    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v15, v14, :cond_5

    .line 418
    iget-object v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    move/from16 v16, v11

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v11, v15, v11

    invoke-virtual {v11}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    move/from16 v11, v16

    goto :goto_2

    .line 420
    :cond_5
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v14

    iget v11, v11, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v13, v11, :cond_6

    .line 421
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v14

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {v11, v13, v15, v4}, Lorg/tukaani/xz/lzma/Optimum;->set2(III)V

    .line 424
    .end local v5    # "nextPosState":I
    .end local v10    # "lenLimit":I
    .end local v12    # "len":I
    .end local v13    # "price":I
    .end local v14    # "i":I
    :cond_6
    return-void
.end method

.method private calcLongRepPrices(IIII)I
    .locals 21
    .param p1, "pos"    # I
    .param p2, "posState"    # I
    .param p3, "avail"    # I
    .param p4, "anyRepPrice"    # I

    .line 431
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x2

    .line 432
    .local v3, "startLen":I
    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 434
    .local v4, "lenLimit":I
    const/4 v5, 0x0

    move v8, v5

    .local v8, "rep":I
    :goto_0
    const/4 v5, 0x4

    if-ge v8, v5, :cond_8

    .line 435
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v9

    .line 436
    .local v9, "len":I
    const/4 v5, 0x2

    if-ge v9, v5, :cond_0

    .line 437
    move/from16 v11, p4

    goto/16 :goto_4

    .line 439
    :cond_0
    :goto_1
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v7, v9

    const/4 v10, 0x1

    if-ge v6, v7, :cond_1

    .line 440
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v7, v10

    iput v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 442
    :cond_1
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v11, p4

    invoke-virtual {v0, v11, v8, v6, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v12

    .line 445
    .local v12, "longRepPrice":I
    move v6, v9

    .local v6, "i":I
    :goto_2
    if-lt v6, v5, :cond_3

    .line 446
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 447
    invoke-virtual {v7, v6, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v7

    add-int/2addr v7, v12

    .line 448
    .local v7, "price":I
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v14, v6

    aget-object v13, v13, v14

    iget v13, v13, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v13, :cond_2

    .line 449
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v14, v6

    aget-object v13, v13, v14

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {v13, v7, v14, v8}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 445
    .end local v7    # "price":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    nop

    .line 452
    .end local v6    # "i":I
    if-nez v8, :cond_4

    .line 453
    add-int/lit8 v3, v9, 0x1

    .line 455
    :cond_4
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    sub-int v7, v2, v9

    sub-int/2addr v7, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 456
    .local v13, "len2Limit":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v7, v9, 0x1

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v14, v14, v15

    iget-object v14, v14, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v14, v14, v8

    invoke-virtual {v6, v7, v14, v13}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v14

    .line 459
    .local v14, "len2":I
    if-lt v14, v5, :cond_7

    .line 461
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 462
    invoke-virtual {v5, v9, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v5

    add-int/2addr v5, v12

    .line 463
    .local v5, "price":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v7, v7, v15

    iget-object v7, v7, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v7}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 464
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    .line 467
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v16

    .line 468
    .local v16, "curByte":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v6, v7}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v17

    .line 469
    .local v17, "matchByte":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v6, v9, v10}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v18

    .line 470
    .local v18, "prevByte":I
    iget-object v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v19, p1, v9

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    move-object/from16 v20, v6

    invoke-virtual/range {v15 .. v20}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v6

    add-int/2addr v5, v6

    .line 472
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 475
    add-int v6, p1, v9

    add-int/2addr v6, v10

    iget v15, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v15, v6

    .line 476
    .local v15, "nextPosState":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v7, v14, v6, v15}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v6

    add-int/2addr v6, v5

    .line 479
    .end local v5    # "price":I
    .local v6, "price":I
    iget v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v5, v9

    add-int/2addr v5, v10

    add-int/2addr v5, v14

    .line 480
    .local v5, "i":I
    :goto_3
    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v7, v5, :cond_5

    .line 481
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    move/from16 v19, v10

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    move/from16 v10, v19

    goto :goto_3

    .line 483
    :cond_5
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v7, v7, v5

    iget v7, v7, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v6, v7, :cond_6

    .line 484
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v7, v7, v5

    move v10, v5

    move-object v5, v7

    .end local v5    # "i":I
    .local v10, "i":I
    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    move/from16 v19, v10

    .end local v10    # "i":I
    .local v19, "i":I
    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    goto :goto_4

    .line 483
    .end local v19    # "i":I
    .restart local v5    # "i":I
    :cond_6
    move/from16 v19, v5

    .line 434
    .end local v5    # "i":I
    .end local v6    # "price":I
    .end local v9    # "len":I
    .end local v12    # "longRepPrice":I
    .end local v13    # "len2Limit":I
    .end local v14    # "len2":I
    .end local v15    # "nextPosState":I
    .end local v16    # "curByte":I
    .end local v17    # "matchByte":I
    .end local v18    # "prevByte":I
    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_8
    move/from16 v11, p4

    .line 488
    .end local v8    # "rep":I
    return v3
.end method

.method private calcNormalMatchPrices(IIIII)V
    .locals 24
    .param p1, "pos"    # I
    .param p2, "posState"    # I
    .param p3, "avail"    # I
    .param p4, "anyMatchPrice"    # I
    .param p5, "startLen"    # I

    .line 498
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    .line 499
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v4, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 500
    :goto_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aget v3, v3, v6

    if-ge v3, v1, :cond_0

    .line 501
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/2addr v6, v5

    iput v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_0

    .line 503
    :cond_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v1, v3, v7

    .line 506
    :cond_1
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v6, v5

    aget v3, v3, v6

    if-ge v3, v2, :cond_2

    .line 507
    return-void

    .line 509
    :cond_2
    :goto_1
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v8, v5

    aget v7, v7, v8

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    .line 510
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 512
    :cond_3
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v6

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v6, p4

    invoke-virtual {v0, v6, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v3

    .line 515
    .local v3, "normalMatchPrice":I
    const/4 v7, 0x0

    .line 516
    .local v7, "match":I
    :goto_2
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v8, v8, v7

    if-le v2, v8, :cond_4

    .line 517
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 519
    :cond_4
    move/from16 v8, p5

    move v12, v8

    .line 520
    .local v12, "len":I
    :goto_3
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v14, v8, v7

    .line 524
    .local v14, "dist":I
    move/from16 v15, p2

    invoke-virtual {v0, v3, v14, v12, v15}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMatchAndLenPrice(IIII)I

    move-result v8

    .line 526
    .local v8, "matchAndLenPrice":I
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v12

    aget-object v9, v9, v10

    iget v9, v9, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v8, v9, :cond_5

    .line 527
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v12

    aget-object v9, v9, v10

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v11, v14, 0x4

    invoke-virtual {v9, v8, v10, v11}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 530
    :cond_5
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v9, v9, v7

    if-eq v12, v9, :cond_6

    .line 531
    move/from16 v16, v5

    goto/16 :goto_6

    .line 534
    :cond_6
    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    sub-int v10, v1, v12

    sub-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 535
    .local v9, "len2Limit":I
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {v10, v11, v14, v9}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v10

    .line 537
    .local v10, "len2":I
    const/4 v11, 0x2

    if-lt v10, v11, :cond_9

    .line 538
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v13, v5

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v11, v5}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 539
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 542
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5, v12, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v18

    .line 543
    .local v18, "curByte":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v19

    .line 544
    .local v19, "matchByte":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v11, 0x1

    invoke-virtual {v5, v12, v11}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v20

    .line 545
    .local v20, "prevByte":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v21, p1, v12

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 546
    move-object/from16 v17, v5

    move-object/from16 v22, v11

    invoke-virtual/range {v17 .. v22}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v5

    add-int/2addr v5, v8

    .line 549
    .local v5, "price":I
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v11}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 552
    add-int v11, p1, v12

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    iget v13, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v11, v13

    .line 553
    .local v11, "nextPosState":I
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v4, v10, v13, v11}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v13

    add-int/2addr v5, v13

    .line 556
    iget v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v10

    .line 557
    .local v13, "i":I
    :goto_4
    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v4, v13, :cond_7

    .line 558
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v1, v4, v1

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    move/from16 v1, p3

    const/4 v4, 0x0

    goto :goto_4

    .line 560
    :cond_7
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v13

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v5, v1, :cond_8

    .line 561
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v13

    move v4, v10

    .end local v10    # "len2":I
    .local v4, "len2":I
    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    move/from16 v21, v11

    .end local v11    # "nextPosState":I
    .local v21, "nextPosState":I
    add-int/lit8 v11, v14, 0x4

    move/from16 v22, v13

    .end local v13    # "i":I
    .local v22, "i":I
    const/4 v13, 0x0

    move/from16 v23, v8

    move-object v8, v1

    move/from16 v1, v23

    move/from16 v23, v5

    move v5, v4

    move v4, v9

    move/from16 v9, v23

    .end local v8    # "matchAndLenPrice":I
    .local v1, "matchAndLenPrice":I
    .local v4, "len2Limit":I
    .local v5, "len2":I
    .local v9, "price":I
    invoke-virtual/range {v8 .. v13}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    goto :goto_5

    .line 560
    .end local v1    # "matchAndLenPrice":I
    .end local v4    # "len2Limit":I
    .end local v21    # "nextPosState":I
    .end local v22    # "i":I
    .local v5, "price":I
    .restart local v8    # "matchAndLenPrice":I
    .local v9, "len2Limit":I
    .restart local v10    # "len2":I
    .restart local v11    # "nextPosState":I
    .restart local v13    # "i":I
    :cond_8
    move v1, v8

    move v4, v9

    move/from16 v21, v11

    move/from16 v22, v13

    move v9, v5

    move v5, v10

    .end local v8    # "matchAndLenPrice":I
    .end local v10    # "len2":I
    .end local v11    # "nextPosState":I
    .end local v13    # "i":I
    .restart local v1    # "matchAndLenPrice":I
    .restart local v4    # "len2Limit":I
    .local v5, "len2":I
    .local v9, "price":I
    .restart local v21    # "nextPosState":I
    .restart local v22    # "i":I
    goto :goto_5

    .line 537
    .end local v1    # "matchAndLenPrice":I
    .end local v4    # "len2Limit":I
    .end local v5    # "len2":I
    .end local v18    # "curByte":I
    .end local v19    # "matchByte":I
    .end local v20    # "prevByte":I
    .end local v21    # "nextPosState":I
    .end local v22    # "i":I
    .restart local v8    # "matchAndLenPrice":I
    .local v9, "len2Limit":I
    .restart local v10    # "len2":I
    :cond_9
    move/from16 v16, v5

    move v1, v8

    move v4, v9

    move v5, v10

    .line 564
    .end local v8    # "matchAndLenPrice":I
    .end local v9    # "len2Limit":I
    .end local v10    # "len2":I
    .restart local v1    # "matchAndLenPrice":I
    .restart local v4    # "len2Limit":I
    .restart local v5    # "len2":I
    :goto_5
    add-int/lit8 v7, v7, 0x1

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v7, v8, :cond_a

    .line 565
    nop

    .line 567
    .end local v1    # "matchAndLenPrice":I
    .end local v4    # "len2Limit":I
    .end local v5    # "len2":I
    .end local v12    # "len":I
    .end local v14    # "dist":I
    return-void

    .line 519
    .restart local v12    # "len":I
    :cond_a
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p3

    move/from16 v5, v16

    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private convertOpts()I
    .locals 5

    .line 70
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 72
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 75
    .local v0, "optPrev":I
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    .line 77
    .local v1, "opt":Lorg/tukaani/xz/lzma/Optimum;
    iget-boolean v2, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 79
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 80
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "optPrev":I
    .local v2, "optPrev":I
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 82
    iget-boolean v0, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 84
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    iget v3, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 85
    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 86
    iget v0, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    .end local v2    # "optPrev":I
    .restart local v0    # "optPrev":I
    goto :goto_0

    .line 82
    .end local v0    # "optPrev":I
    .restart local v2    # "optPrev":I
    :cond_1
    move v0, v2

    .line 90
    .end local v2    # "optPrev":I
    .restart local v0    # "optPrev":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 91
    .local v2, "temp":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v4, v3, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 92
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 93
    move v0, v2

    .line 94
    .end local v1    # "opt":Lorg/tukaani/xz/lzma/Optimum;
    .end local v2    # "temp":I
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-gtz v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 97
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 98
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    return v1
.end method

.method static getMemoryUsage(III)I
    .locals 3
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "mf"    # I

    .line 36
    nop

    .line 37
    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 36
    const/16 v2, 0x111

    invoke-static {p0, v1, v0, v2, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result v0

    add-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private updateOptStateAndReps()V
    .locals 7

    .line 307
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 308
    .local v0, "optPrev":I
    nop

    .line 310
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 311
    add-int/lit8 v0, v0, -0x1

    .line 313
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget v4, v4, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 315
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    if-ge v1, v2, :cond_0

    .line 316
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 323
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    goto :goto_1

    .line 325
    :cond_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 328
    :goto_1
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    .line 330
    nop

    .line 332
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-nez v1, :cond_3

    .line 333
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_2

    .line 335
    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 337
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v5

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    .line 341
    :cond_4
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_5

    .line 342
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v0, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    .line 343
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    .line 344
    .local v1, "back":I
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_3

    .line 346
    .end local v1    # "back":I
    :cond_5
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 347
    .restart local v1    # "back":I
    if-ge v1, v2, :cond_6

    .line 348
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_3

    .line 350
    :cond_6
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 353
    :goto_3
    if-ge v1, v2, :cond_9

    .line 354
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v5

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v5, v5, v1

    aput v5, v3, v4

    .line 357
    const/4 v3, 0x1

    .local v3, "rep":I
    :goto_4
    if-gt v3, v1, :cond_7

    .line 358
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 360
    :cond_7
    :goto_5
    if-ge v3, v2, :cond_8

    .line 361
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    nop

    .line 362
    .end local v3    # "rep":I
    goto :goto_6

    .line 363
    :cond_9
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    add-int/lit8 v5, v1, -0x4

    aput v5, v2, v4

    .line 364
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    const/4 v6, 0x3

    invoke-static {v2, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    .end local v1    # "back":I
    :goto_6
    return-void
.end method


# virtual methods
.method getNextSymbol()I
    .locals 22

    .line 104
    move-object/from16 v0, p0

    iget v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v1, v2, :cond_0

    .line 105
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    sub-int/2addr v1, v2

    .line 106
    .local v1, "len":I
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 107
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v3

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 108
    return v1

    .line 111
    .end local v1    # "len":I
    :cond_0
    nop

    .line 112
    const/4 v1, 0x0

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 113
    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 114
    const/4 v2, -0x1

    iput v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 116
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    if-ne v3, v2, :cond_1

    .line 117
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v3

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 123
    :cond_1
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v3

    const/16 v4, 0x111

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 124
    .local v3, "avail":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v6, :cond_2

    .line 125
    return v7

    .line 128
    :cond_2
    const/4 v4, 0x0

    .line 129
    .local v4, "repBest":I
    const/4 v5, 0x0

    move v8, v4

    .end local v4    # "repBest":I
    .local v5, "rep":I
    .local v8, "repBest":I
    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_5

    .line 130
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v10, v10, v5

    invoke-virtual {v9, v10, v3}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v9

    aput v9, v4, v5

    .line 132
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v4, v4, v5

    if-ge v4, v6, :cond_3

    .line 133
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aput v1, v4, v5

    .line 134
    goto :goto_1

    .line 137
    :cond_3
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v4, v4, v5

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v9, v9, v8

    if-le v4, v9, :cond_4

    .line 138
    move v4, v5

    move v8, v4

    .line 129
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 142
    .end local v5    # "rep":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v5, v5, v8

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    if-lt v5, v9, :cond_6

    .line 143
    iput v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 144
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v1, v1, v8

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    .line 145
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v1, v1, v8

    return v1

    .line 150
    :cond_6
    const/4 v5, 0x0

    .line 151
    .local v5, "mainLen":I
    const/4 v9, 0x0

    .line 152
    .local v9, "mainDist":I
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v10, :cond_8

    .line 153
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v10, v10, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v11, v7

    aget v5, v10, v11

    .line 154
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v10, v10, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v11, v7

    aget v9, v10, v11

    .line 157
    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    if-lt v5, v10, :cond_7

    .line 158
    add-int/lit8 v1, v9, 0x4

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 159
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    .line 160
    return v5

    .line 157
    :cond_7
    move v10, v9

    move v9, v5

    goto :goto_2

    .line 152
    :cond_8
    move v10, v9

    move v9, v5

    .line 164
    .end local v5    # "mainLen":I
    .local v9, "mainLen":I
    .local v10, "mainDist":I
    :goto_2
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5, v1}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v12

    .line 165
    .local v12, "curByte":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aget v11, v11, v1

    add-int/2addr v11, v7

    invoke-virtual {v5, v11}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v13

    .line 170
    .local v13, "matchByte":I
    if-ge v9, v6, :cond_9

    if-eq v12, v13, :cond_9

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v5, v5, v8

    if-ge v5, v6, :cond_9

    .line 172
    return v7

    .line 175
    :cond_9
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v15

    .line 176
    .local v15, "pos":I
    iget v5, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v5, v15

    .line 180
    .local v5, "posState":I
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v11, v7}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v14

    .line 181
    .local v14, "prevByte":I
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    move/from16 v17, v7

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    move-object/from16 v16, v7

    invoke-virtual/range {v11 .. v16}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v7

    .line 183
    .local v7, "literalPrice":I
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v17

    invoke-virtual {v11, v7, v1, v2}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 186
    .end local v7    # "literalPrice":I
    .end local v14    # "prevByte":I
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v2, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v2

    .line 187
    .local v2, "anyMatchPrice":I
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v2, v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v7

    .line 191
    .local v7, "anyRepPrice":I
    if-ne v13, v12, :cond_a

    .line 192
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v7, v11, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result v11

    .line 194
    .local v11, "shortRepPrice":I
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v17

    iget v14, v14, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v11, v14, :cond_a

    .line 195
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v17

    invoke-virtual {v14, v11, v1, v1}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 200
    .end local v11    # "shortRepPrice":I
    :cond_a
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v11, v11, v8

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 201
    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v11, v6, :cond_b

    .line 202
    nop

    .line 203
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v17

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 204
    return v17

    .line 211
    :cond_b
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updatePrices()V

    .line 216
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v11, v11, v1

    iget-object v11, v11, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v11, v14}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 217
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v1

    iget-object v14, v14, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    invoke-static {v11, v1, v14, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .local v11, "i":I
    :goto_3
    if-lt v11, v6, :cond_c

    .line 221
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    .line 220
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_c
    nop

    .line 224
    .end local v11    # "i":I
    const/4 v11, 0x0

    .local v11, "rep":I
    :goto_4
    if-ge v11, v4, :cond_10

    .line 225
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v14, v14, v11

    .line 226
    .local v14, "repLen":I
    if-ge v14, v6, :cond_d

    .line 227
    move/from16 v19, v3

    goto :goto_7

    .line 229
    :cond_d
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v7, v11, v4, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v4

    .line 232
    .local v4, "longRepPrice":I
    :goto_5
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v6, v14, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v6

    add-int/2addr v6, v4

    .line 234
    .local v6, "price":I
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v14

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v6, v1, :cond_e

    .line 235
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v14

    move/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "avail":I
    .local v19, "avail":I
    invoke-virtual {v1, v6, v3, v11}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    goto :goto_6

    .line 234
    .end local v19    # "avail":I
    .restart local v3    # "avail":I
    :cond_e
    move/from16 v19, v3

    .line 236
    .end local v3    # "avail":I
    .end local v6    # "price":I
    .restart local v19    # "avail":I
    :goto_6
    add-int/lit8 v14, v14, -0x1

    const/4 v1, 0x2

    nop

    if-ge v14, v1, :cond_f

    .line 224
    .end local v4    # "longRepPrice":I
    .end local v14    # "repLen":I
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v19

    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x2

    goto :goto_4

    .line 236
    .restart local v4    # "longRepPrice":I
    .restart local v14    # "repLen":I
    :cond_f
    move/from16 v3, v19

    const/4 v1, 0x0

    const/4 v6, 0x2

    goto :goto_5

    .line 224
    .end local v4    # "longRepPrice":I
    .end local v14    # "repLen":I
    .end local v19    # "avail":I
    .restart local v3    # "avail":I
    :cond_10
    move/from16 v19, v3

    .line 241
    .end local v3    # "avail":I
    .end local v11    # "rep":I
    .restart local v19    # "avail":I
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    const/16 v18, 0x0

    aget v1, v1, v18

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 242
    .restart local v1    # "len":I
    if-gt v1, v9, :cond_14

    .line 243
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v2, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v3

    .line 248
    .local v3, "normalMatchPrice":I
    const/4 v4, 0x0

    .line 249
    .local v4, "i":I
    :goto_8
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v6, v6, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v6, v6, v4

    if-le v1, v6, :cond_11

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 253
    :cond_11
    :goto_9
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v6, v6, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v6, v6, v4

    .line 254
    .local v6, "dist":I
    invoke-virtual {v0, v3, v6, v1, v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMatchAndLenPrice(IIII)I

    move-result v11

    .line 256
    .local v11, "price":I
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v1

    iget v14, v14, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v11, v14, :cond_12

    .line 257
    iget-object v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v1

    move/from16 v16, v2

    .end local v2    # "anyMatchPrice":I
    .local v16, "anyMatchPrice":I
    add-int/lit8 v2, v6, 0x4

    move/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "normalMatchPrice":I
    .local v20, "normalMatchPrice":I
    invoke-virtual {v14, v11, v3, v2}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    goto :goto_a

    .line 256
    .end local v16    # "anyMatchPrice":I
    .end local v20    # "normalMatchPrice":I
    .restart local v2    # "anyMatchPrice":I
    .restart local v3    # "normalMatchPrice":I
    :cond_12
    move/from16 v16, v2

    move/from16 v20, v3

    const/4 v3, 0x0

    .line 259
    .end local v2    # "anyMatchPrice":I
    .end local v3    # "normalMatchPrice":I
    .restart local v16    # "anyMatchPrice":I
    .restart local v20    # "normalMatchPrice":I
    :goto_a
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_13

    .line 260
    add-int/lit8 v4, v4, 0x1

    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v4, v2, :cond_13

    .line 261
    goto :goto_b

    .line 263
    :cond_13
    nop

    .end local v6    # "dist":I
    .end local v11    # "price":I
    add-int/lit8 v1, v1, 0x1

    .line 264
    move/from16 v2, v16

    move/from16 v3, v20

    goto :goto_9

    .line 242
    .end local v4    # "i":I
    .end local v16    # "anyMatchPrice":I
    .end local v20    # "normalMatchPrice":I
    .restart local v2    # "anyMatchPrice":I
    :cond_14
    move/from16 v16, v2

    .line 269
    .end local v1    # "len":I
    .end local v2    # "anyMatchPrice":I
    .restart local v16    # "anyMatchPrice":I
    :goto_b
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v1

    const/16 v2, 0xfff

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v2, v16

    .line 274
    .end local v16    # "anyMatchPrice":I
    .end local v19    # "avail":I
    .local v1, "avail":I
    .restart local v2    # "anyMatchPrice":I
    :goto_c
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v3, v4, :cond_18

    .line 275
    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v3

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 276
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v3, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v3, :cond_15

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    if-lt v3, v4, :cond_15

    .line 278
    goto :goto_f

    .line 280
    :cond_15
    add-int/lit8 v3, v1, -0x1

    .line 281
    .end local v1    # "avail":I
    .local v3, "avail":I
    add-int/lit8 v1, v15, 0x1

    .line 282
    .end local v15    # "pos":I
    .local v1, "pos":I
    iget v4, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    and-int/2addr v4, v1

    .line 284
    .end local v5    # "posState":I
    .local v4, "posState":I
    invoke-direct {v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updateOptStateAndReps()V

    .line 285
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v11

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    .line 286
    invoke-virtual {v0, v6, v4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v6

    add-int/2addr v5, v6

    .line 287
    .end local v2    # "anyMatchPrice":I
    .local v5, "anyMatchPrice":I
    iget-object v2, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v6

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v5, v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v7

    .line 289
    invoke-direct {v0, v1, v4, v3, v7}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calc1BytePrices(IIII)V

    .line 291
    const/4 v6, 0x2

    if-lt v3, v6, :cond_17

    .line 292
    move v2, v5

    .end local v5    # "anyMatchPrice":I
    .restart local v2    # "anyMatchPrice":I
    invoke-direct {v0, v1, v4, v3, v7}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcLongRepPrices(IIII)I

    move-result v5

    .line 294
    .local v5, "startLen":I
    iget-object v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v11, :cond_16

    .line 295
    move/from16 v21, v4

    move v4, v2

    move/from16 v2, v21

    .local v2, "posState":I
    .local v4, "anyMatchPrice":I
    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcNormalMatchPrices(IIIII)V

    move v0, v5

    move v5, v2

    move v2, v4

    .end local v4    # "anyMatchPrice":I
    .local v0, "startLen":I
    .local v2, "anyMatchPrice":I
    .local v5, "posState":I
    goto :goto_d

    .line 294
    .end local v0    # "startLen":I
    .local v4, "posState":I
    .local v5, "startLen":I
    :cond_16
    move v0, v5

    move v5, v4

    .line 297
    .end local v4    # "posState":I
    .local v5, "posState":I
    :goto_d
    goto :goto_e

    .line 291
    .end local v2    # "anyMatchPrice":I
    .restart local v4    # "posState":I
    .local v5, "anyMatchPrice":I
    :cond_17
    move v2, v5

    move v5, v4

    .line 274
    .end local v4    # "posState":I
    .restart local v2    # "anyMatchPrice":I
    .local v5, "posState":I
    :goto_e
    move-object/from16 v0, p0

    move v15, v1

    move v1, v3

    goto :goto_c

    .line 300
    .end local v3    # "avail":I
    .local v1, "avail":I
    .restart local v15    # "pos":I
    :cond_18
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->convertOpts()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 60
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 61
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    .line 62
    return-void
.end method
