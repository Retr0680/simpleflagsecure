.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;
.source "IA64.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final BRANCH_TABLE:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    .line 25
    iput p2, p0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 26
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 24
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 29
    move-object/from16 v0, p0

    add-int v1, p2, p3

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    .line 32
    .local v1, "end":I
    move/from16 v3, p2

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_7

    .line 33
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x1f

    .line 34
    .local v4, "instrTemplate":I
    sget-object v5, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    aget v5, v5, v4

    .line 36
    .local v5, "mask":I
    const/4 v6, 0x0

    .local v6, "slot":I
    const/4 v7, 0x5

    .local v7, "bitPos":I
    :goto_1
    const/4 v8, 0x3

    if-ge v6, v8, :cond_6

    .line 37
    ushr-int v8, v5, v6

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 38
    move/from16 v21, v2

    move/from16 v22, v3

    goto/16 :goto_5

    .line 40
    :cond_0
    ushr-int/lit8 v8, v7, 0x3

    .line 41
    .local v8, "bytePos":I
    and-int/lit8 v10, v7, 0x7

    .line 43
    .local v10, "bitRes":I
    const-wide/16 v11, 0x0

    .line 44
    .local v11, "instr":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    const/4 v14, 0x6

    if-ge v13, v14, :cond_1

    .line 45
    add-int v14, v3, v8

    add-int/2addr v14, v13

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    mul-int/lit8 v16, v13, 0x8

    shl-long v14, v14, v16

    or-long/2addr v11, v14

    .line 44
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_1
    nop

    .line 47
    .end local v13    # "j":I
    ushr-long v15, v11, v10

    .line 49
    .local v15, "instrNorm":J
    const/16 v13, 0x25

    ushr-long v17, v15, v13

    const-wide/16 v19, 0xf

    and-long v17, v17, v19

    const-wide/16 v19, 0x5

    cmp-long v13, v17, v19

    if-nez v13, :cond_4

    const/16 v13, 0x9

    ushr-long v17, v15, v13

    const-wide/16 v19, 0x7

    and-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v13, v17, v19

    if-eqz v13, :cond_2

    .line 51
    move/from16 v21, v2

    move/from16 v22, v3

    goto :goto_5

    .line 53
    :cond_2
    const/16 v13, 0xd

    ushr-long v17, v15, v13

    const-wide/32 v19, 0xfffff

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v3    # "i":I
    .local v22, "i":I
    and-long v2, v17, v19

    long-to-int v2, v2

    .line 54
    .local v2, "src":I
    const/16 v3, 0x24

    move/from16 v17, v9

    move/from16 v18, v10

    .end local v10    # "bitRes":I
    .local v18, "bitRes":I
    ushr-long v9, v15, v3

    long-to-int v3, v9

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v2, v3

    .line 55
    shl-int/lit8 v2, v2, 0x4

    .line 58
    iget-boolean v3, v0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    if-eqz v3, :cond_3

    .line 59
    iget v3, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int v3, v3, v22

    sub-int v3, v3, p2

    add-int/2addr v3, v2

    .local v3, "dest":I
    goto :goto_3

    .line 61
    .end local v3    # "dest":I
    :cond_3
    iget v3, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int v3, v3, v22

    sub-int v3, v3, p2

    sub-int v3, v2, v3

    .line 63
    .restart local v3    # "dest":I
    :goto_3
    ushr-int/lit8 v3, v3, 0x4

    .line 65
    const-wide v9, -0x11ffffe001L

    and-long/2addr v9, v15

    .line 66
    .end local v15    # "instrNorm":J
    .local v9, "instrNorm":J
    move/from16 v23, v13

    int-to-long v13, v3

    and-long v13, v13, v19

    shl-long v13, v13, v23

    or-long/2addr v9, v13

    .line 67
    int-to-long v13, v3

    const-wide/32 v15, 0x100000

    and-long/2addr v13, v15

    shl-long v13, v13, v21

    or-long/2addr v9, v13

    .line 69
    shl-int v13, v17, v18

    add-int/lit8 v13, v13, -0x1

    int-to-long v13, v13

    and-long/2addr v11, v13

    .line 70
    shl-long v13, v9, v18

    or-long/2addr v11, v13

    .line 72
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_4
    const/4 v14, 0x6

    if-ge v13, v14, :cond_5

    .line 73
    add-int v15, v22, v8

    add-int/2addr v15, v13

    mul-int/lit8 v16, v13, 0x8

    move/from16 v17, v15

    ushr-long v14, v11, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, p1, v17

    .line 72
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 49
    .end local v2    # "src":I
    .end local v9    # "instrNorm":J
    .end local v13    # "j":I
    .end local v18    # "bitRes":I
    .end local v22    # "i":I
    .local v3, "i":I
    .restart local v10    # "bitRes":I
    .restart local v15    # "instrNorm":J
    :cond_4
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v18, v10

    .line 36
    .end local v3    # "i":I
    .end local v8    # "bytePos":I
    .end local v10    # "bitRes":I
    .end local v11    # "instr":J
    .end local v15    # "instrNorm":J
    .restart local v22    # "i":I
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x29

    move/from16 v2, v21

    move/from16 v3, v22

    goto/16 :goto_1

    .end local v22    # "i":I
    .restart local v3    # "i":I
    :cond_6
    move/from16 v21, v2

    move/from16 v22, v3

    .line 32
    .end local v3    # "i":I
    .end local v4    # "instrTemplate":I
    .end local v5    # "mask":I
    .end local v6    # "slot":I
    .end local v7    # "bitPos":I
    .restart local v22    # "i":I
    add-int/lit8 v3, v22, 0x10

    .end local v22    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 77
    :cond_7
    move/from16 v22, v3

    .end local v3    # "i":I
    .restart local v22    # "i":I
    sub-int v3, v22, p2

    .line 78
    .end local v22    # "i":I
    .restart local v3    # "i":I
    iget v2, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 79
    return v3
.end method
