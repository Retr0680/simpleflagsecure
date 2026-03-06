.class final Lorg/brotli/dec/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/dec/Transform$Transforms;
    }
.end annotation


# static fields
.field private static final IDENTITY:I = 0x0

.field static final NUM_RFC_TRANSFORMS:I = 0x79

.field private static final OMIT_FIRST_BASE:I = 0xb

.field private static final OMIT_FIRST_LAST_LIMIT:I = 0x9

.field private static final OMIT_LAST_BASE:I = 0x0

.field private static final PREFIX_SUFFIX_SRC:Ljava/lang/String; = "# #s #, #e #.# the #.com/#\u00c2\u00a0# of # and # in # to #\"#\">#\n#]# for # a # that #. # with #\'# from # by #. The # on # as # is #ing #\n\t#:#ed #(# at #ly #=\"# of the #. This #,# not #er #al #=\'#ful #ive #less #est #ize #ous #"

.field static final RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

.field private static final SHIFT_ALL:I = 0x16

.field private static final SHIFT_FIRST:I = 0x15

.field private static final TRANSFORMS_SRC:Ljava/lang/String; = "     !! ! ,  *!  &!  \" !  ) *   * -  ! # !  #!*!  +  ,$ !  -  %  .  / #   0  1 .  \"   2  3!*   4%  ! # /   5  6  7  8 0  1 &   $   9 +   :  ;  < \'  !=  >  ?! 4  @ 4  2  &   A *# (   B  C& ) %  ) !*# *-% A +! *.  D! %\'  & E *6  F  G% ! *A *%  H! D  I!+!  J!+   K +- *4! A  L!*4  M  N +6  O!*% +.! K *G  P +%(  ! G *D +D  Q +# *K!*G!+D!+# +G +A +4!+% +K!+4!*D!+K!*K"

.field private static final UPPERCASE_ALL:I = 0xb

.field private static final UPPERCASE_FIRST:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lorg/brotli/dec/Transform$Transforms;

    const/16 v1, 0xa7

    const/16 v2, 0x32

    const/16 v3, 0x79

    invoke-direct {v0, v3, v1, v2}, Lorg/brotli/dec/Transform$Transforms;-><init>(III)V

    sput-object v0, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    .line 97
    sget-object v0, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    iget-object v0, v0, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixStorage:[B

    sget-object v1, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    iget-object v1, v1, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixHeads:[I

    sget-object v2, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    iget-object v2, v2, Lorg/brotli/dec/Transform$Transforms;->triplets:[I

    const-string v3, "# #s #, #e #.# the #.com/#\u00c2\u00a0# of # and # in # to #\"#\">#\n#]# for # a # that #. # with #\'# from # by #. The # on # as # is #ing #\n\t#:#ed #(# at #ly #=\"# of the #. This #,# not #er #al #=\'#ful #ive #less #est #ize #ous #"

    const-string v4, "     !! ! ,  *!  &!  \" !  ) *   * -  ! # !  #!*!  +  ,$ !  -  %  .  / #   0  1 .  \"   2  3!*   4%  ! # /   5  6  7  8 0  1 &   $   9 +   :  ;  < \'  !=  >  ?! 4  @ 4  2  &   A *# (   B  C& ) %  ) !*# *-% A +! *.  D! %\'  & E *6  F  G% ! *A *%  H! D  I!+!  J!+   K +- *4! A  L!*4  M  N +6  O!*% +.! K *G  P +%(  ! G *D +D  Q +# *K!*G!+D!+# +G +A +4!+% +K!+4!*D!+K!*K"

    invoke-static {v0, v1, v2, v3, v4}, Lorg/brotli/dec/Transform;->unpackTransforms([B[I[ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static transformDictionaryWord([BILjava/nio/ByteBuffer;IILorg/brotli/dec/Transform$Transforms;I)I
    .locals 28
    .param p0, "dst"    # [B
    .param p1, "dstOffset"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "srcOffset"    # I
    .param p4, "len"    # I
    .param p5, "transforms"    # Lorg/brotli/dec/Transform$Transforms;
    .param p6, "transformIndex"    # I

    .line 103
    move/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p1

    .line 104
    .local v2, "offset":I
    iget-object v3, v1, Lorg/brotli/dec/Transform$Transforms;->triplets:[I

    .line 105
    .local v3, "triplets":[I
    iget-object v4, v1, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixStorage:[B

    .line 106
    .local v4, "prefixSuffixStorage":[B
    iget-object v5, v1, Lorg/brotli/dec/Transform$Transforms;->prefixSuffixHeads:[I

    .line 107
    .local v5, "prefixSuffixHeads":[I
    mul-int/lit8 v6, p6, 0x3

    .line 108
    .local v6, "transformOffset":I
    aget v7, v3, v6

    .line 109
    .local v7, "prefixIdx":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v3, v8

    .line 110
    .local v8, "transformType":I
    add-int/lit8 v9, v6, 0x2

    aget v9, v3, v9

    .line 111
    .local v9, "suffixIdx":I
    aget v10, v5, v7

    .line 112
    .local v10, "prefix":I
    add-int/lit8 v11, v7, 0x1

    aget v11, v5, v11

    .line 113
    .local v11, "prefixEnd":I
    aget v12, v5, v9

    .line 114
    .local v12, "suffix":I
    add-int/lit8 v13, v9, 0x1

    aget v13, v5, v13

    .line 116
    .local v13, "suffixEnd":I
    add-int/lit8 v14, v8, -0xb

    .line 117
    .local v14, "omitFirst":I
    add-int/lit8 v15, v8, 0x0

    .line 118
    .local v15, "omitLast":I
    move/from16 v16, v2

    .end local v2    # "offset":I
    .local v16, "offset":I
    const/4 v2, 0x1

    if-lt v14, v2, :cond_0

    const/16 v2, 0x9

    if-le v14, v2, :cond_1

    .line 119
    :cond_0
    const/4 v14, 0x0

    .line 121
    :cond_1
    const/4 v2, 0x1

    if-lt v15, v2, :cond_2

    const/16 v2, 0x9

    if-le v15, v2, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move/from16 v2, v16

    goto :goto_1

    .line 122
    :goto_0
    const/4 v15, 0x0

    move/from16 v2, v16

    .line 126
    .end local v16    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    if-eq v10, v11, :cond_4

    .line 127
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "offset":I
    .restart local v16    # "offset":I
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "prefix":I
    .local v17, "prefix":I
    aget-byte v10, v4, v10

    aput-byte v10, p0, v2

    move/from16 v2, v16

    move/from16 v10, v17

    goto :goto_1

    .line 131
    .end local v16    # "offset":I
    .end local v17    # "prefix":I
    .restart local v2    # "offset":I
    .restart local v10    # "prefix":I
    :cond_4
    if-le v14, v0, :cond_5

    .line 132
    move/from16 v14, p4

    .line 134
    :cond_5
    add-int v16, p3, v14

    .line 135
    .end local p3    # "srcOffset":I
    .local v16, "srcOffset":I
    sub-int/2addr v0, v14

    .line 136
    .end local p4    # "len":I
    .local v0, "len":I
    sub-int/2addr v0, v15

    .line 137
    move/from16 v17, v0

    move/from16 p3, v0

    move/from16 v0, v16

    .line 138
    .end local v16    # "srcOffset":I
    .local v0, "srcOffset":I
    .local v17, "i":I
    .local p3, "len":I
    :goto_2
    if-lez v17, :cond_6

    .line 139
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "offset":I
    .local v16, "offset":I
    add-int/lit8 v18, v0, 0x1

    move/from16 p4, v2

    move-object/from16 v2, p2

    .end local v0    # "srcOffset":I
    .local v18, "srcOffset":I
    .local p4, "offset":I
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    aput-byte v0, p0, p4

    .line 140
    .end local p4    # "offset":I
    add-int/lit8 v17, v17, -0x1

    move/from16 v2, v16

    move/from16 v0, v18

    goto :goto_2

    .line 144
    .end local v16    # "offset":I
    .end local v18    # "srcOffset":I
    .restart local v0    # "srcOffset":I
    .restart local v2    # "offset":I
    :cond_6
    move/from16 p4, v2

    move-object/from16 v2, p2

    .end local v2    # "offset":I
    .restart local p4    # "offset":I
    move/from16 v16, v0

    .end local v0    # "srcOffset":I
    .local v16, "srcOffset":I
    const/16 v0, 0xa

    if-eq v8, v0, :cond_14

    const/16 v0, 0xb

    if-ne v8, v0, :cond_7

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    goto/16 :goto_6

    .line 167
    :cond_7
    const/16 v0, 0x15

    if-eq v8, v0, :cond_8

    const/16 v0, 0x16

    if-ne v8, v0, :cond_9

    :cond_8
    goto :goto_3

    :cond_9
    move/from16 v0, p3

    move/from16 v2, p4

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    goto/16 :goto_9

    .line 168
    :goto_3
    sub-int v0, p4, p3

    .line 169
    .local v0, "shiftOffset":I
    iget-object v2, v1, Lorg/brotli/dec/Transform$Transforms;->params:[S

    aget-short v2, v2, p6

    .line 171
    .local v2, "param":S
    move/from16 v19, v0

    .end local v0    # "shiftOffset":I
    .local v19, "shiftOffset":I
    and-int/lit16 v0, v2, 0x7fff

    const v20, 0x8000

    and-int v20, v2, v20

    const/high16 v21, 0x1000000

    sub-int v21, v21, v20

    add-int v0, v0, v21

    move/from16 v20, v19

    move/from16 v19, v0

    move/from16 v0, p3

    .line 172
    .end local p3    # "len":I
    .local v0, "len":I
    .local v19, "scalar":I
    .local v20, "shiftOffset":I
    :goto_4
    if-lez v0, :cond_13

    .line 173
    const/16 v21, 0x1

    .line 174
    .local v21, "step":I
    aget-byte v1, p0, v20

    and-int/lit16 v1, v1, 0xff

    .line 175
    .local v1, "c0":I
    move/from16 v22, v2

    .end local v2    # "param":S
    .local v22, "param":S
    const/16 v2, 0x80

    if-ge v1, v2, :cond_a

    .line 177
    add-int v19, v19, v1

    .line 178
    and-int/lit8 v2, v19, 0x7f

    int-to-byte v2, v2

    aput-byte v2, p0, v20

    move/from16 p3, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    goto/16 :goto_5

    .line 179
    :cond_a
    const/16 v2, 0xc0

    if-ge v1, v2, :cond_b

    move/from16 p3, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    goto/16 :goto_5

    .line 181
    :cond_b
    const/16 v2, 0xe0

    if-ge v1, v2, :cond_d

    .line 183
    const/4 v2, 0x2

    if-lt v0, v2, :cond_c

    .line 184
    add-int/lit8 v2, v20, 0x1

    aget-byte v2, p0, v2

    .line 185
    .local v2, "c1":B
    and-int/lit8 v23, v2, 0x3f

    and-int/lit8 v24, v1, 0x1f

    shl-int/lit8 v24, v24, 0x6

    or-int v23, v23, v24

    add-int v19, v19, v23

    .line 186
    shr-int/lit8 v23, v19, 0x6

    move-object/from16 v24, v3

    .end local v3    # "triplets":[I
    .local v24, "triplets":[I
    and-int/lit8 v3, v23, 0x1f

    move-object/from16 v23, v4

    const/16 v4, 0xc0

    .end local v4    # "prefixSuffixStorage":[B
    .local v23, "prefixSuffixStorage":[B
    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v20

    .line 187
    add-int/lit8 v3, v20, 0x1

    and-int/lit16 v4, v2, 0xc0

    and-int/lit8 v25, v19, 0x3f

    or-int v4, v4, v25

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 188
    const/16 v21, 0x2

    .line 189
    .end local v2    # "c1":B
    move/from16 p3, v0

    move-object/from16 v25, v5

    goto/16 :goto_5

    .line 190
    .end local v23    # "prefixSuffixStorage":[B
    .end local v24    # "triplets":[I
    .restart local v3    # "triplets":[I
    .restart local v4    # "prefixSuffixStorage":[B
    :cond_c
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    .end local v3    # "triplets":[I
    .end local v4    # "prefixSuffixStorage":[B
    .restart local v23    # "prefixSuffixStorage":[B
    .restart local v24    # "triplets":[I
    move/from16 v21, v0

    move/from16 p3, v0

    move-object/from16 v25, v5

    goto/16 :goto_5

    .line 192
    .end local v23    # "prefixSuffixStorage":[B
    .end local v24    # "triplets":[I
    .restart local v3    # "triplets":[I
    .restart local v4    # "prefixSuffixStorage":[B
    :cond_d
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    .end local v3    # "triplets":[I
    .end local v4    # "prefixSuffixStorage":[B
    .restart local v23    # "prefixSuffixStorage":[B
    .restart local v24    # "triplets":[I
    const/16 v2, 0xf0

    if-ge v1, v2, :cond_f

    .line 194
    const/4 v2, 0x3

    if-lt v0, v2, :cond_e

    .line 195
    add-int/lit8 v2, v20, 0x1

    aget-byte v2, p0, v2

    .line 196
    .restart local v2    # "c1":B
    add-int/lit8 v3, v20, 0x2

    aget-byte v3, p0, v3

    .line 197
    .local v3, "c2":B
    and-int/lit8 v4, v3, 0x3f

    and-int/lit8 v25, v2, 0x3f

    shl-int/lit8 v25, v25, 0x6

    or-int v4, v4, v25

    and-int/lit8 v25, v1, 0xf

    shl-int/lit8 v25, v25, 0xc

    or-int v4, v4, v25

    add-int v19, v19, v4

    .line 198
    shr-int/lit8 v4, v19, 0xc

    and-int/lit8 v4, v4, 0xf

    move-object/from16 v25, v5

    const/16 v5, 0xe0

    .end local v5    # "prefixSuffixHeads":[I
    .local v25, "prefixSuffixHeads":[I
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v20

    .line 199
    add-int/lit8 v4, v20, 0x1

    and-int/lit16 v5, v2, 0xc0

    shr-int/lit8 v26, v19, 0x6

    and-int/lit8 v26, v26, 0x3f

    or-int v5, v5, v26

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 200
    add-int/lit8 v4, v20, 0x2

    and-int/lit16 v5, v3, 0xc0

    and-int/lit8 v26, v19, 0x3f

    or-int v5, v5, v26

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 201
    const/16 v21, 0x3

    .line 202
    .end local v2    # "c1":B
    .end local v3    # "c2":B
    move/from16 p3, v0

    goto :goto_5

    .line 203
    .end local v25    # "prefixSuffixHeads":[I
    .restart local v5    # "prefixSuffixHeads":[I
    :cond_e
    move-object/from16 v25, v5

    .end local v5    # "prefixSuffixHeads":[I
    .restart local v25    # "prefixSuffixHeads":[I
    move/from16 v21, v0

    move/from16 p3, v0

    goto :goto_5

    .line 205
    .end local v25    # "prefixSuffixHeads":[I
    .restart local v5    # "prefixSuffixHeads":[I
    :cond_f
    move-object/from16 v25, v5

    .end local v5    # "prefixSuffixHeads":[I
    .restart local v25    # "prefixSuffixHeads":[I
    const/16 v3, 0xf8

    if-ge v1, v3, :cond_11

    .line 207
    const/4 v3, 0x4

    if-lt v0, v3, :cond_10

    .line 208
    add-int/lit8 v3, v20, 0x1

    aget-byte v3, p0, v3

    .line 209
    .local v3, "c1":B
    add-int/lit8 v4, v20, 0x2

    aget-byte v4, p0, v4

    .line 210
    .local v4, "c2":B
    add-int/lit8 v5, v20, 0x3

    aget-byte v5, p0, v5

    .line 211
    .local v5, "c3":B
    and-int/lit8 v26, v5, 0x3f

    and-int/lit8 v27, v4, 0x3f

    shl-int/lit8 v27, v27, 0x6

    or-int v26, v26, v27

    and-int/lit8 v27, v3, 0x3f

    shl-int/lit8 v27, v27, 0xc

    or-int v26, v26, v27

    and-int/lit8 v27, v1, 0x7

    shl-int/lit8 v27, v27, 0x12

    or-int v26, v26, v27

    add-int v19, v19, v26

    .line 212
    shr-int/lit8 v26, v19, 0x12

    move/from16 p3, v0

    .end local v0    # "len":I
    .restart local p3    # "len":I
    and-int/lit8 v0, v26, 0x7

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v20

    .line 213
    add-int/lit8 v0, v20, 0x1

    and-int/lit16 v2, v3, 0xc0

    shr-int/lit8 v26, v19, 0xc

    and-int/lit8 v26, v26, 0x3f

    or-int v2, v2, v26

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 214
    add-int/lit8 v0, v20, 0x2

    and-int/lit16 v2, v4, 0xc0

    shr-int/lit8 v26, v19, 0x6

    and-int/lit8 v26, v26, 0x3f

    or-int v2, v2, v26

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 215
    add-int/lit8 v0, v20, 0x3

    and-int/lit16 v2, v5, 0xc0

    and-int/lit8 v26, v19, 0x3f

    or-int v2, v2, v26

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 216
    const/16 v21, 0x4

    .line 217
    .end local v3    # "c1":B
    .end local v4    # "c2":B
    .end local v5    # "c3":B
    goto :goto_5

    .line 218
    .end local p3    # "len":I
    .restart local v0    # "len":I
    :cond_10
    move/from16 p3, v0

    .end local v0    # "len":I
    .restart local p3    # "len":I
    move/from16 v21, p3

    goto :goto_5

    .line 205
    .end local p3    # "len":I
    .restart local v0    # "len":I
    :cond_11
    move/from16 p3, v0

    .line 221
    .end local v0    # "len":I
    .restart local p3    # "len":I
    :goto_5
    add-int v20, v20, v21

    .line 222
    sub-int v0, p3, v21

    .line 223
    .end local p3    # "len":I
    .restart local v0    # "len":I
    const/16 v2, 0x15

    if-ne v8, v2, :cond_12

    .line 224
    const/4 v0, 0x0

    .line 226
    .end local v1    # "c0":I
    .end local v21    # "step":I
    :cond_12
    move-object/from16 v1, p5

    move/from16 v2, v22

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    move-object/from16 v5, v25

    goto/16 :goto_4

    .line 172
    .end local v22    # "param":S
    .end local v23    # "prefixSuffixStorage":[B
    .end local v24    # "triplets":[I
    .end local v25    # "prefixSuffixHeads":[I
    .local v2, "param":S
    .local v3, "triplets":[I
    .local v4, "prefixSuffixStorage":[B
    .local v5, "prefixSuffixHeads":[I
    :cond_13
    move/from16 p3, v0

    move/from16 v22, v2

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    .end local v0    # "len":I
    .end local v2    # "param":S
    .end local v3    # "triplets":[I
    .end local v4    # "prefixSuffixStorage":[B
    .end local v5    # "prefixSuffixHeads":[I
    .restart local v22    # "param":S
    .restart local v23    # "prefixSuffixStorage":[B
    .restart local v24    # "triplets":[I
    .restart local v25    # "prefixSuffixHeads":[I
    .restart local p3    # "len":I
    move/from16 v2, p4

    goto :goto_9

    .line 144
    .end local v19    # "scalar":I
    .end local v20    # "shiftOffset":I
    .end local v22    # "param":S
    .end local v23    # "prefixSuffixStorage":[B
    .end local v24    # "triplets":[I
    .end local v25    # "prefixSuffixHeads":[I
    .restart local v3    # "triplets":[I
    .restart local v4    # "prefixSuffixStorage":[B
    .restart local v5    # "prefixSuffixHeads":[I
    :cond_14
    move-object/from16 v24, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    .line 145
    .end local v3    # "triplets":[I
    .end local v4    # "prefixSuffixStorage":[B
    .end local v5    # "prefixSuffixHeads":[I
    .restart local v23    # "prefixSuffixStorage":[B
    .restart local v24    # "triplets":[I
    .restart local v25    # "prefixSuffixHeads":[I
    :goto_6
    sub-int v2, p4, p3

    .line 146
    .local v2, "uppercaseOffset":I
    const/16 v0, 0xa

    if-ne v8, v0, :cond_15

    .line 147
    const/4 v0, 0x1

    .end local p3    # "len":I
    .restart local v0    # "len":I
    goto :goto_7

    .line 146
    .end local v0    # "len":I
    .restart local p3    # "len":I
    :cond_15
    move/from16 v0, p3

    .line 149
    .end local p3    # "len":I
    .restart local v0    # "len":I
    :goto_7
    if-lez v0, :cond_19

    .line 150
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    .line 151
    .restart local v1    # "c0":I
    const/16 v4, 0xc0

    if-ge v1, v4, :cond_17

    .line 152
    const/16 v3, 0x61

    if-lt v1, v3, :cond_16

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_16

    .line 153
    aget-byte v3, p0, v2

    xor-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 155
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 156
    add-int/lit8 v0, v0, -0x1

    const/16 v5, 0xe0

    goto :goto_8

    .line 157
    :cond_17
    const/16 v5, 0xe0

    if-ge v1, v5, :cond_18

    .line 158
    add-int/lit8 v3, v2, 0x1

    aget-byte v18, p0, v3

    xor-int/lit8 v4, v18, 0x20

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 159
    add-int/lit8 v2, v2, 0x2

    .line 160
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 162
    :cond_18
    add-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v3

    xor-int/lit8 v4, v4, 0x5

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 163
    add-int/lit8 v2, v2, 0x3

    .line 164
    add-int/lit8 v0, v0, -0x3

    .line 166
    .end local v1    # "c0":I
    :goto_8
    goto :goto_7

    .line 149
    :cond_19
    nop

    .line 167
    .end local v2    # "uppercaseOffset":I
    move/from16 v2, p4

    .line 230
    .end local p4    # "offset":I
    .local v2, "offset":I
    :goto_9
    if-eq v12, v13, :cond_1a

    .line 231
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .local v1, "offset":I
    add-int/lit8 v3, v12, 0x1

    .end local v12    # "suffix":I
    .local v3, "suffix":I
    aget-byte v4, v23, v12

    aput-byte v4, p0, v2

    move v2, v1

    move v12, v3

    goto :goto_9

    .line 234
    .end local v1    # "offset":I
    .end local v3    # "suffix":I
    .restart local v2    # "offset":I
    .restart local v12    # "suffix":I
    :cond_1a
    sub-int v1, v2, p1

    return v1
.end method

.method private static unpackTransforms([B[I[ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "prefixSuffix"    # [B
    .param p1, "prefixSuffixHeads"    # [I
    .param p2, "transforms"    # [I
    .param p3, "prefixSuffixSrc"    # Ljava/lang/String;
    .param p4, "transformsSrc"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 80
    .local v0, "n":I
    const/4 v1, 0x1

    .line 81
    .local v1, "index":I
    const/4 v2, 0x0

    .line 82
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 83
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 84
    .local v4, "c":C
    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 85
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    aput v2, p1, v1

    move v1, v5

    goto :goto_1

    .line 87
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "j":I
    .local v5, "j":I
    int-to-byte v6, v4

    aput-byte v6, p0, v2

    move v2, v5

    .line 82
    .end local v4    # "c":C
    .end local v5    # "j":I
    .restart local v2    # "j":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 91
    .end local v3    # "i":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    const/16 v4, 0x16b

    if-ge v3, v4, :cond_2

    .line 92
    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x20

    aput v4, p2, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 94
    .end local v3    # "i":I
    return-void
.end method
